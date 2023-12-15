<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\Order;
use App\Models\Order_Detail;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\Transaction_Detail;
use App\Models\User;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    public function run(): void
    {
        User::factory()->count(10)->create();
        Category::factory()->count(10)->create();
        Product::factory()->count(10)->create();
        Transaction::factory()->count(30)->create();
        Transaction_Detail::factory()->count(80)->create();
        Order::factory()->count(50)->create();
        Order_Detail::factory()->count(100)->create();
    }
}