import React from 'react';
import {BrowserRouter as Router, Routes, Route} from 'react-router-dom';
//import logo from './logo.svg';
import './App.css';

/* components */
import Navbar from './components/Navbar/navbar.component';
import Homepage from './pages/homepage/homepage.component';
import Login from './pages/homepage/login.component';
import Footer from './components/Footer/footer.component';


const App =  () => {
	return (
		<Router>
			<div className="App">
				<Navbar/>
					<Routes>
						<Route path="./" element ={<Homepage/>}/>
						<Route path="/login" element ={<Login/>}/>
					</Routes>
				<Footer/>			
			</div>
		</Router>
	);
};

export default App;
