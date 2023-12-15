<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Order_Detail;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class OrderController extends Controller
{
    public function __constructor(Order $order, Order_Detail $order_Detail)
    {
        $this->order = $order;
        $this->$order_Detail = $order_Detail;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $order = Order::all();
        $product = Product::all();
        return view('pesanan.index')->with('order', $order)->with('produk', $product);
    }

    public function daftar()
    {
        $order = Order::all();
        return view('pesanan.daftar')->with('order', $order);
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
            "name" => "required|string",
            "status" => "required"
        ]);

        $uuid = Str::uuid()->toString();

        Order::create([
            'id' => $uuid,
            'name' => $request->name,
            'status' => $request->status,
        ]);

        return back();
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $orderDetail = Order_Detail::where('order_id', '=', $id)->get();
        $total = 0;
        foreach ($orderDetail as $detail) {
            $total += Product::where('id', '=', $detail->product_id)->first()->price;
        }
        $name = Order::find($id)->name;
        return view('pesanan.detail')->with('detail', $orderDetail)->with('name', $name)->with('total', $total);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Order $order)
    {
        $validate = $request->validate([
            "name" => "string" . $order->id,
            "status" => "string"
        ]);
        $order->update(['name' => $validate['name'], 'status' => $validate['status']]);

        return redirect('order');
    }

    public function delete($id)
    {

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Order::find($id)->delete();

        return back();
    }
}