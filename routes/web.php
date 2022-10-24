<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Auth::routes();

Route::get('/', 'App\Http\Controllers\HomeController@index');
Route::get('/home', 'App\Http\Controllers\HomeController@index')->name('home');
Route::match(['get', 'post'], '/api/historic_uf', 'App\Http\Controllers\ApiController@api_historic_uf')->name('api_historic_uf');
Route::get('/historic_uf', 'App\Http\Controllers\HomeController@historic_uf')->name('historic_uf');
Route::get('/users', 'App\Http\Controllers\HomeController@users')->name('users');
Route::match(['get', 'post'], '/filtrar_grafico', 'App\Http\Controllers\HomeController@filtrar_grafico')->name('filtrar_grafico');

Route::group(['namespace' => 'App\Http\Controllers\Profile'], function () {
	Route::get('/profile', 'ProfileController@index')->name('profile');
	Route::put('/profile/update/profile/{id}', 'ProfileController@updateProfile')->name('profile.update.profile');
	Route::put('/profile/update/password/{id}', 'ProfileController@updatePassword')->name('profile.update.password');
	Route::put('/profile/update/avatar/{id}', 'ProfileController@updateAvatar')->name('profile.update.avatar');
});

Route::group(['namespace' => 'App\Http\Controllers\Error'], function () {
	Route::get('/404', 'ErrorController@unauthorized')->name('unauthorized');
});
