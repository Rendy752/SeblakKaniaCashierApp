<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProductController extends Controller
{
    public function index()
    {
        try {
            $products = Product::orderBy("id", "desc")->paginate(10); // Menggunakan paginate untuk membatasi jumlah produk per halaman
            // $products = Product::all(); // Jika ingin menampilkan semua produk tanpa batasan halaman

                return view('produk.index')->with('produk', $products);

        } catch (\Exception $e) {
            return response()->json(["message" => "Server error"], 500);
        }
    }
    public function edit(Product $product)
    {
        return view('produk.edit', compact('product'));
    }
    public function store(Request $request)
    {

            $validate = $request->validate([
                'picture' => 'required|file|mimes:jpeg,jpg,png|max:2048',
                'name' => 'required|string|unique:products',
                'price' => 'required|numeric|min:1000',
                'stock' => 'required|numeric|min:0',
                'category_id' => 'required|exists:categories,id', // Sesuaikan dengan nama tabel dan kolom kategori Anda
            ],[toastr()->error('Error dalam menambahkan produk'),
             back()]);

            $picture =$validate['name'].'.'.$request->picture->getClientOriginalExtension(); // Menggunakan nama asli file
            $request->picture->move('picture', $picture);

            Product::create([
                'picture' => $picture,
                'category_id' => $request->category_id,
                'name' => $request->name,
                'price' => $request->price,
                'stock' => $request->stock,
            ]);

            $products = Product::all();

            toastr()->success($request->name.' berhasil ditambahkan');
            return view('produk.index')->with('produk', $products);

            // return view('produk.index')->with('kategori', $category)->with('createSuccess', 'Produk berhasil ditambahkan');

    }

    public function update(Request $request, Product $product)
    {
        try {
            $validate = $request->validate([
                'picture' => 'file|mimes:jpeg,jpg,png|max:2048',
                'name' => 'string|unique:products,name,' . $product->id,
                'price' => 'numeric|min:1000',
                'stock' => 'numeric|min:0',
                'category_id' => 'exists:categories,id',
            ]);

            $pictureName = $product->picture;

            if ($request->hasFile('picture')) {
                $pictureName = $validate['name'] . '.' . $request->file('picture')->getClientOriginalExtension();
                $request->file('picture')->move('picture', $pictureName);
            }

            $product->update([
                'picture' => $pictureName,
                'category_id' => $validate['category_id'],
                'name' => $validate['name'],
                'price' => $validate['price'],
                'stock' => $validate['stock'],
            ]);

            toastr()->success($validate['name'] . ' berhasil diupdate');
            return redirect()->route('produk.index');
        } catch (\Exception $e) {
            toastr()->error('Error dalam mengupdate produk: ' . $e->getMessage());
            return redirect()->back();
        }
    }



    public function create()
    {
        $product = Product::all();
        $category = Category::all();
        return view('produk.create')->with('produk', $product)->with('kategori', $category);
    }

    public function destroy($id)
    {
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
