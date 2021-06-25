<?php

namespace Database\Factories;

use App\Models\Post;
use Illuminate\Database\Eloquent\Factories\Factory;

class PostFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Post::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'title' => $this->faker->sentence(),
            'content' => $this->faker->paragraphs(10, true),
            'post_type' => $this->faker->randomElement(['large', 'instagram', 'sm', 'sms']),
            'created_at' => $this->faker->dateTimeBetween('-3 months'), //   между 3 месяцами назад и до сегодня
        ];
    }
}
