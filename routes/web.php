<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/Admin', function () {
    return view('login');
});

// Front End
Route::get('/','Web\FrontController@index');
Route::get('/About','Web\FrontController@about')->name('about');
Route::get('/Contact','Web\FrontController@contact')->name('contact');
Route::get('/Artikel/{artikel}','Web\FrontController@show')->name('artikel.detail');
Route::get('/Artikel_kategori/{kategori}','Web\FrontController@artikel_kategori')->name('artikel.kategori');

Auth::routes();

Route::group(['middleware'=>'auth'],
function(){
// Back end
Route::get('/home', 'HomeController@index')->name('home');
Route::resource('categori','CategoriController');
Route::resource('artikel','ArtikelController');
});

