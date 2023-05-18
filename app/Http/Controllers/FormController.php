<?php

namespace App\Http\Controllers;
use App\Models\CurrencyRate;
use Illuminate\Http\Request;

class FormController extends Controller
{
    public function submit(Request $request)
    {
         $apiKey = $request->input('apikey');
         $currency = $request->input('currency');
         $date = $request->input('date');

        $curl = curl_init();
       // dd( $request);

        curl_setopt_array($curl, array(
          CURLOPT_URL => "https://api.apilayer.com/exchangerates_data/convert?to=".$currency."&from=PLN&amount=1",
          CURLOPT_HTTPHEADER => array(
            "Content-Type: text/plain",
            "apikey:".$apiKey
          ),
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => "",
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => "GET"
        ));
        
        $response = curl_exec($curl);
//    dd( $response);     
        curl_close($curl);

         // Распаковываем JSON-ответ и извлекаем данные, необходимые для сохранения
         $data = json_decode($response, true);
         $amount = $data['result'];

         // Создаем новый объект CurrencyRate и заполняем его данными из запроса
         $rate = new CurrencyRate;
         $rate->currency = $currency;
         $rate->amount = $amount;
         $rate->date = $date;
 
         // Сохраняем объект в базе данных
         $rate->save();
         dd($response);
        // return view('success');
      
    }
}
