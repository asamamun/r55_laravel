<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;

class SubcategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $sc = Subcategory::paginate(config("idb.perpage"));//13 queries per page
        $sc = Subcategory::with('category')->paginate(config("idb.perpage"));
        return view("subcategory.index")->with("subcategories",$sc);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $c = Category::pluck("name","id");
        return view("subcategory.create")->with("categories",$c);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request,[
            'category_id' => "required",
            'name' => "required|min:2|max:255"
        ],[
         'category_id.required' => ':attribute না দিয়ে উপায় নেই গোলাম হোসেন।',
         'name.required' => 'name required',
         'name.min' => ':attribute কমপক্ষে 2 অক্ষরের হতে হবে।',         
        ]);
        if(Subcategory::create($request->all())){
            return redirect("subcategory")->with("info", "Subcategory Created");
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Subcategory $subcategory)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Subcategory $subcategory)
    {
        $c = Category::pluck("name","id");
        //dd($subcategory);
        return view("subcategory.edit")
        ->with("categories",$c)
        ->with("subcategory",$subcategory);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Subcategory $subcategory)
    {
        if($subcategory->update($request->all())){
            return redirect()->back()->with("info","Successfully updated");
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Subcategory $subcategory)
    {
        //
    }

    public function getSubcat($catid){
        $sc = Subcategory::where("category_id",$catid)->pluck("name","id");
        return response()->json($sc);
    }
}
