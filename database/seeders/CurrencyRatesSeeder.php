<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class CurrencyRatesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $currencies = ['USD', 'EUR', 'GBP'];
        $startDate = Carbon::create(2023, 5, 1); 
        $endDate = Carbon::create(2023, 6, 1)->subDay();

        $dates = collect();

        for ($date = $startDate; $date->lte($endDate); $date->addDay()) {
            $dates->push($date->format('Y-m-d'));
        }

        foreach ($currencies as $currency) {
            $rates = [];

            foreach ($dates as $date) {
                $rates[] = [
                    'currency' => $currency,
                    'amount' => mt_rand(10, 99) / 10, 
                    'date' => $date,
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }

            DB::table('currency_rates')->insert($rates);
        }
    }
}

