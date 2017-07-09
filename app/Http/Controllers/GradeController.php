<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Grade;

class GradeController extends Controller
{
    //
    public function index(){
      $grades = Grade::all();
      foreach($grades as $grade){
        $grade -> classes;
      }
      return $grades;
      //return view('grades.show',compact('grades'));
    }


    public function manage(Grade $grade){
      $grade -> classes;
      return view('grades.manage',compact('grade'));
    }
}
