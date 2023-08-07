<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index(){
        //load user data
        // $users = User::all();          
        // $users = User::paginate(3);          
        //$users = User::paginate(config("idb.perpage"));          
        $cats = Category::all();
        $products = Product::orderBy('created_at','desc')->paginate(12);          
        return view("main")
        ->with("cats", $cats)
        ->with("products", $products);        
    }
    public function cart(){
        return view("cart");
    }
    public function album(){
        return view("album");
    }
    public function product(){
        return view("product");
    }
}
