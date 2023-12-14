<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\UserController;
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

Route::get('/loginMenu', [UserController::class, 'index']);
Route::post('/login', [UserController::class, 'login']);
Route::post('/register', [UserController::class, 'register']);
Route::get('/logout', [UserController::class, 'logout']);

Route::get('/', function () {
    return view('mainmenu');
});
// Route::get('/kategori', function () {
//     return view('kategori.index');
// });
Route::resource('kategori', CategoryController::class);
Route::resource('produk', ProductController::class);

Route::get('/produk', [ProductController::class, 'view']);
Route::get('/produk/edit/{id}', [ProductController::class, 'edit']);
Route::get('/produk/delete/{id}', [ProductController::class, 'delete']);
