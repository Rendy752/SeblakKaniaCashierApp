import React from "react";
import SearchBar from "../components/SearchBar";

export default function Product() {
  return (
    <div className="product-container">
      <SearchBar />
      <ProductList />
    </div>
  );
}
