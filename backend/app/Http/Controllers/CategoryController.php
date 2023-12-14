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
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            "name" => "required|string|unique:kategori",
        ]);

        Category::create([
            'name' => $request->name,
        ]);

        return back();
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
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        $validate = $request->validate([
            "name" => "required|string|unique:kategori,name," . $category->id,
        ]);
        $category->update(['name' => $validate['name']]);

        return redirect('kategori');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Category::find($id)->delete();

        return back();
    }
}