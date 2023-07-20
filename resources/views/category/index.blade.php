@extends('layouts.test')

@section('content')
<div class="d-flex justify-content-between">
    <h1>All categories</h1>
    <a style="font-size: 2em" href="{{url('category/create')}}"><i class="bi bi-file-plus-fill"></i></a>
</div>


<table class="table table-striped table-primary">
    <colgroup>
        <col>
        <col>
        <col>
        <col style="width: 20%;">
      </colgroup>
    <tr>
        <th>id</th>
        <th>name</th>
        <th>desc</th>
        <th>Action</th>
    </tr>
@forelse ($cats as $cat)
    <tr>
        <td>{{$cat->id}}</td>
        <td>{{$cat->name}}</td>
        <td>{{$cat->description}}</td>
        <td style="text-align: center"> 
            <a href="{{url("category/".$cat->id)}}"><i class="bi bi-eye-fill"></i></i></a>
            <a href="#"><i class="bi bi-pencil-square"></i></a>
            <a href="#"><i class="bi bi-trash3-fill"></i></a>
        </td>
    </tr>
@empty
    <h1>no value found</h1>
@endforelse
</table>
<hr>
{{$cats->links()}}
@endsection