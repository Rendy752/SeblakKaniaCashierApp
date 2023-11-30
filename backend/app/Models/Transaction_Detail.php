<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Concerns\HasUuids;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaction_Detail extends Model
{
    use HasFactory, HasUuids;
    protected $fillable = ["transaction_id", "product_id", "price", "amount"];
    public function transaction()
    {
        return $this->belongsTo(Transaction::class, "transaction_id");
    }
    public function product()
    {
        return $this->belongsTo(Product::class, "product_id");
    }
}