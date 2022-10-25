import React, { useEffect, useState} from 'react';
import axios from "axios";
import './account.styles.css';


const Account = ():JSX.Element =>{
  const [username,setUsername] = useState<string>("");
  const [firstName,setFirstName] = useState<string>("");
  const [lastName,setLastName] = useState<string>("");
  const [message,setMessage] = useState<string>("");
  let load = 0;
  
  
  useEffect(()=> {
    const getUser =  async () => {
    const response = await axios.get("https://fightshop.plugn.fr/v0/connected.php",
    			{headers: {'token':sessionStorage.getItem("token")}}
    ).then((response) => {  	
    	const res = response.data[0]['data'];
    	setUsername(res.username);
    	setFirstName(res.first_name);
    	setLastName(res.last_name);
    	setMessage("You are connected !");
      load=1;
    })
  };
    
    getUser();
    
  },[]);
          
  return (
    <>

      {!message ? (<h3 className="notConnect"><b>Not Connected</b></h3>) : (
        <div className="account">
          <h3 className="connectAccount"><b>Connected</b></h3>
          <p className="topic"><b>Your account : </b></p>
          <p className="attribute">Username : {username}</p> 
          <p className="attribute">First Name : {firstName}</p> 
          <p className="attribute">Last Name : {lastName}</p>
        </div>)
      }
    
    </>
  );
     
};

export default Account;