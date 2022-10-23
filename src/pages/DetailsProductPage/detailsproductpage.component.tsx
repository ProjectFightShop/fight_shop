import { useLocation } from "react-router-dom";

import './detailsproductpage.styles.css';

const DetailsProductPage = () : JSX.Element => {  
  const state = useLocation().state;
  return (
    <>
		  {state && (
				<ul>
				  <li>{state.id}</li>
				  <li>{state.name}</li>
				  <li>{state.price}</li>
				  <li>{state.description}</li>
				  <li>{state.sku}</li>
				  <li>{state.color}</li>
				  <li>{state.size}</li>
				  <li>{state.url}</li>
				</ul>
  	  )}

 	  </>
  );
};

export default DetailsProductPage;
