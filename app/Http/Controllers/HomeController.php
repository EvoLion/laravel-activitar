<?php

namespace App\Http\Controllers;

use App\Models\Program;
use App\Models\Category;
use App\Models\Schedule;
use Illuminate\Http\Request;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::with(('programs'))->get();
        $programs = Program::with(('schedules'))->get();
        $stack = [];
        foreach($programs as $program) {
            foreach($program->schedules->sortBy('started_at') as $key => $event) {
                if(array_key_exists(Carbon::parse($event->started_at)->dayOfWeekIso, $stack)) {
                    $stack[Carbon::parse($event->started_at)->dayOfWeekIso][$key + 1] = $event;
                } else {
                    $stack[Carbon::parse($event->started_at)->dayOfWeekIso][$key] = $event;
                }
                ksort($stack[Carbon::parse($event->started_at)->dayOfWeekIso]);
            }
        }
        ksort($stack);

        return view('home', ['categories' => $categories, 'programs' => $programs, 'stack' => $stack]);
    }
}