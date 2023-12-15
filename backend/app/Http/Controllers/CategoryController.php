<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $kategori = Category::all();
        $jumlah = Category::select('categories.id', DB::raw('count(products.id) as jumlah'))->leftJoin('products', 'products.category_id', '=', 'categories.id')->groupBy('categories.id')->get();
        return view('kategori.index')->with('kategori', $kategori)->with('jumlah', $jumlah);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $category = Category::all();
        return view('kategori.create')->with('category',$category);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        try {
            $request->validate([
                "name" => "required|string|unique:categories",
            ]);

            Category::create([
                'name' => $request->name,
            ]);

            toastr()->success('Data berhasil Ditambahkan');
            return redirect()->route('kategori.index');
        } catch (\Exception $e) {
            // Catat error atau tangani sesuai dengan kebutuhan aplikasi Anda
            toastr()->error('Gagal menambahkan data. Error: ' . $e->getMessage());
            return redirect()->back();
        }
    }
    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $kategori)
{
    return view('kategori.edit', compact('kategori'));
}


    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $kategori)
{
    $validate = $request->validate([
        "name" => "required|string|unique:categories,name," . $kategori->id,
    ]);

    $kategori->update(['name' => $validate['name']]);

    return redirect()->route('kategori.index')->with('success', "Data $kategori->name Berhasil Diupdate");
}


    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {

        Category::find($id)->delete();
        return redirect()->route('kategori.index')->with("info", "Data Kategori berhasil diHapus ke database");
    }
}
