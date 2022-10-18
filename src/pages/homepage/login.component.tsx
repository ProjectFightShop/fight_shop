const Homepage = ():JSX.Element =>{
	return (
		<>
			<p>Ceci est un test</p>

            <form>	
				<input className="form-user" type="text"/>
                <input className="form-password" type="password"/>
				<button className="Login">Login</button>
			</form>
            
		</>
	);
};

export default Homepage;