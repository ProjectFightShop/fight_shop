import {Link} from 'react-router-dom';

const CreateAccount = ():JSX.Element =>{
	return (
		<>
			<p>Inscrivez vous</p>

            <form>	
				<input className="form-user" type="text"/>
                <input className="form-password" type="password"/>
                <input className="form-name" type="text"/>
                <input className="form-surname" type="text"/>
                <input className="form-age" type="text"/>
				<button className="create_account">SignIn</button>
			</form>

			<Link to="../login">Deja inscrit ? Connectez vous !</Link>

		</>
	);
};

export default CreateAccount;