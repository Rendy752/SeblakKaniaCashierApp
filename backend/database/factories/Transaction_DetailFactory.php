<?php

namespace Database\Factories;

use App\Models\Product;
use App\Models\Transaction;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Transaction_Detail>
 */
class Transaction_DetailFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "transaction_id" => $this->faker->randomElement(Transaction::pluck('id')->toArray()),
            "product_id" => $this->faker->randomElement(Product::pluck('id')->toArray()),
            "price" => $this->faker->numberBetween(1, 30) * 1000,
            "amount" => $this->faker->numberBetween(0, 100)
        ];
    }
}