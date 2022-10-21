import React from 'react';

import {
  Navigate,  
  Routes, 
  Route
} from 'react-router-dom';

import './App.css';

/* components */
import PageLayout from './pages/PageLayout/pagelayout.component';
import HomePage from './pages/homepage/homepage.component';
import Login from './pages/login/login.component';
import SignIn from './pages/signin/signin.component';

const App = () => {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element = {<Navigate to="/fight_shop" replace />} />
        <Route path="/fight_shop" element ={<PageLayout />}>
          <Route index element={<HomePage />} />
          <Route path="login" element ={<Login />} />
        </Route>
        <Route path="/fight_shop" element ={<SignIn />}></Route>
      </Routes>
    </div>
  );
};

export default App;
