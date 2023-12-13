import React, { Component, useEffect } from "react";
import { useNavigate, Routes, Route, useSearchParams } from "react-router-dom";
import axios from "axios";
import Navigation from "./components/Navigation";
import Product from "./pages/Product";

export default function CashierAppWrapper() {
  const [searchParams, setSearchParams] = useSearchParams();
  const keyword = searchParams.get("keyword");
  function changeSearchParams(keyword) {
    setSearchParams({ keyword });
  }

  return (
    <CashierApp
      defaultKeyword={keyword}
      keywordChange={changeSearchParams}
      navigate={useNavigate()}
    />
  );
}

class CashierApp extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      products: [],
      keyword: props.defaultKeyword || "",
    };
    this.onKeywordChangeHandler = this.onKeywordChangeHandler.bind(this);
  }

  onAddHandler({ title, body }) {
    addNote({ title, body });
    this.setState(() => {
      return {
        notes: getAllNotes(),
      };
    });
    this.props.navigate("/");
  }

  onChangeStatusHandler(id) {
    changeStatusNote(id);
    this.setState(() => {
      return {
        notes: getAllNotes(),
      };
    });
    this.props.navigate("/");
  }

  onDeleteHandler(id) {
    deleteNote(id);
    axios
      .delete(`http://127.0.0.1:8000/api/product/${id}/delete`)
      .then((res) => {
        const products = res.data;
        this.setState({ products });
      });
    this.props.navigate("/");
  }

  onKeywordChangeHandler(keyword) {
    this.setState(() => {
      return {
        keyword,
      };
    });
    this.props.keywordChange(keyword);
  }

  componentDidMount() {
    axios.get(`http://127.0.0.1:8000/api/product`).then((res) => {
      const products = res.data;
      this.setState({ products });
    });
  }
  // this.onAddHandler = this.onAddHandler.bind(this);
  // this.onChangeStatusHandler = this.onChangeStatusHandler.bind(this);
  // this.onDeleteHandler = this.onDeleteHandler.bind(this);
  // this.onKeywordChangeHandler = this.onKeywordChangeHandler.bind(this);

  render() {
    console.log(this.state.products);
    return (
      <div className="app-container">
        <Navigation />
        <main>
          <Routes>
            <Route to="/products" element={<Product />}></Route>
          </Routes>
        </main>
      </div>
    );
  }
}
