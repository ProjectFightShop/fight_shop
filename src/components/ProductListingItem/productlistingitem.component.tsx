import {Product}  from "../../interfaces/product";
import { Link } from "react-router-dom";

import "./productlistingitem.styles.css";

function ProductListingItem( product : Product){
  return (
    <div className="produit">
      <img src={product.url+"1.jpg"} alt={product.sku} />
      <div className="all_info">
        <p>{product.name}</p>
        <p>{product.price}</p>  
        <Link to={'/fight_shop/gloves/'+product.id} state={product}> to </Link>
      </div>
    </div>
  );
};

export default ProductListingItem;
