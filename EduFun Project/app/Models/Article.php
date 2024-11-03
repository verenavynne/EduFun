<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;

    protected $table = 'article';

    protected $fillable =['title','category_id','writer_id','content','post_date','views','article_image'];

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

   
    public function writer()
    {
        return $this->belongsTo(Writer::class);
    }


}
