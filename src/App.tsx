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
import ListingProductPage from './pages/ListingProductPage/listingproductpage.component';
import DetailsProductPage from './pages/DetailsProductPage/detailsproductpage.component';
import CreateAccount from './pages/create_account/create_account.component';
import Account from './pages/account/account.component';
import Search from './pages/search/search.component';
import Checkout from './pages/checkout/checkout.component';
import CheckoutCompleted from './pages/checkout/checkoutcompleted.component';
import {Gloves,Groin,Headgear}  from "./store/store";

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
          <Route path="search" element ={<Search />} />
		  <Route path="checkout" element ={<Checkout product="{id: 0}"/>} />
		  <Route path="checkoutcompleted" element ={<CheckoutCompleted />} />
          <Route path="gloves">
            <Route index element={<ListingProductPage products={Gloves} />} />
            <Route path=":id" element={<DetailsProductPage />} />
          </Route>
          <Route path="headgear">
            <Route index element={<ListingProductPage products={Headgear}/>} />
          </Route>
          <Route path="groin">
            <Route index element={<ListingProductPage products={Groin} />} />
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
