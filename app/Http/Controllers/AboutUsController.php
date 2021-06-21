<?php

namespace App\Http\Controllers;

use App\Models\Trainer;
use Illuminate\Http\Request;

class AboutUsController extends Controller
{
    public function index()
    {
        return view('about-us', ['trainers' => Trainer::all()]);
    }
}
