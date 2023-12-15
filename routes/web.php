<?php
/** @var \Laravel\Lumen\Routing\Router $router */

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

$router->get('/', function () use ($router) {
    return "Welcome";
    //return $router->app->version();
});

// $router->get('/poli','PoliController@index');
// $router->get('/poli/{id}','PoliController@show');
// $router->post('/poli','PoliController@store');
// $router->delete('/poli/{id}','PoliController@destroy');

$router->group(['prefix' => 'poli'], function ($router) {
    $router->get('/', 'PoliController@index');
    $router->get('/{id}', 'PoliController@show');
    $router->post('/', 'PoliController@store');
    $router->delete('/{id}', 'PoliController@destroy');
    $router->put('/{id}','PoliController@update');
});

$router->group(['prefix' => 'pasien'], function ($router) {
    $router->get('/', 'PasienController@index');
    $router->get('/{id}', 'PasienController@show');
    $router->post('/', 'PasienController@store');
    $router->delete('/{id}', 'PasienController@destroy');
    $router->put('/{id}','PasienController@update');
});

$router->group(['prefix' => 'pegawai'], function ($router) {
    $router->get('/', 'PegawaiController@index');
    $router->get('/{id}', 'PegawaiController@show');
    $router->post('/', 'PegawaiController@store');
    $router->delete('/{id}', 'PegawaiController@destroy');
    $router->put('/{id}','PegawaiController@update');
});
/*
$router->group(['prefix' => 'api'], function() use ($router){

});


$router->get('/migrations','MigrationsController@index');
*/
