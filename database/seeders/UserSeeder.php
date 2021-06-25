<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        // $usersCount = max((int)$this->command->ask('How many users would you like?', 20), 1); // интерактивный вопрос для консоли, стандартное значение. max() потребуется больше поставить больше, чем 1

        User::factory()->admin()->create(); // 1 шт
        // User::factory($usersCount)->create(); // 20 шт
    }
}
