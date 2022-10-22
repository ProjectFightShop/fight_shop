import {Link} from 'react-router-dom';

import './create_account.styles.css';

const CreateAccount = ():JSX.Element =>{
	return (
		<>
			<p className='register'><b>Register !</b></p>

			<form className="form-signin" method="post">
				<div>
					<label htmlFor ="form-user">User :</label>
					<input className="form-user" type="text" name="form_user"/>
				</div>
				<div>
					<label htmlFor ="form-password">Password : </label>
					<input className="form-password" type="password" name="form_password"/>
				</div>
				<div>
					<label htmlFor ="form-name">Name :</label>
					<input className="form-name" type="text" name="form_name"/>
				</div>
				<div>
					<label htmlFor ="form-surname">Surname :</label>
					<input className="form-surname" type="text" name="form_surname"/>
				</div>
				<div>
					<label htmlFor ="form-email">Email :</label>
					<input className="form-email" type="email" name="form_email"/>
				</div>
				<div>
					<label htmlFor ="form-age">Age :</label>
					<input className="form-age" type="text" name="form_age"/>
				</div>
				<button className="create_account" type="submit">Sign in</button>
			</form>


			<p className='login'>Already have an account ? <Link to="../login"><b>Login !</b></Link></p>

		</>
	);
};

export default CreateAccount;