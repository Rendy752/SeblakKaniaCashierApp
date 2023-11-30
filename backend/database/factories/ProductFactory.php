<?php

namespace Database\Factories;

use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Product>
 */
class ProductFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        $name = $this->faker->safeColorName;
        return [
            "category_id" => $this->faker->randomElement(Category::pluck('id')->toArray()),
            "picture" => $name . $this->faker->randomElement([".jpeg", ".jpg", ".png"]),
            "name" => $name,
            "price" => $this->faker->numberBetween(1, 30) * 1000,
            "stock" => $this->faker->numberBetween(0, 100)
        ];
    }
}