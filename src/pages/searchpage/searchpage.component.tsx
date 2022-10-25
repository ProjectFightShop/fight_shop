import React, { useEffect, useState} from 'react';
import axios from 'axios';
import {Product} from '../../interfaces/product';
import {Products} from '../../store/store';
import ProductListingItem from '../../components/ProductListingItem/productlistingitem.component';
import { useSearchParams } from "react-router-dom";

/* styles */
import './searchpage.styles.css'

const SearchPage = ():JSX.Element =>{
  
  const[products,setProducts] = useState<Product[]>([]);
  var [searchParams, setSearchParams] = useSearchParams();
  
  useEffect(() => {
  async function getProducts(search:string | void ): Promise<void>{
        const product: Product[] = [];
        await axios.post("https://fightshop.plugn.fr/v1/search.php",{search:search}).then((response) => {
                response.data['data'].forEach((element:any) => {
                        product.push( { 
                                id: element.id, 
                                description: element.description, 
                                name: element.name,
                                sku: element.sku,
                                color: element.color,
                                size: element.size,
                                price: element.price,
                                url: element.url 
                        
                        
                        });
                }) 
        });
        setProducts(product);
  }
  
  
  getProducts(searchParams.get("search") ?? "");
  
  },[products, searchParams]);

  
  
  return (
	  <div className="page_produit">
	  {products.map((product:Product) => (
		<ProductListingItem
		  id={product.id}  
		  name={product.name} 
		  price={product.price} 
		  description={product.description}
		  sku = {product.sku}
		  color= {product.color}
		  size= {product.size}
		  url= {product.url}
		/>))}
	  </div>);
};

export default SearchPage;
