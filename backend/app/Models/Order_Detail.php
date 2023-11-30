<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order_Detail extends Model
{
    use HasFactory, HasUuids;
    protected $fillable = ["order_id", "product_id", "amount", "note"];
    public function order()
    {
        return $this->belongsTo(Order::class, "order_id");
    }
    public function product()
    {
        return $this->belongsTo(Product::class, "product_id");
    }
}