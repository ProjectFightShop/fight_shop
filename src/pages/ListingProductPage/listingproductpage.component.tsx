import {Products}  from "../../store/store";
import ProductListingItem from '../../components/ProductListingItem/productlistingitem.component';

import "./listingproductpage.styles.css";

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
		  url= {product.url}
		/>
	);
	return <div className="page_produit">{listItems}</div>;
};


export default ListingProduct;
