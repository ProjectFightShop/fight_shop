import React from 'react';
//import logo from './logo.svg';
import './App.css';

/* components */
import Nav from './components/Navbar/navbar.component';
import Homepage from './pages/homepage/homepage.component';
import Login from './pages/homepage/login.component';
import Footer from './components/Footer/footer.component';


const App =  () => {
	return (
		<div className="App">
			<Nav/>
			<Homepage/>
			<Login/>
			<Footer/>
		</div>
	);
};

export default App;
