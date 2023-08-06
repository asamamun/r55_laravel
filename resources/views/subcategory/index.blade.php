@extends('layouts.test')

@section('content')
<div class="d-flex justify-content-between">
    {{-- {{dd(Auth::user())}} --}}
    <h1>All Subcategories</h1>
    <a style="font-size: 2em" href="{{url('subcategory/create')}}"><i class="bi bi-file-plus-fill"></i></a>
</div>
<table class="table table-striped table-hover">
    <tr>
        <th>ID</th>
        <th>Category Name</th>
        <th>SubCategory Name</th>
        <th>Action</th>
    </tr>
    @forelse ($subcategories as $sc)
        <tr>
{{--             <td>{{$loop->iteration}} out of {{$loop->count}}</td>
            <td>{{$loop->first}}</td>
            <td>{{$loop->index}}</td>
            <td>{{$loop->last}}</td> --}}
            <td>{{$loop->iteration}}</td>
            <td>{{$sc->category->name}}</td>
            <td>{{$sc->name}}</td>
            <td> 
                <a href="{{route("subcategory.edit",$sc->id)}}">EDIT</a> 
                <a href="">DELETE</a> </td>
        </tr>
    @empty
        
    @endforelse
</table>
<hr>
{{$subcategories->links()}}
    
@endsection