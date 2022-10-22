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
import ListingProductPage from './pages/ListingProductPage/listingproductpage.component';
import DetailsProductPage from './pages/DetailsProductPage/detailsproductpage.component';

const App = () => {  
  return (
    <div className="App">
      <Routes>
        <Route path="/" element = {<Navigate to="/fight_shop" replace />} />
        <Route path="/fight_shop" element ={<PageLayout />}>
          <Route index element={<HomePage />} />
          <Route path="login" element ={<Login />} />
          <Route path="gloves">
            <Route index element={<ListingProductPage />} />
            <Route path=":id" element={<DetailsProductPage />} />
          </Route>
          <Route path="headgear">
            <Route index element={<ListingProductPage />} />
          </Route>
          <Route path="groin-protector">
            <Route index element={<ListingProductPage />} />
          </Route>
        </Route>
        <Route
           path="*"
      	   element= {
             <main style={{ padding: "1rem" }}>
               <p>There's nothing here!</p>
             </main>
           }
        />
      </Routes>
    </div>
  )};