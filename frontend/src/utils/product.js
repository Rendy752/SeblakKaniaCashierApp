import axios from "axios";

async function getAllProducts() {
  let res = await axios.get("http://127.0.0.1:8000/api/product");
  return res;
}
export { getAllProducts };
