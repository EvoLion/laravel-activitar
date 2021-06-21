<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Program;
use App\Models\Category;
use App\Models\Contact;
use App\Models\PricingPlan;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $categories = Category::with(('programs'))->get();
        $programs = Program::with(('schedules'))->get();
        $pricing_plans = PricingPlan::with('pricingPlanFeachers')->where('type', 1)->get();
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

        return view('home', ['categories' => $categories, 'programs' => $programs, 'stack' => $stack, 'pricing_plans' => $pricing_plans]);
    }

    public function switchPlan(Request $request)
    {
        if($request->plan_type == "true") {
            $pricing_plans = PricingPlan::with('pricingPlanFeachers')->where('type', 1)->get();
        } else if($request->plan_type == "false") {
            $pricing_plans = PricingPlan::with('pricingPlanFeachers')->where('type', 2)->get();
        }

        return view('includes._pricing-plans', ['pricing_plans' => $pricing_plans])->render();
    }

    public function contactForm(Request $request)
    {
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->message = $request->message;

        if(isset($request->phone)) {
            $contact->phone = $request->phone;
        }
        if(isset($request->email)) {
            $contact->email = $request->email;
        }
        $contact->save();
    }
}