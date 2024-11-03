<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;
use App\Models\Category;
use App\Models\Writer;


class ArticleController extends Controller
{
    // untuk display article di homepage
    public function home(){
        $articles = Article::with(['writer', 'category'])->latest()->take(2)->get();
        return view('edufun.home', compact('articles'));
    }

    // untuk display semua article di data science category
    public function dataScience(){
        $category = Category::where('name','Data Science')->firstOrFail();
        $articles = Article::where('category_id', $category->id)->get();
        return view('edufun.datascience', compact('articles'));
    }

    // untuk display semua article di network security category
    public function networkSecurity(){
        $category = Category::where('name','Network Security')->firstOrFail();
        $articles = Article::where('category_id', $category->id)->get();
        return view('edufun.networkssecurity', compact('articles'));
    }

    // untuk display detail page
    public function show($category, $title){
        $article = Article::where('title', $title)->with('writer')->firstOrFail();
        return view('edufun.detail', compact('article'));
    }

    public function popular(){
        $articles = Article::orderBy('views','desc')->paginate(3);
        return view('edufun.popular', compact('articles'));
    }


}
