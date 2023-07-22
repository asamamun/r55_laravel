@extends('layouts.test')

@section('content')

<h1>Edit Category</h1>

<form action="{{route('category.update',$category->id)}}" method="post">
    @csrf
    @method("put")
    <div class="form-group">
        <label class="form-label">Name</label>
        <input type="text" value="{{$category->name}}" class="form-control" name="name" placeholder="Cat name" required>
    </div>
    <div class="form-group">
        <label class="form-label">Description</label>
        <textarea name="description" class="form-control">{{$category->description}}</textarea>        
    </div>
    <input type="submit" value="Update" class="btn btn-outline-warning  my-3">
</form>
    
@endsection