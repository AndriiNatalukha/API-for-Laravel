<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,600&display=swap" rel="stylesheet" />


            
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
           
        <style>
        </style>
    </head>
    <body class="antialiased">


        <div class="container">
            <div class="max-w-7xl mx-auto p-6 lg:p-8">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-6 lg:gap-8">
                    <form method="POST"  action="{{ route('formLoad') }}">
                        @csrf
                        <div class="mb-3">
                            <label class="form-label" for="apikey">API Key:</label>
                            <input type="text" id="apikey" name="apikey" value="ns6hCoX2f1NTyqj39YBmL7NylDR1emrx" class="form-control" required>
                            <a href="https://apilayer.com/marketplace/exchangerates_data-api" target="_blank" id="emailHelp" class="form-text">Here you can get apikey</a>
                            
                            <br>
                            <label for="currency" class="form-control">Currency:</label>
                            <select id="currency" name="currency" class="form-control" required>
                                <option value="EUR">EUR</option>
                                <option value="USD">USD</option>
                                <option value="GBP">GBP</option>
                            </select>
                            <label for="date">Date:</label>
                            <br>
                            <input type="date" id="date" name="date" class="form-control" class="form-control" required>
                            <br>
                            <button type="submit" id="load-currency-btn" class="btn btn-primary">Load Currency Exchange Rate</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
