import React from 'react';

import {Products}  from "../../store/store";
import ProductListingItem from '../../components/ProductListingItem/productlistingitem.component';

const ListingProduct = () => {
	const listItems = Products.map((product) => 
		<ProductListingItem
		  id={product.id}  
		  name={product.name} 
		  price={product.price} 
		  description={product.description}
		  sku = {product.sku}
		  color= {product.color}
		  size= {product.size}
		/>
	);
	return <>{listItems}</>;
};


export default ListingProduct;