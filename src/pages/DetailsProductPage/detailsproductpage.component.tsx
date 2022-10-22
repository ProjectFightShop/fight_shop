import React from 'react';

import { useLocation } from "react-router-dom";

import './detailsproductpage.styles.css';

const DetailsProductPage = () : JSX.Element => {  
  const state = useLocation().state;
  return (
    <>
		  {state && (
				<ol>
				  <li>{state.id}</li>
				  <li>{state.name}</li>
				  <li>{state.price}</li>
				  <li>{state.description}</li>
				  <li>{state.sku}</li>
				  <li>{state.color}</li>
				  <li>{state.size}</li>
				</ol>
  	  )}
 	  </>
  );
};

export default DetailsProductPage;
