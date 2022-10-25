import {Link,Navigate} from 'react-router-dom';
import React, { useState} from 'react';
import axios from "axios";
import './login.styles.css';

const Login = ():JSX.Element =>{
	const [username,setUsername] = useState<string>({} as string);
	const [password,setPassword] = useState<string>({} as string);
	const [message,setMessage] = useState<string>("");
	
	const handleUsername = (event:any) => setUsername(event.target.value);
	const handlePassword = (event:any) => setPassword(event.target.value);
	
	const submitUser = async (e:any) => {
	  e.preventDefault();
	  const userSubmited= {
	    username: username,
	    plainpassword: password
	  };

	  await axios
	    .post("https://fightshop.plugn.fr/v1/login.php",JSON.stringify(userSubmited),{headers: {'Content-Type':'application/json'}})
	    .then((result) => {
	      sessionStorage.setItem("token",result.data['data'].token);
	      setMessage("success");
	    })
	    .catch((error) => {console.log( error.response.request._response ); setMessage("error"); } );

	};
	
	return (
		<>
			<p className='connect'><b>Connect yourself !</b></p>
			{message ? (
			      <div className="text-error-login">
				{" "}
				<h5> {message} </h5>
				<Navigate to="/fight_shop" replace />
			      </div>
			    ) : (
			      <></>
			    )}

            		<form className="form-login" id="form" onSubmit={submitUser}>
				<div>
					<label htmlFor ="form-user">User :</label>
					<input id="input" className="form-user" type="text" name="username" onChange={ (e) => handleUsername(e)}/>
				</div>
				<div>
					<label id="label" htmlFor ="form-password">Password : </label>
					<input id="input" className="form-password" type="password" name="password" onChange={ (e) => handlePassword(e)}/>
				</div>
				<button className="Login" type="submit">Login</button>
			</form>

			<p className='signin'>Not register ? <Link to="../create_account"><b>Sign in !</b></Link></p>

		</>
	);
};

export default Login;
