<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\clients\HomeController;
use App\Http\Controllers\clients\AboutController;
use App\Http\Controllers\clients\ServiceController;
use App\Http\Controllers\clients\ToursController;
use App\Http\Controllers\clients\DestinationController;
use App\Http\Controllers\clients\BookingController;
use App\Http\Controllers\clients\ContactController;
use App\Http\Controllers\clients\TravelGuidesController;
use App\Http\Controllers\clients\TestimonialController;
use App\Http\Controllers\clients\TourDetailController;

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('/about', [AboutController::class, 'index'])->name('about');
Route::get('/service', [ServiceController::class, 'index'])->name('service');
Route::get('/tours', [ToursController::class, 'index'])->name('tours');
Route::get('/destination', [DestinationController::class, 'index'])->name('destination');
Route::get('/booking', [BookingController::class, 'index'])->name('booking');
Route::get('/contact', [ContactController::class, 'index'])->name('contact');
Route::get('/travel-guides', [TravelGuidesController::class, 'index'])->name('travelguides');
Route::get('/testimonial', [TestimonialController::class, 'index'])->name('testimonial');
Route::get('/tour-detail', [TourDetailController::class, 'index'])->name('tour-detail');