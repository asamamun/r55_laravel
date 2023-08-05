@extends('layouts.test')

@section('content')
<div class="d-flex justify-content-between">
    <h1>All Products</h1>
    <a title="add new product" style="font-size: 2em" href="{{route("product.create")}}"><i class="bi bi-plus-circle"></i></a>
</div>
<div class="table-responsive">
<table class="table table-striped">
    <tr>
        <th>ID</th>
        <th>Cat/Subcat</th>
        <th>Name</th>
        <th>sku</th>
        <th class="d-none">Desc</th>
        <th>Information</th>
        {{-- <th>Price</th>
        <th>Quantity</th>
        <th>Status</th>
        <th>Hot</th>
        <th>New</th> --}}
        <th>Images</th>
        <th>Action</th>
    </tr>
    @forelse ($products as $product)
        <tr>
            <td>{{$product->id}}</td>
            <td>{{$product->category->name}}<br>{{$product->subcategory->name}}</td>
            <td>{{$product->name}}</td>
            <td>{{$product->sku}}</td>
            <td class="d-none">{{$product->details}}</td>

            <td>{{$product->price}}<br>
            {{$product->quantity}}<br>
            {{$product->status}}<br>
            {{$product->hot}}<br>
            {{$product->new}}<br>
            <td>
                @forelse ($product->images as $image)
                @if ($product->id <= 100)
                <a href="{{$image->name}}" data-lightbox="product-{{$product->id}}">          <img src="{{$image->name}}" width="60px" alt="" class="p-2"></a>
                @else
                <a href="{{asset('storage/'.$image->name)}}" data-lightbox="product-{{$product->id}}">
                    <img src="{{asset('storage/'.$image->name)}}" width="100px" alt="" loading="lazy"> 
                    </a>   
                @endif
                   
                   
                @empty
                    
                @endforelse
            </td>
            <td> <a href="{{route('product.edit',$product->id)}}">Edit</a> | Delete | View</td>
        </tr>
    @empty
        
    @endforelse
</table>
</div>
<hr>
{{$products->links()}}
    
@endsection