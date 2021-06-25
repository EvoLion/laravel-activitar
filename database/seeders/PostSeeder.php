<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use Illuminate\Database\Seeder;

class PostSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $postCount = (int)$this->command->ask('How many posts would you like?', 20);
        $users = User::all();

        Post::factory($postCount)->make()->each(function($post) use ($users) {
            $post->user_id = $users->random()->id; // в каждом посту user_id выбрать рандомный id из юзеров
            $post->save(); // сохранить, потому что использовался make место сreate
        });
    }
}
