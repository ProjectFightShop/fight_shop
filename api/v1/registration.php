<?php

require_once '../config/core.php';

if ($method == 'POST') {

  // Return alert

  # test si les données sont vides
  $errors=array();
  if (empty($data['username'])){
    $errors[]='missing_username';
  }
  if (empty($data['plainpassword'])){
    $errors[]='missing_plainpassword';
  }
  if (empty($data['first_name'])) {
    $errors[]='missing_first_name';
  }
  if (empty($data['last_name'])) {
    $errors[]='missing_last_name';
  }
  # test si les données sont valides
  if (!empty($data['username'])) {
      # on vérifie si l'username existe déjà dans la db (unique)
      $username_fetch = $db->prepare('SELECT * FROM client WHERE username = ?;');
      $username_fetch->execute(array($data['username']));
      $username = $username_fetch->fetch();
      if ($username) {
        $errors[]='username_already_exists';
      }
  }
  if (!empty($data['plainpassword'])){ # 8 caractères, 1 minuscule, 1 majuscule, 1 chiffre, 1 caractère spécial minimum
    if (preg_match("/^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])(?=\S*[\W])\S*$/", $data['plainpassword']) === 0) {
      $errors[]='password_not_conform';
    }
  }

  if (!empty($errors)) {
    http_response_code(400); # bad request

    echo json_encode(array(
      "status" => false,
      "description" => $errors,
      "returntosender"=>$data
    ));

  } else {

    $data['password']=password_hash($data['plainpassword'], PASSWORD_DEFAULT);
    $data['date'] = date('Y-m-d H:i:s');
    $req=$db->prepare('INSERT INTO client(username, first_name, last_name, password, created_at, modified_at)
    VALUES(:username, :first_name, :last_name, :password, :date, :date);');
    $req->execute(array(
      "username" => $data['username'],
      "first_name" => $data['first_name'],
      "last_name" => $data['last_name'],
      "password" => $data['password'],
      "date" => $data['date']
    ));

    # connexion et vérification de l'enregistrement
    $req = $db->prepare('SELECT * FROM client WHERE username = ?;');
    $req->execute(array($data['username']));
    $test = $req->fetch();

    $verify = password_verify($data['plainpassword'], $test['password']);
    if ($verify) {
      http_response_code(201); # created

      echo json_encode(array(
        "status" => true,
        "description" => array("success"),
        "data" => $test
      ));
    } else {
      http_response_code(502); # bad gateway

      echo json_encode(array(
        "status" => false,
        "description" => array("internal_error"),
        "returntosender" => $data
      ));
    }
  }


} else {

  // Unknown method

  http_response_code(405); # method not allowed

  echo json_encode(array(
    "status" => false,
    "description" => array("unknown_method"),
    "returnmethod" => $method,
    "returntosender" => $data
  ));

}
?>
