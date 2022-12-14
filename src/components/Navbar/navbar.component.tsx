import { Link} from 'react-router-dom';

import './navbar.styles.css';
import Logo from '../../assets/Logo.png';

const Navbar = ():JSX.Element => {
	
	return (
		<>
			<div className="navbar-header">
				<Link to="/fight_shop" className="navbar-logo">
					<img className="logo" src={Logo} alt="logo"/>
				</Link>
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
						<Link to="groin">GROIN PROTECTOR</Link>
					</li>
				</ul>
				<form action='/fight_shop/search' method="get">
					<input className="form-search" name="search" type="text" placeholder="Search..."/>
					<button className="form-search" type="submit">Search</button>
				</form>
			</div>
		</>
	);
};

export default Navbar;
