<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Database\Seeder;

class CommentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $posts = Post::all();

        if($posts->count() === 0) {
            $this->command->info('There are no blog posts, so no comments will be added');
            return;
        }

        $commentsCount = (int)$this->command->ask('How many comments would you like?', 50);

        Comment::factory($commentsCount)->make()->each(function($comment) use ($posts) { // создать 50 комментов использовать 20 созданных постов
            $comment->post_id = $posts->random()->id; // в каждом комменте post_id выбрать рандомный id из 50 постов
            $comment->save(); // сохранить, потому что использовался make место сreate
        });
    }
}
