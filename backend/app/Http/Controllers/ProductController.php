<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

// use Nette\Utils\Validator;

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
    public function store(Request $request)
    {

        $validate = $request->validate([
            'picture' => 'required|file|mimes:jpeg,jpg,png|max:2048',
            'name' => 'required|string|unique:products',
            'price' => 'required|numeric|min:1000',
            'stock' => 'required|numeric|min:0',
            'category_id' => 'required|exists:categories,id', // Sesuaikan dengan nama tabel dan kolom kategori Anda
        ], [toastr()->error('Error dalam menambahkan produk'),
            back()]);

        $picture = $validate['name'] . '.' . $request->picture->getClientOriginalExtension(); // Menggunakan nama asli file
        $request->picture->move('picture', $picture);

        Product::create([
            'picture' => $picture,
            'category_id' => $request->category_id,
            'name' => $request->name,
            'price' => $request->price,
            'stock' => $request->stock,
        ]);

        $products = Product::all();

        toastr()->success($request->name . ' berhasil ditambahkan');
        return view('produk.index')->with('produk', $products);

        // return view('produk.index')->with('kategori', $category)->with('createSuccess', 'Produk berhasil ditambahkan');

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
    public function create()
    {
        $product = Product::all();
        $category = Category::all();
        return view('produk.create')->with('produk', $product)->with('kategori', $category);
    }

    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        if (file_exists(public_path() . '/picture/' . $product->picture)) {
            unlink(public_path() . '/picture/' . $product->picture);
        }
        $product->delete();
        toastr()->success('Produk berhasil dihapus');
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