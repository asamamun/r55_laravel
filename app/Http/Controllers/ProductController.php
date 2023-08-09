<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use App\Models\Category;
use App\Models\Image;
use App\Models\Subcategory;
use Illuminate\Support\Facades\Storage;
use Intervention\Image\ImageManagerStatic as ImageI;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // dd(Category::with(['subcategories','products'])->find(2));
        // $product = Product::paginate(5);
        $product = Product::with(['category','subcategory','images'])->orderBy("created_at","desc")->paginate(10);
        // $product = Product::all();
        return view("product.index")->with('products', $product);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $c = Category::pluck('name',"id");
        // $c = Category::pluck("id",'name');
        // dd($c);
        return view("product.create")
        ->with("product", null)
        ->with("categories",$c)
        ->with("subcategories",[]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        $product = Product::create($request->all());
        if($product){
           //
        //    dd($request);
           if ($request->hasFile('images')) {
            $files = $request->file('images');
            
            foreach ($files as $file) {
                // Save or process each file as needed
                $loc = $file->store('uploads');
                $i = new Image();
                $i->name = $loc;
                $product->images()->save($i);
                //echo Storage::path($loc) . "<br>";
                //resize the images and store with same name. max resolution can be 1024px
                //watermark
                    //image intervention
                    $image = ImageI::make(Storage::path($loc))->resize(800, null, function ($constraint) {
                        $constraint->aspectRatio();
                        $constraint->upsize();
                    })->insert(storage_path("app/public").'/logo.png','center')->save(Storage::path($loc));
                    //watermark end
            }
             return redirect()->route("product.create")->with("success","Product saved successfully. ID is ".$product->id );
        } 
        else{
            echo "image not available";
        }
           // 
        }
        else{
            echo "add failed";
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return view("product.single")->with("product", $product);
        // dd($product);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        $cats = Category::pluck('name', 'id');
        $subcats = Subcategory::where('category_id',$product->category_id)->pluck('name', 'id');
        $product = $product->loadMissing(["category","subcategory","images"]);
        // $product = $product;
        // dd($product);
        // return view("product.formtest");
        return view("product.edit", ["product" => $product,'categories'=>$cats,'subcategories'=>$subcats]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        //
    }
}
