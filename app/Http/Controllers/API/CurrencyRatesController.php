<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CurrencyRate;

class CurrencyRatesController extends Controller
{
    public function currencyRates()
    {
        $currencyRates = CurrencyRate::select('amount', 'date', 'currency')->get();

        return response()->json($currencyRates);
    }

    public function currencyRate(Request $request)
    {
        $currency = $request->query('currency'); // Получение значения параметра 'currency' из строки запроса
        $date = $request->query('date'); // Получение значения параметра 'date' из строки запроса
    
        // $currency = $request->input('currency'); // Получение значения параметра 'currency'
        // $date = $request->input('date'); // Получение значения параметра 'date'
        // $currency = 'USD'; // Валюта для фильтрации
        // $date = '2023-05-11'; // Дата для фильтрации
        $currencyRates = CurrencyRate::select('amount', 'date', 'currency')
        ->where('currency', $currency)
        ->where('date', $date)
        ->get();

        return response()->json($currencyRates);
    }
}
