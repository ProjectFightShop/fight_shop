import React from 'react';
import { Link } from 'react-router-dom';

import './navbar.styles.css';

const Navbar = ():JSX.Element => {
  return (
    <>
      <div className="navbar-header">
       	<ul className="nav-list">
	  <li className="nav-item">
	    <Link to="account">My Account</Link>
	  </li>
	  <li className="nav-item">
	    <Link to="login">Log In</Link>
	  </li>
	  <li className="nav-item">
	    <Link to="create_account">Create an account</Link>
	  </li>
	</ul>
      </div>
      <div className="navbar-main">
	<ul className="nav-list-main">
	  <li className="nav-main-item">
	    <Link to="gloves">GLOVES</Link>
	  </li>
	  <li className="nav-main-item">
	    <Link to="headgear">HEADGEAR</Link>
	  </li>
	  <li className="nav-main-item">
	    <Link to="groin-protector">GROIN PROTECTOR</Link>
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
