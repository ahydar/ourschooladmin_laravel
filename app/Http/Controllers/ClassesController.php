<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Classes;
use App\Grade;
class ClassesController extends Controller
{
    //

    public function addClass(Request $request,Grade $grade){

      $this -> validate($request,[
        'class' => 'required'
      ]);

      //Adding new class to grade
      $class = new Classes;
      $class -> class = $request -> class;
      $grade -> classes() -> save($class);

        return back();
    }
}
