<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Order_Detail;
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
        return view('order.index')->with('order', $order);
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
    public function show(Order $order)
    {
        //
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