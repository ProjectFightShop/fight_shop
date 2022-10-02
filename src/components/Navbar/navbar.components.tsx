import React from 'react';
import styled from 'styled-components';

const Nav = () => {
	return (
		<NavContainer>	
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
		</NavContainer>
	);
};

export default Nav;

const NavContainer = styled.nav`

	.navbar-header {
		background-color: black;
		overflow: hidden;
	}	
		
	.nav-list {
		display: flex;
		justify-content: flex-end;
		align-items: center;
	}

	.nav-item {
		list-style:none;
		margin-right: 2rem;
	}

	.nav-item a {
		text-decoration:none;
		color: white;
	}

	.nav-item a:hover {
		color: red;
		background-color: white;	
	}

	.navbar-main {
		background-color: blue;
		height: auto;
		display: flex;
		justify-content: center;
		align-items: center;
		gap: 10vw;
	}
	
	
	.nav-list-main {
		display: flex;
		justify-content: center;
		align-items: center;	
	}
	
	.nav-main-item {
		list-style: none;
		margin-right: 2rem;
		margin-top:1rem;
		margin-bottom:1rem;
	}
	
	.nav-main-item a {
		text-decoration:none;
		color: white;
	}
	
	.nav-main-item a:hover {
		color: red;
		background-color:white;
	}

	.form-search {
		padding: 10px;
	}
`;
