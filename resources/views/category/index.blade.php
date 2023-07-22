@extends('layouts.test')

@section('content')
<div class="d-flex justify-content-between">
    {{-- {{dd(Auth::user())}} --}}
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
            <a href="{{route("category.edit",$cat->id)}}"><i class="bi bi-pencil-square"></i></a>
            <form action="{{route("category.destroy",$cat->id)}}" method="post" class="d-inline">
            @csrf
            @method("delete")
            {{-- <button type="submit"><i class="bi bi-trash3-fill"></i></button> --}}
            <a href="#" onclick="del(event, this)"><i class="bi bi-trash3-fill"></i></a>
            </form>          
        </td>
    </tr>
@empty
    <h1>no value found</h1>
@endforelse
</table>
<hr>
{{$cats->links()}}
@endsection


@section('script')
    <script>
        function del(e,t){
            e.preventDefault();
            let c = confirm("Are you sure you want to delete?");
            if(!c) return;            
            t.closest('form').submit();
        }
    </script>
@endsection