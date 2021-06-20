<?php

namespace Database\Factories;

use App\Models\Schedule;
use Illuminate\Database\Eloquent\Factories\Factory;

class ScheduleFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Schedule::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $started_at = $this->faker->dateTimeBetween('-1 week');
        return [
            'started_at' => $started_at, //   между 1 неделей назад и до сегодня
            'ended_at' => $this->faker->dateTimeInInterval($started_at, '+5 hours'),
        ];
    }
}
