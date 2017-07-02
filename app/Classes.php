<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Classes extends Model
{
    //
    function grade(){
      return $this -> belongsTo(Grade::class);
    }
}
