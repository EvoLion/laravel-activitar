<?php

namespace App\Http\Controllers;

use App\Models\Program;
use App\Models\Category;
use Illuminate\Http\Request;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::with(('programs'))->get();
        $programs = Program::with(('schedules'))->get();
        $stack = [];
        // foreach($programs as $program) { // для _classtime1.blade.php
        //     foreach($program->schedules->sortBy('started_at') as $key => $event) {
        //         if(array_key_exists(Carbon::parse($event->started_at)->dayOfWeekIso, $stack)) {
        //             $stack[Carbon::parse($event->started_at)->dayOfWeekIso][$key + 1] = $event;
        //         } else {
        //             $stack[Carbon::parse($event->started_at)->dayOfWeekIso][$key] = $event;
        //         }
        //         ksort($stack[Carbon::parse($event->started_at)->dayOfWeekIso]);
        //     }
        // }


        foreach($programs as $program) { // для _classtime.blade.php
            foreach($program->schedules->sortBy('started_at') as $key => $event) {
                if(array_key_exists(Carbon::parse($event->started_at)->hour, $stack)) {
                    $stack[Carbon::parse($event->started_at)->hour][Carbon::parse($event->started_at)->dayOfWeekIso] = $event;
                } else {
                    $stack[Carbon::parse($event->started_at)->hour][Carbon::parse($event->started_at)->dayOfWeekIso] = $event;
                }
                ksort($stack[Carbon::parse($event->started_at)->hour]);
            }
        }
        ksort($stack);

        return view('home', ['categories' => $categories, 'programs' => $programs, 'stack' => $stack]);
    }
}