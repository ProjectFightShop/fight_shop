import { useLocation } from "react-router-dom";

import './detailsproductpage.styles.css';

const DetailsProductPage = () : JSX.Element => {  
  const state = useLocation().state;
  return (
    <>
		  {state && (
			<div id="produitDetails">
				<img src={state.url+"1.jpg"} alt={state.sku} />
				<ul id="all_infoDetails">
				  <li>{state.name}</li>
				  <li>Price : {state.price}</li>
				  <li>Description : {state.description}</li>
				  <li>Color : {state.color}</li>
				  <li>Size : {state.size}</li>
				</ul>
			</div>
  	  )}

 	  </>
  );
};

export default DetailsProductPage;
