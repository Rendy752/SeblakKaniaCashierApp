<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;


class ProductController extends Controller
{
    public function index()
    {
        try {
            // $product = Product::orderBy("id", "desc")->paginate(10);
            $product = Product::all();
            if (!$product)
                return response()->json(["message" => "Product not found"], 404);
            return view('produk.index')->with('produk', $product);
            // response()->json([
            //     "message" => "Successfully fetched product",
            //     "product" => $product
            // ], 200)

        } catch (e) {
            return response()->json(["message" => "Server error"], 500);
        }
    }

    public function store(Request $request)
    {
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

            $picture = $validate['name'] . '.' . $request->picture->getClientOriginalExtension();
            $request->file->move('picture', $picture);

            // foreach ($validate as $image) {
            //     $extension = $image->extension();
            //     $hash = hash('md5', $image->get());
            //     $filename = "$hash.$extension";
            //     $filesize = $image->getSize() / 1024;
            //     $originalName = $image->getClientOriginalName();
            //     try {
            //         $account = new Account;
            //         // .... etc. do something with the model
            //         $account->logo = $image->get();
            //         $account->save();
            //     } catch (\Illuminate\Database\QueryException $e) {
            //         // DEBUG IN CASE OF ERROR
            //         dd($e);
            //     }
            // }

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
        } finally {
            redirect('produk');
        }
    }

    public function update(Request $request, $id)
    {
        try {
            try {
                $validate = $request->validate([
                    'picture' => 'file|mimes:jpeg,jpg,png|max:2048',
                    'name' => 'string|unique:products',
                    'price' => 'numeric|min:1000',
                    'stock' => 'numeric|min:0',
                ]);

                $product = Product::findOrFail($id);
                $namaAwal = $product->picture;
                if ($validate['picture'] != $namaAwal) {
                    $renamePicture = $validate['name'] . "." . pathinfo('/picture/' . $product->picture)['extension'];
                    $pictureName = $renamePicture;
                    rename(public_path() . '/picture/' . $namaAwal, public_path() . '/picture/' . $pictureName);
                }

                if ($request->picture && $validate['name'] != $namaAwal) {
                    unlink(public_path() . '/picture/' . $renamePicture);
                    $validate['picture']->move('picture', $renamePicture);
                } else if ($request->picture) {
                    unlink(public_path() . '/picture/' . $namaAwal);
                    $pictureName = $validate['name'] . '.' . $validate['picture']->getClientOriginalExtension();
                    $validate['picture']->move('picture', $pictureName);
                }

                $product->update([
                    'picture' => $pictureName,
                    'category_id' => $validate['category_id'],
                    'name' => $validate['name'],
                    'price' => $validate['price'],
                    'stock' => $validate['stock']
                ]);
                return
                    response()->json(['message' => 'Successfully updating product'], 200);
            } catch (e) {
                return response()->json(['message' => 'Error updating product'], 400);
            }
        } catch (e) {
            return response()->json(['message' => 'Server error'], 500);
        } finally {
            return redirect('buku');
        }
    }

    public function destroy($id)
    {
        // try {
        //     $product = Product::findOrFail($id);
        //     unlink(public_path() . '/picture/' . $product->picture);
        //     $product->delete();
        //     return response()->json(['message' => 'Successfully deleting product'], 200);
        // } catch (e) {
        //     return response()->json(['message' => 'Error deleting product'], 400);
        // } finally {
        //     return back();
        // }
        $product = Product::findOrFail($id);
        unlink(public_path() . '/picture/' . $product->picture);
        $product->delete();
        return back();
    }

    public function search($search)
    {
        try {
            $product = Product::findOrFail($search);
            return [response()->json([
                'message' => 'Successfully searching product',
                'product' => $product
            ], 200), view('buku.index')->with('produk', $product)];
        } catch (e) {
            return response()->json(['message' => 'Error searching product'], 400);
        }
    }
}
