import React, { useState} from 'react';
import {Link} from 'react-router-dom';
import axios from "axios";
import {User} from '../../interfaces/user';
import './create_account.styles.css';

const CreateAccount = ():JSX.Element =>{
	const [username,setUsername] = useState<string>({} as string);
	const [password,setPassword] = useState<string>({} as string);
	const [firstName,setFirstName] = useState<string>({} as string);
	const [lastName,setLastName] = useState<string>({} as string);
	const [message,setMessage] = useState<string>("");
	
	const handleUsername = (event:any) => setUsername(event.target.value);
	const handlePassword = (event:any) => setPassword(event.target.value);
	const handleFirstName = (event:any) => setFirstName(event.target.value);
	const handleLastName = (event:any) => setLastName(event.target.value);
	
	const submitUser = async (e:any) => {
	  e.preventDefault();
	  const userSubmited:User = {
	    username: username,
	    plainpassword: password,
	    first_name: firstName,
	    last_name: lastName
	  };
	  
	  
	  await axios
	    .post("https://fightshop.plugn.fr/v1/registration.php",JSON.stringify(userSubmited),{headers: {'Content-Type':'application/json'}})
	    .then((result) => {
	      setMessage(result.data.msg);
	    })
	    .catch((error) => {console.log( error.response.request._response ); setMessage("error"); } );

	};
	
	
	
	return (
		<>
			<p className='register'><b>Register !</b></p>
			 {message ? (
			      <div className="text-error-account">
				{" "}
				<h5> {message} </h5>
			      </div>
			    ) : (
			      <></>
			    )}
			<form onSubmit={submitUser} className="form-signin">
				<div>
					<label htmlFor ="form-user">Username :</label>
					<input 
					  className="form-user" 
					  type="text" 
					  name="username" 
					  onChange={(e) =>handleUsername(e)}
					/>
				</div>
				<div>
					<label htmlFor ="form-password">Password : </label>
					<input 
					  className="form-password" 
					  type="password" 
					  name="password" 
					  onChange={(e) =>handlePassword(e)}
					/>
				</div>
				<div>
					<label htmlFor ="form-name">First Name :</label>
					<input 
					  className="form-name" 
					  type="text" 
					  name="firstName"
					  onChange={ (e) => handleFirstName(e)}
					/>
				</div>
				<div>
					<label htmlFor ="form-surname">Last Name :</label>
					<input 
					  className="form-surname" 
					  type="text" 
					  name="lastName"
					  onChange={(e) => handleLastName(e)}
					/>
				</div>
				
				<button type="submit" className="create_account">Sign in</button>
			</form>


			<p className='login'>Already have an account ? <Link to="../login"><b>Login !</b></Link></p>

		</>
	);
};

export default CreateAccount;
