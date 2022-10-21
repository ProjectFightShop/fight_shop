import React from 'react';
import {Product}  from "../../interfaces/product";
import { Link } from "react-router-dom";

function ProductListingItem( product : Product){
  return (
    <>
      <p>{product.id}</p>
      <p>{product.name}</p>
      <p>{product.price}</p>  
      <Link to={'/fight_shop/gloves/'+product.id} state={product}> to </Link>
    </>	
  );
};

export default ProductListingItem;
