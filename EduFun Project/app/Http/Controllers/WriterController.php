<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Writer;

class WriterController extends Controller
{
    // untuk display semua writer pada page Writer
    public function index(){
        $writers = Writer::all();
        return view('edufun.writers', compact('writers'));
    }

    // untuk display article yang ditulis oleh masing-masinig writer
    public function show($id) 
    {
        $writer = Writer::with('articles')->find($id);
        
        if (!$writer) {
            return abort(404); 
        }
        
        return view('edufun.writerArticle', compact('writer'));
    }
    


}
