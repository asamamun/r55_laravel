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
        // return view("category.index")->with('cats', $cats);
        // return view("category.index",['cats'=>$cats]);
        return view("category.index",compact("cats"));
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
        return redirect("category")->with("info", "Successfully created");
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
        return view("category.edit")->with('category',$category);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        $category->name = $request->name;
        $category->description = $request->description;
        if($category->save()){
            return redirect("category")->with("info", "Successfully Updated category, ID: " . $category->id);
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        if($category->delete()){
            return redirect("category")->with("info", "Successfully Deleted category, ID: " . $category->id);
        }
    }

    public function showcat($id){
        $cat = Category::find($id);
        return view("category.single")->with('cat',$cat);
    }
}
