<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Comment;
use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('posts.index', ['posts' => Post::paginate(9)]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post = Post::where('id', $id)->withCount('comments')->with(['user', 'tags'])->first();
        $latest_news = Post::where('post_type', '!=', 'instagram')->orderBy('created_at', 'desc')->take(4)->get();
        $most_commented = Post::where('post_type', '!=', 'instagram')->withCount('comments')->orderBy('comments_count', 'desc')->take(4)->get(); // выборка топ 4 постов с наибольшим количеством комментариев с использованием локального Scope scopeMostCommented
        // $related_news = Post::with('tags')->where('post_type', '!=', 'instagram')->take(3)->get();
        $comments = Comment::where('post_id', $id)->get();

        return view('posts.show', ['post' => $post, 'comments' => $comments, 'latest_news' => $latest_news, 'most_commented' => $most_commented]);
    }
}
