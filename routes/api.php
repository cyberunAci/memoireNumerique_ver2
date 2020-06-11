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

Route::post('/login', 'AuthController@login');
Route::middleware('auth:api')->get('/logout', 'AuthController@logout');

Route::middleware(['auth:api', 'roles:admin'])->prefix('memoires')->group(function(){
Route::get('/', 'MemoiresController@getMemoires');
Route::post('/', 'MemoiresController@addOrUpdate');
Route::delete('/{id}', 'MemoiresController@deleteMemoires');
Route::get('/selects', 'MemoiresController@getAllSelect');
});

Route::get('/environnement', 'CategoriesController@getEnvironnement');

Route::get('/video', 'MediathequeController@getAllVideo');

