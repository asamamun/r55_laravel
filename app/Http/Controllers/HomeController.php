<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\User;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        //load user data
        // $users = User::all();          
        // $users = User::paginate(3);          
        $users = User::paginate(config("idb.perpage"));          
        $cats = Category::all();          
        return view("main")
        ->with("cats", $cats)
        ->with("users", $users);
    }
    public function album(){
        return view("album");
    }
    public function product(){
        return view("product");
    }
}
