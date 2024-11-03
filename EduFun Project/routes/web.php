<?php

use App\Http\Controllers\ArticleController;
use App\Http\Controllers\WriterController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::prefix('/user')->group(function(){
    Route::get( '/home', [ArticleController::class,'home'])->name('edufun.home');

    Route::get( '/datascience', [ArticleController::class,'dataScience'])->name('edufun.datascience');

    Route::get( '/networksecurity', [ArticleController::class,'networkSecurity'])->name('edufun.networksecurity');

    Route::get('/writers', [WriterController::class,'index'])->name('edufun.writers');
    Route::get('/writers/{id}',[WriterController::class, 'show'])->name('edufun.writerArticle');
   
    Route::get('{category}/{title}',[ArticleController::class,'show'])->name('edufun.detail');

    Route::get('/aboutus', function(){
        return view('edufun.aboutus');
    })->name('edufun.aboutus');

    Route::get('/popular', [ArticleController::class,'popular'])->name('edufun.popular');

});
