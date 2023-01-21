<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    use HasFactory;
    protected $fillable = [
        "item_name",
        "item_url",
        "item_kind",
        "finished",
        "image"
        ];
    
    protected $dates = [
       'finished'
        ];
    
    public function user(){
        return $this->belongsTo(User::class);
    }
}
