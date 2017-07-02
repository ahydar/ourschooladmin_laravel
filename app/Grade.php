<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Grade extends Model
{
    //
    function classes(){
      return $this -> hasMany(Classes::class);
    }
}
