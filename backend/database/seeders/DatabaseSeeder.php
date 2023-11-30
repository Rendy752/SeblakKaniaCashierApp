<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Category;
use App\Models\Order;
use App\Models\Order_Detail;
use App\Models\Product;
use App\Models\Transaction;
use App\Models\Transaction_Detail;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        // \App\Models\User::factory(10)->create();

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        Category::factory()->count(20)->create();
        Product::factory()->count(50)->create();
        Transaction::factory()->count(50)->create();
        Transaction_Detail::factory()->count(75)->create();
        Order::factory()->count(50)->create();
        Order_Detail::factory()->count(100)->create();
    }
}