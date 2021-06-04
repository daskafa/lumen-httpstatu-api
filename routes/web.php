<?php

/** @var \Laravel\Lumen\Routing\Router $router */

use App\Models\Main;
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/


$router->get('/', function (){
    return response()->json([
        'Uyarı' => 'Lütfen URL e /api/v1/status/statuKodu giriniz.',
        'Mesaj' => 'HTTP Statü Kodları',
        'Tümü' => Main::all(),
    ]);
});

$router->get('/api/v1/status/{code}', 'MainController@show');
