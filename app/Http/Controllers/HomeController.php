<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        //load user data
        $users = User::all();              
        return view("main")->with("users", $users);
    }
    public function album(){
        return view("album");
    }
    public function product(){
        return view("product");
    }
}
