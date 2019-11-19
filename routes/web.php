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

Auth::routes();

Route::group(['middleware' => 'auth'], function () {

    Route::group(['prefix' => 'files'],function(){
        Route::get('/create', 'FileEntriesController@create');
        Route::get('/{folder_id}', 'FileEntriesController@index');
    
    });
     
    
});

Route::group(['prefix' => 'share'],function(){
    Route::get('/{folderName}', 'ShareController@index');
    Route::get('/download/{folderName}', 'ShareController@share');

});



Route::group(['prefix' => 'zip'],function(){
    Route::get('/download/{folderName}', 'ZipController@index');

});


Route::post('files/upload-file', 'FileEntriesController@uploadFile');

Route::get('files/{path_file}/{file}', function($path_file = null, $file = null) {
    $path = storage_path().'/files/uploads/'.$path_file.'/'.$file;
    if(file_exists($path)) {
        return Response::download($path);
    }
});

Route::get('/home', 'FolderController@index')->name('home');
