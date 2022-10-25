import React, { useState, useEffect } from "react";
import {
  searchParams,
  useSearchParams,
  setSearchParams
} from 'react-router-dom';


export default function CheckoutCompleted() {

  const [searchParams, setSearchParams] = useSearchParams();

  return (
    <div className="CheckoutCompleted">
      <center>
        <h1>Thank you for your order!</h1>
        <h2>Your card has not actually been charged as Stripe is running with a development API key.</h2><br /><br />
        <h4>Debug information:</h4>
        <p>payment_intent: {searchParams.get("payment_intent")}</p>
        <p>payment_intent_client_secret: {searchParams.get("payment_intent_client_secret")}</p>
        <p>redirect_status: {searchParams.get("redirect_status")}</p>
      </center>
    </div>
  );
}