<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;

class WriterController extends Controller
{
    public function index(){
        $writers = Writer::all();
        return view('edufun.writers', compact('writers'));
    }

    public function show($id) 
    {
        $writer = Writer::with('articles')->find($id);
        
        if (!$writer) {
            return abort(404); // This will give you a 404 response if the writer does not exist
        }
        
        return view('edufun.writerArticle', compact('writer'));
    }
    


}
