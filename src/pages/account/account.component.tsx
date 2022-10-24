import React, { useEffect, useState} from 'react';
import axios from "axios";


const Account = ():JSX.Element =>{
  const [username,setUsername] = useState<string>("");
  const [firstName,setFirstName] = useState<string>("");
  const [lastName,setLastName] = useState<string>("");
  const [message,setMessage] = useState<string>("");
  
  
  useEffect(()=> {
    const getUser =  async () => {
    const response = await axios.get("https://fightshop.plugn.fr/v0/connected.php",
    			{headers: {'token':sessionStorage.getItem("token")}}
    ).then((response) => {
    	console.log(response.data[0]['data'].username);    	
    	const res = response.data[0]['data'];
    	setUsername(res.username);
    	setFirstName(res.first_name);
    	setLastName(res.last_name);
    	setMessage("You are connected !");
    }).catch((error) => setMessage("Not connected !"));
  };
    
    getUser();
    
  },[]);
          
  return (
    <>
      <p>{message}</p>
      <p>Your account : </p>
      <p>Username : {username}</p> 
      <p>First Name : {firstName}</p> 
      <p>Last Name : {lastName}</p> 
    
    </>
  );
     
};

export default Account;
