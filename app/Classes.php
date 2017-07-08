<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    //
    protected $fillable = ['class'];
    function grade(){
      return $this -> belongsTo(Grade::class);
    }
}
