<?php

require_once '../config/core.php';

if ($method == 'POST') {

  // Return alert

  if ($connected['status'] == true) {
    http_response_code(202); # Accepted (will not complete login)

    echo json_encode(array(
      "status" => true,
      "description" => array("success"),
      "data" => array("token"=>$connected['tokendata']['token'],"expiration"=>$connected['tokendata']['expiration']),
      "userdata" => $connected['data']
    ));

  } else {
    # test si les données sont vides
    $errors=array();
    if (empty($data['username'])){
      $errors[]='missing_username';
    }
    if (empty($data['plainpassword'])){
      $errors[]='missing_plainpassword';
    }
    # test si les données sont valides
    if (!empty($data['plainpassword'])){ #8 caractères, 1 minuscule, 1 majuscule, 1 chiffre, 1 caractère spécial minimum
      if (preg_match("/^\S*(?=\S{8,})(?=\S*[a-z])(?=\S*[A-Z])(?=\S*[\d])(?=\S*[\W])\S*$/",$data['plainpassword'])===0) {
        $errors[]='password_not_conform';
      }
    }

    if (!empty($errors)){
      http_response_code(400); # bad request

      echo json_encode(array(
        "status" => false,
        "description" => $errors,
        "returntosender"=>$data
      ));

      exit();
    }

    # recherche de l'username dans la db
    $req = $db->prepare('SELECT * FROM client WHERE username = ?;');
    $req->execute(array($data['username']));
    $test = $req->fetch(PDO::FETCH_ASSOC);

    # check mdp correspondant à l'username avec celui existant
    $verify = password_verify($data['plainpassword'], $test['password']);

    if (!$test){ # mauvais username

      http_response_code(404); # not found

      echo json_encode(array(
        "status" => false,
        "description" => array("user_not_exists"),
        "returntosender" => $data
      ));

    } elseif ($verify) { # bon username et mdp

      $token = generateRandomString(255);
      $date = date('Y-m-d H:i:s', strtotime('+1 year'));
      # ajout du token dans la db
      $req2=$db->prepare('INSERT INTO client_token(user, token, expiration) VALUES(:user, :token, :expiration);');
      $req2->execute(array(
        "user" => $test['id'],
        "token" => $token,
        "expiration" => $date
      ));

      if ($req2) {
        http_response_code(200); # ok

        echo json_encode(array(
          "status" => true,
          "description" => array("success"),
          "data" => array("token"=>$token,"expiration"=>$date),
          "userdata" => $test
        ));
      } else {
        http_response_code(502); # bad gateway

        echo json_encode(array(
          "status" => false,
          "description" => array("internal_error"),
          "returntosender" => $data
        ));
      }
    } else { # mauvais mdp
      http_response_code(403); # not allowed

      echo json_encode(array(
        "status" => false,
        "description" => array("password_missmatch"),
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
