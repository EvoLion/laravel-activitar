<?php

namespace Database\Seeders;

use App\Models\Program;
use App\Models\Schedule;
use Illuminate\Database\Seeder;

class ScheduleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $schedulesCount = (int)$this->command->ask('How many schedules per week would you like?', 20);
        $programs = Program::all();

        Schedule::factory($schedulesCount)->make()->each(function($schedule) use ($programs) { // создать 50 постов использовать созданных юзеров
            $schedule->program_id = $programs->random()->id; // в каждом посту user_id выбрать рандомный id из юзеров
            $schedule->save(); // сохранить, потому что использовался make место сreate
        });
    }
}
