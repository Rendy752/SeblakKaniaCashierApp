import React from "react";
import { createRoot } from "react-dom/client";
import { BrowserRouter } from "react-router-dom";
import "./styles/style.css";
import CashierApp from "./CashierApp";

const root = createRoot(document.getElementById("root"));
root.render(
  <BrowserRouter>
    <CashierApp />
  </BrowserRouter>
);
