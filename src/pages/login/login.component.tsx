import {Link} from 'react-router-dom';

import './login.styles.css';

const Login = ():JSX.Element =>{
	return (
		<>
			<p className='connect'><b>Connect yourself !</b></p>

            <form className="form-login" method="get">
				<div>
					<label htmlFor ="form-user">User :</label>
					<input className="form-user" type="text" name="form_user"/>
				</div>
				<div>
					<label htmlFor ="form-password">Password : </label>
					<input className="form-password" type="password" name="form_password"/>
				</div>
				<button className="Login" type="submit">Login</button>
			</form>

			<p className='signin'>Not register ? <Link to="../create_account"><b>Sign in !</b></Link></p>

		</>
	);
};

export default Login;