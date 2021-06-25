<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function commentForm(Post $post, Request $request)
    {
        $comment = $post->comments()->create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'comment' => $request->comment,
        ]);
        $comments = Comment::where('post_id', $post->id)->get();

        return view('posts.includes._comments', ['comments' => $comments])->render();
    }
}
