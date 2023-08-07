@extends('layouts.test')

@section('sidebar')
<h3>All Categories</h3>
<ul class="list-inline">
    @foreach ($cats as $cat)
        <li class="list-inline-item"> <a class="btn btn-outline-primary" href="{{url('category/'.$cat->id)}}">{{$cat->name}}</a></li>
    @endforeach
</ul>
    
@endsection

@section('style')
<style>
    img.card-img-top{
        height: 15rem; 
        object-fit:cover;
    }
    .product-img{
        display: inline-block;
        overflow: hidden;
        
    }
    .product-img img{
        transition: all 1s;
    }
    .product-img:hover img{
        transform:scale(1.5);
    }
</style>
    
@endsection

@section('content')
<div class="row row-cols-1 row-cols-md-3 g-4">
@forelse ($products as $product)
<div class="col">
    <div class="card h-100">
        <div class="card-header bg-transparent border-success">{{$product->category->name}},{{$product->subcategory->name}} </div>
        @if (count($product->images))
        @foreach ($product->images as $image)
           @if ($loop->first)
           <div class="product-img">
           <img src="{{asset("storage/".$image->name)}}" class="card-img-top" alt="...">
        </div>
           @endif 
        @endforeach            
        @endif
      
      <div class="card-body">
        <a href="{{route("product.show",$product->id)}}">
        <h5 class="card-title">{{$product->name}}</h5>
    </a>
        <p>Price: {{$product->price}} 
            <a class="addCartIcon" 
            title="add {{$product->name}} to your bag" 
            href="javascript:void(0)" 
            data-pid="{{$product->id}}"
            data-pname="{{$product->name}}"
            data-pprice="{{$product->price}}"
            data-pamount="1">
            <i class="bi bi-bag-plus"></i></a>
            <a title="add {{$product->name}} to your wishlist" href="{{url("wishlist/".$product->id)}}"><i class="bi bi-heart"></i></a>
        </p>

      </div>
      <div class="card-footer">
        <small class="text-body-secondary">Last updated {{$product->created_at}}</small>
      </div>
    </div>
  </div>
@empty
    
@endforelse
</div>
<hr>
{{$products->links()}}

@endsection

@section('script')
<script>
    $(document).ready(function () {
        $("#mainh1").click(function(){
            alert("You clicked me");
        })
    });
  </script>
@endsection