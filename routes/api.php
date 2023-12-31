<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;

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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// Route::post('/register', [AuthController::class, 'register'])->name('auth.register');
// Route::post('/login', [AuthController::class, 'login'])->name('auth.login');
// Route::get('/dashboard', [AuthController::class, 'dashboard'])->name('auth.dashboard');
// Route::get('/logout', [AuthController::class, 'logout']);

Route::group(['middleware' => 'api'], function ($routes) {
    Route::post('/register', [AuthController::class, 'register'])->name('auth.register');
    Route::post('/login', [AuthController::class, 'login'])->name('auth.login');
    Route::get('/logout', [AuthController::class, 'logout'])->name('auth.logout');
    Route::get('/dashboard', [AuthController::class, 'dashboard'])->name('auth.dashboard');
});
