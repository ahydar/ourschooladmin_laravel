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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/durandal', function () {
    return view('durandal');
});

Route::get('/test', function () {
    $excel = App::make('excel');
});

Route::get('/index', function () {
    return view('index');
});

Route::get('/first', function () {
    return view('sections.first');
});

//Handling grades and cards
Route::get('/grades','GradeController@index');
Route::get('/grade/manage/{grade}','GradeController@manage');
Route::post('/grade/{grade}/class','ClassesController@addClass');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
