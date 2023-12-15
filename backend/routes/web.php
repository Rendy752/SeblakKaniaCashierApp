<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

Route::view('/loginMenu', 'login');
Route::view('/registerMenu', 'register');
Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);
Route::get('/logout', [UserController::class, 'logout']);

Route::get('/', function () {
    return view('mainmenu');
});

Route::resource('kategori', CategoryController::class);
Route::resource('produk', ProductController::class);
Route::get('pesanan/daftar', [OrderController::class, 'daftar']);
Route::resource('pesanan', OrderController::class);