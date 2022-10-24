import React, { useState} from 'react';
import ProductListingItem from '../../components/ProductListingItem/productlistingitem.component';
import {Product}  from "../../interfaces/product";
import {Gloves} from "../../store/store";

interface ProductsListProps {
  products:Product[];
}

const ListingProduct = ({products}:ProductsListProps) => {
	 
	
	const listItems = products.map((product:Product) => 
		<ProductListingItem
		  id={product.id}  
		  name={product.name} 
		  price={product.price} 
		  description={product.description}
		  sku = {product.sku}
		  color= {product.color}
		  size= {product.size}
		  url= {product.url}
		/>
	);
	return <>{listItems}</>;
};


export default ListingProduct;
