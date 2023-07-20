<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $cats = Category::all();
        $cats = Category::paginate(config("idb.perpage"));
        return view("category.index")
        ->with('cats', $cats);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view("category.create");
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // dd($request);
        Category::create($request->all());
        return redirect("category")->with("success", "Successfully created");
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return view("category.single")->with('cat',$category);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        //
    }

    public function showcat($id){
        $cat = Category::find($id);
        return view("category.single")->with('cat',$cat);
    }
}
