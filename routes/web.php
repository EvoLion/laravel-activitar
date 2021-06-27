<?php

use App\Http\Controllers\AboutUsController;
use App\Http\Controllers\CommentController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\PostTagController;
use App\Http\Controllers\ScheduleController;
use Illuminate\Support\Facades\Auth;

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

Route::get('/about-us', function () {
    return view('about-us');
})->name('about-us');
;

Route::get('/gallery', function () {
    return view('gallery');
})->name('gallery');


Route::get('/blog-single', function () {
    return view('posts.show');
})->name('blog.show');

Route::get('/contact', function () {
    return view('contact');
})->name('contact');

Auth::routes();
Route::get('/', [HomeController::class, 'index'])->name('home');
Route::post('/switch-plan', [HomeController::class, 'switchPlan'])->name('home.switch-plan');
Route::post('/contact-form', [HomeController::class, 'contactForm'])->name('home.contact-form');
Route::get('/schedule', [ScheduleController::class, 'index'])->name('schedule');
Route::get('/about-us', [AboutUsController::class, 'index'])->name('about-us');
Route::resource('posts', PostController::class)->only(['index', 'show']);
Route::post('/posts/{post}/comment-form/', [CommentController::class, 'commentForm'])->name('posts.comment-form');
Route::get('/posts/tag/{tag}', [PostTagController::class, 'index'])->name('posts.tags.index');

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
