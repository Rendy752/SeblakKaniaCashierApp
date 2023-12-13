<?php

use App\Http\Controllers\ProductController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get("/product", [ProductController::class, "view"]);
Route::post("/product/add", [ProductController::class, "add"]);
Route::put("/product/{id}/edit", [ProductController::class, "edit"]);
Route::put("/product/{id}/delete", [ProductController::class, "delete"]);
Route::get("/product/{search}", [ProductController::class, "search"]);


Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});