<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    public function captain(){
        return  $this->belongsToMany('App\Captain');
    }
}
