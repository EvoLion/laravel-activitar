<?php

namespace Database\Factories;

use App\Models\Comment;
use Illuminate\Database\Eloquent\Factories\Factory;

class CommentFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Comment::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->userName(),
            'email' => $this->faker->email(),
            'phone' => $this->faker->optional($weight = 30)->phoneNumber(),
            'comment' => $this->faker->text,
            'created_at' => $this->faker->dateTimeBetween('-3 months') //   между 3 месяцами назад и до сегодня
        ];
    }
}
