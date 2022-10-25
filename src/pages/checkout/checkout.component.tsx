import React, { useState, useEffect } from "react";
import { loadStripe } from "@stripe/stripe-js";
import { Elements } from "@stripe/react-stripe-js";
import { Product } from "../../interfaces/product";

import CheckoutForm from "./checkoutform.component";
import "./checkout.component.css";

// Make sure to call loadStripe outside of a component’s render to avoid
// recreating the Stripe object on every render.
// This is your test publishable API key.
const stripePromise = loadStripe("pk_test_51LwbfiEztLoaeirpiuROjIeanTR7rNwlCVVNbHO1oHZ6COciHYjfhyq6VI15WpDbmKczjl1DYqYfJwPREdTp9snJ000IA7VE4k");

export default function Checkout(product:any) {
  const [clientSecret, setClientSecret] = useState("");

  useEffect(() => {
    // Create PaymentIntent as soon as the page loads
    fetch("https://fightshop.plugn.fr/stripe/create.php", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ items: [product] }),
      })
      .then((res) => res.json())
      .then((data) => setClientSecret(data.clientSecret))
      .catch((err) => console.log(err));
  }, []);

  
  const appearance = {
    theme: "night" as const,
    variables: {
      colorPrimary: '#00a3d7',
    },
  };
  const options = {
    clientSecret,
    appearance,
  };

  return (
    <div className="Checkout" style={{display: "flex", justifyContent: "center", flexDirection: "column"}}>
        <h1>Checkout page</h1>
        {clientSecret && (
          <Elements options={options} stripe={stripePromise}>
            <CheckoutForm />
          </Elements>
        )}
    </div>
  );
}