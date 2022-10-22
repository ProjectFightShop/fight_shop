import {Product}  from "../../interfaces/product";
import { Link } from "react-router-dom";

import "./productlistingitem.styles.css";

function ProductListingItem( product : Product){
  return (
    <div className="produit">
      <p>{product.url}</p>
      <p>{product.id}</p>
      <p>{product.name}</p>
      <p>{product.price}</p>  
      <Link to={'/fight_shop/gloves/'+product.id} state={product}> to </Link>
    </div>
  );
};

export default ProductListingItem;
