<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Grade;

class GradeController extends Controller
{
    //
    function index(){
      $grades = Grade::all();
      foreach($grades as $grade){
        $grade -> classes;
      }
      return $grades;
      //return view('grades.grades',compact('grades'));
    }
}
