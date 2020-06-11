<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('memoires', 'MemoiresController@getMemoires');
Route::post('memoires', 'MemoiresController@addOrUpdate');
Route::get('selects', 'MemoiresController@getAllSelect');


Route::get('/environnement', 'CategoriesController@getEnvironnement');

Route::get('/video', 'MediathequeController@getAllVideo');

