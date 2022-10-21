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

		</>
	);
};

export default CreateAccount;