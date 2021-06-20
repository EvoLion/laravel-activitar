<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('home');
// })->name('home');

Route::get('/about-us', function () {
    return view('about-us');
})->name('about-us');

Route::get('/schedule', function () {
    return view('schedule');
})->name('schedule');

Route::get('/gallery', function () {
    return view('gallery');
})->name('gallery');

Route::get('/blog', function () {
    return view('posts.index');
})->name('posts.index');

Route::get('/blog-single', function () {
    return view('posts.show');
})->name('posts.show');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Route::get('/', [HomeController::class, 'index'])->name('home');