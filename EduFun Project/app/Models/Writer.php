<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Writer extends Model
{
    use HasFactory;

    protected $table='writer';

    protected $fillable = ['name','bio','writer_image'];

    public function articles(){
        return $this->hasMany(Article::class);
    }
}
