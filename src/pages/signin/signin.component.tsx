import {Link} from 'react-router-dom';

const SignIn = ():JSX.Element =>{
	return (
		<>
			<p>Inscrivez vous</p>

            <form>	
				<input className="form-user" type="text"/>
                <input className="form-password" type="password"/>
                <input className="form-name" type="text"/>
                <input className="form-surname" type="text"/>
                <input className="form-age" type="text"/>
				<button className="SignIn">SignIn</button>
			</form>

			<Link to="signin">Deja inscrit ? Connectez vous !</Link>

		</>
	);
};

export default SignIn;