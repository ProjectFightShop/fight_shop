import React, { useState} from 'react';
import ProductListingItem from '../../components/ProductListingItem/productlistingitem.component';
import {Product}  from "../../interfaces/product";
import {getProducts} from "../../store/store";
import { useSearchParams } from "react-router-dom";

import "./listingproductpage.styles.css";

interface ProductsListProps {
  products:Product[];
}

export function ListingProduct({products}:ProductsListProps) {	
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
	return <div className="page_produit">{listItems}</div>;
};
