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
import CreateAccount from './pages/create_account/create_account.component';
import Glove from './pages/glove/glove.component';
import Headgear from './pages/headgear/headgear.component';
import Groin from './pages/groin/groin.component';

const App = () => {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element = {<Navigate to="/fight_shop" replace />} />
        <Route path="/fight_shop" element ={<PageLayout />}>
          <Route index element={<HomePage />} />
          <Route path="login" element ={<Login />} />
        </Route>
        <Route path="create_account" element ={<CreateAccount />} />
        <Route path="glove" element ={<Glove />} />
        <Route path="headgear" element ={<Headgear />} />
        <Route path="groin" element ={<Groin />} />
      </Routes>
    </div>
  );
};

export default App;