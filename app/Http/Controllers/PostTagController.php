<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;

class PostTagController extends Controller
{
    public function index($tag)
    {
        $tag = Tag::findOrFail($tag);
        $tag->setRelation('posts', $tag->posts()->paginate(9));

        return view('posts.index', ['posts' => $tag->posts]);
    }
}
