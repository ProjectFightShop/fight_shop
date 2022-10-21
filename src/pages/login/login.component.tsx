import {Link} from 'react-router-dom';

const Login = ():JSX.Element =>{
	return (
		<>
			<p>Connectez vous</p>

            <form>	
				<input className="form-user" type="text"/>
                <input className="form-password" type="password"/>
				<button className="Login">Login</button>
			</form>

			<Link to="../create_account">Non inscrit ? Inscrivez vous !</Link>

		</>
	);
};

export default Login;