<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();

        $this->call([ // вызывать созданные персональные классы для заполнения базы: php artisan make:seeder ScheduleSeeder
            UserSeeder::class, // php artisan db:seed --class=UserSeeder
            ScheduleSeeder::class, // php artisan db:seed --class=ScheduleSeeder
            PostSeeder::class, // php artisan db:seed --class=PostSeeder
            CommentSeeder::class, // php artisan db:seed --class=CommentSeeder
            TagSeeder::class, // php artisan db:seed --class=TagSeeder
            PostTagSeeder::class, // php artisan db:seed --class=PostTagSeeder
        ]);
    }
}
