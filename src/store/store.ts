import { Product }  from "../interfaces/product";
import axios from "axios";

export function getProducts(search: string | void, category:string | void ): Product[]{
	const product: Product[] = [];
	axios.post("https://fightshop.plugn.fr/v1/search.php",{search: search, category:category}).then((response) => {
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

	return product;
	
}


export const Products:Product[] = getProducts();

/*
export const  Products: Product[] = [
        {
		id: 1,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:300
	},
	{
		id: 2,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:300
	},
	{
		id: 3,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:400
	},
	{
		id: 3,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:400
	},
	{
		id: 3,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:400
	},
	{
		id: 3,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:400
	}
	,
	{
		id: 3,
		description: "blabla",
		name: "name",
		sku: "sku",
		color: "color",
		size:"40z",
		price:400
	}
];
*/
