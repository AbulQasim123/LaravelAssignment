<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

Route::get('/', function () {
    return view('layout.index');
});
Route::get('/dashboard', function () {
    return view('layout.dashboard');
});

Route::resource('products', ProductController::class);
Route::get('/get-products', [ProductController::class, 'getProducts'])->name('get-products');
Route::get('/export-products', [ProductController::class, 'exportProducts'])->name('export.products');
Route::post('/import-products', [ProductController::class, 'importProducts'])->name('import.products');
