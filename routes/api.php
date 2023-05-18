<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\CurrencyRatesController;

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

Route::post('/submit', [FormController::class, 'submit'])->name('formLoad');

Route::post('/currency-rates', [CurrencyRatesController::class, 'currencyRates'])->middleware('checkRole');

Route::post('/currency-rate', [CurrencyRatesController::class, 'currencyRate'])->middleware('checkRole');