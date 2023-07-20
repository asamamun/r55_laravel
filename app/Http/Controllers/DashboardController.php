<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index(){
        $title = "Welcome to Dashboard";
        $colors = ["red", "green", "yellow"] ;
        // return view ("dashboard.index")->with('title', $title)->with('colors', $colors);
        return view ("dashboard.index",['title'=>$title,'colors'=>$colors]);
    }
}
