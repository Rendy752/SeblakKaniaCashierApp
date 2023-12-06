<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;


class ProductController extends Controller {
    public function view() {
        try {
            $product = Product::orderBy("id", "desc")->paginate(10);
            if(!$product)
                return response()->json(["message" => "Product not found"], 404);
            return response()->json([
                "message" => "Successfully fetched product",
                "product" => $product
            ], 200);
        } catch (e) {
            return response()->json(["message" => "Server error"], 500);
        }
    }

    public function add(Request $request) {
        try {
            try {
                $validate = $request->validate([
                    'picture' => 'required|file|mimes:jpeg,jpg,png|max:2048',
                    'name' => 'required|string|unique:products',
                    'price' => 'required|numeric|min:1000',
                    'stock' => 'required|numeric|min:0',
                ]);
            } catch (e) {
                return response()->json(['message' => 'Error adding product'], 400);
            }

            $picture = $validate['judul'].'.'.$request->picture->getClientOriginalExtension();
            $request->file->move('file', $picture);

            Product::create([
                'picture' => $picture,
                'category_id' => $request->category_id,
                'name' => $validate['name'],
                'price' => $validate['price'],
                'stock' => $validate['stock'],
            ]);
            return response()->json(['message' => 'Successfully adding product'], 200);
        } catch (e) {
            return response()->json(['message' => 'Server error'], 500);
        }
    }

    public function edit(Request $request, $id) {
        try {
            try {
                $validate = $request->validate([
                    'picture' => 'file|mimes:jpeg,jpg,png|max:2048',
                    'name' => 'string|unique:products',
                    'price' => 'numeric|min:1000',
                    'stock' => 'numeric|min:0',
                ]);

                $product = Product::findOrFail($id);
                $product->update([
                    'picture' => $validate['picture'],
                    'category_id' => $validate['category_id'],
                    'name' => $validate['name'],
                    'price' => $validate['price'],
                    'stock' => $validate['stock']
                ]);
                return response()->json(['message' => 'Successfully updating product'], 200);
            } catch (e) {
                return response()->json(['message' => 'Error updating product'], 400);
            }
        } catch (e) {
            return response()->json(['message' => 'Server error'], 500);
        }
    }

    public function delete($id) {
        try {
            $product = Product::findOrFail($id);
            unlink(public_path().'/picture/'.$product->picture);
            $product->delete();
            return response()->json(['message' => 'Successfully deleting product'], 200);
        } catch (e) {
            return response()->json(['message' => 'Error deleting product'], 400);
        }
    }

    public function search($search) {
        try {
            $product = Product::findOrFail($search);
            return response()->json([
                'message' => 'Successfully searching product',
                'product' => $product
            ], 200);
        } catch (e) {
            return response()->json(['message' => 'Error searching product'], 400);
        }
    }
}