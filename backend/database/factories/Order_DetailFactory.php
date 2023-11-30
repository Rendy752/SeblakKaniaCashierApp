<?php

namespace Database\Factories;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order_Detail>
 */
class Order_DetailFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            "order_id" => $this->faker->randomElement(Order::pluck('id')->toArray()),
            "product_id" => $this->faker->randomElement(Product::pluck('id')->toArray()),
            "amount" => $this->faker->numberBetween(1, 10),
            "note" => $this->faker->randomElement([$this->faker->paragraph, "-"]),
        ];
    }
}