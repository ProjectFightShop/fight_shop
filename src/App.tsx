import {
  Navigate,  
  Routes, 
  Route
} from 'react-router-dom';
import './App.css';
/* components */
import PageLayout from './pages/PageLayout/pagelayout.component';
import HomePage from './pages/homepage/homepage.component';
import Login from './pages/login/login.component';
import { ListingProduct } from './pages/ListingProductPage/listingproductpage.component';
import DetailsProductPage from './pages/DetailsProductPage/detailsproductpage.component';
import CreateAccount from './pages/create_account/create_account.component';
import Account from './pages/account/account.component';
import Checkout from './pages/checkout/checkout.component';
import CheckoutCompleted from './pages/checkout/checkoutcompleted.component';
import {getProducts}  from "./store/store";
import { Product } from './interfaces/product';
import SearchPage from './pages/searchpage/searchpage.component';

const Gloves:Product[] = getProducts("", "gloves");
const Headgear:Product[] = getProducts("", "headgear");
const Groin:Product[] = getProducts("", "groin");
const Products:Product[] = getProducts();

export var search = "";
export var Search:Product[] = getProducts(search);

const App = () => {  
  return (
    <div className="App" style={{
    overflowY: 'scroll'}}>
      <Routes>
        <Route path="/" element = {<Navigate to="/fight_shop" replace />} />
        <Route path="/fight_shop" element ={<PageLayout />}>
          <Route index element={<HomePage />} />
          <Route path="login" element ={<Login />} />
          <Route path="create_account" element ={<CreateAccount />} />
          <Route path="account" element ={<Account />} />
          <Route path="search" element ={<SearchPage />} />
		  <Route path="checkout" element ={<Checkout />} />
		  <Route path="checkoutcompleted" element ={<CheckoutCompleted />} />
          <Route path="gloves">
            <Route index element={<ListingProduct products={Gloves} />} />
            <Route path=":id" element={<DetailsProductPage />} />
          </Route>
          <Route path="headgear">
            <Route index element={<ListingProduct products={Headgear}/>} />
          </Route>
          <Route path="groin">
            <Route index element={<ListingProduct products={Groin} />} />
          </Route>
        </Route>
        <Route
           path="*"
      	   element= {
             <main style={{ padding: "1rem" }}>
               <p>There's nothing here!</p>
             </main>
           }
        />
        
      </Routes>
    </div>
  );
};

export default App;
