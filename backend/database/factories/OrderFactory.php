<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
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
            "name" => $this->faker->name,
            "status" => $this->faker->randomElement(['Dine-in', 'Take Away', 'Dine-in and Take Away', 'Delivery']),
        ];
    }
}