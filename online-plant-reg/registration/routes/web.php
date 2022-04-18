<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CustomAuthController;


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

Route::get('/', function () {
    return view('auth.registration');
});

Route::get('/login', [CustomAuthController::class,'login']);
Route::get('/registration', [CustomAuthController::class,'registration']);
Route::post('/registration', [CustomAuthController::class,'registerUser'])->name('register-user');
Route::post('login-user', [CustomAuthController::class,'loginUser'])->name('login-user');
Route::get('/dashboard', [CustomAuthController::class,'dashboard']);
Route::get('/logout', [CustomAuthController::class,'logout']);
Route::post('/', [App\Http\Controllers\CustomAuthController::class, 'index'])->name('index');

