@extends('layouts.test')

@section('content')
<table class="table table-striped">
    <tr>
        <th>ID</th>
        <th>Cat/Subcat</th>
        <th>Name</th>
        <th>sku</th>
        <th>Desc</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Status</th>
        <th>Hot</th>
        <th>New</th>
        <th>Images</th>
        <th>Action</th>
    </tr>
    @forelse ($products as $product)
        <tr>
            <td>{{$product->id}}</td>
            <td>{{$product->category->name}}<br>{{$product->subcategory->name}}</td>
            <td>{{$product->name}}</td>
            <td>{{$product->sku}}</td>
            <td>{{$product->details}}</td>
            <td>{{$product->price}}</td>
            <td>{{$product->quantity}}</td>
            <td>{{$product->status}}</td>
            <td>{{$product->hot}}</td>
            <td>{{$product->new}}</td>
            <td>
                @forelse ($product->images as $image)
                   <img src="{{$image->name}}" width="60px" alt="" class="p-2"> 
                @empty
                    
                @endforelse
            </td>
            <td>Edit | Delete | View</td>
        </tr>
    @empty
        
    @endforelse
</table>
    
@endsection