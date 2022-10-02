import React from 'react';
//import logo from './logo.svg';
import './App.css';

/* components */
import Nav from './components/Navbar/navbar.components';
import Footer from './components/Footer/footer.components';


const App =  () => {
	return (
		<div className="App">
			<Nav/>
			<Footer/>
		</div>
	);
};

export default App;
