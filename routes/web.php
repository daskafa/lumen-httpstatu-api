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

$router->get('/api/v1/test/test', function (){
   return Main::find(1)->getCategory->information;
});


$router->get('/api/v1/status', function (){
    return response()->json([
        'message' => 'HTTP Statü Kodları',
        'content' => \App\Models\Main::with('getCategory')->get(),
    ]);
});


$router->get('/api/v1/status/{code}', 'MainController@show');

//$router->get('/api/v1/products', 'ProductController@showAll');
//$router->get('/api/v1/product-category', 'ProductController@showProductCategory');
//$router->get('/api/v1/products/{id}', 'ProductController@show');
//$router->post('/api/v1/products/', 'ProductController@save');
//$router->put('/api/v1/products/{id}', 'ProductController@update');
//$router->delete('/api/v1/products/{id}', 'ProductController@delete');
