import React from "react";
import { Link } from "react-router-dom";
import { FiShoppingBag, FiShoppingCart, FiMenu, FiClock } from "react-icons/fi";

export default function Navigation() {
  return (
    <header>
      <h1>
        <Link to="/">Logo</Link>
      </h1>
      <nav className="navigation">
        <ul>
          <li>
            <Link to="/transaction">
              <div className="action-group">
                <button className="action" type="button">
                  <FiShoppingCart />
                </button>
                <h3>Transaksi</h3>
              </div>
            </Link>
          </li>
          <li>
            <Link to="/products">
              <div className="action-group">
                <button className="action" type="button">
                  <FiShoppingBag />
                </button>
                <h3>Produk</h3>
              </div>
            </Link>
          </li>
          <li>
            <Link to="/transaction">
              <div className="action-group">
                <button className="action" type="button">
                  <FiMenu />
                </button>
                <h3>Kategori</h3>
              </div>
            </Link>
          </li>
          <li>
            <Link to="/transaction">
              <div className="action-group">
                <button className="action" type="button">
                  <FiClock />
                </button>
                <h3>Histori</h3>
              </div>
            </Link>
          </li>
        </ul>
      </nav>
      <h1>
        <Link to="/">Logout</Link>
      </h1>
    </header>
  );
}
