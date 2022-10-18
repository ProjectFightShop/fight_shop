import React from 'react';
//import logo from './logo.svg';
import './App.css';

/* components */
import Nav from './components/Navbar/navbar.component';
import Footer from './components/Footer/footer.component';


const App =  () => {
	return (
		<div className="App">
			<Nav/>
			<Footer/>
		</div>
	);
};

export default App;
