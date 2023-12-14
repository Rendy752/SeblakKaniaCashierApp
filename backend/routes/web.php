<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/mainmenu', function () {
    return view('mainmenu');
});
Route::get('/kategori', function () {
    return view('kategori.index');
});
Route::resource('kategori', CategoryController::class);

Route::get('/produk', [ProductController::class, 'view']);
Route::get('/produk/edit/{id}', [ProductController::class, 'edit']);
Route::get('/produk/delete/{id}', [ProductController::class, 'delete']);