import React from 'react';

import './navbar.styles.css';

const Navbar = ():JSX.Element =>{
	return (
		<>
			<div className="navbar-header">
				<ul className="nav-list">
					<li className="nav-item">
						<a href="#">My Account</a>
					</li>
					<li className="nav-item">
						<a href="#">Log In</a>
					</li>
					<li className="nav-item">
						<a href="#">Create an account</a>
					</li>
				</ul>
			</div>
			<div className="navbar-main">
				<ul className="nav-list-main">
					<li className="nav-main-item">
						<a href="#">GLOVES</a>
					</li>
					<li className="nav-main-item">
						<a href="#">HEADGEAR</a>
					</li>
					<li className="nav-main-item">
						<a href="#">GROIN PROTECTOR</a>
					</li>
				</ul>
				<form>	
					<input className="form-search" type="text"  placeholder="Search.."/>
					<button className="form-search">Search</button>
				</form>
			</div>
		</>
	);
};

export default Navbar;
