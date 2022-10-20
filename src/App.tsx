import React from 'react';

import {
  Navigate,  
  Routes, 
  Route
} from 'react-router-dom';

import './App.css';

/* components */
import Navbar from './components/Navbar/navbar.component';
import Homepage from './pages/homepage/homepage.component';
import Login from './pages/homepage/login.component';
import Footer from './components/Footer/footer.component';

const App = () => {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element = {<Navigate to="/fight_shop" replace />} />
        <Route path="/fight_shop" element ={<Navbar />}>
          <Route index element={<Homepage />} />
          <Route path="login" element ={<Login />}/>
        </Route>
      </Routes>
      <Footer />
    </div>
  );
};

export default App;
