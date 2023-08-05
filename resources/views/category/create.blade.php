@extends('layouts.test')

@section('content')

<h1>Create Category</h1>

<form action="{{route('category.store')}}" method="post">
    @csrf
    <div class="form-group">
        <label class="form-label">Name</label>
        <input type="text" class="form-control" name="name" placeholder="Cat name" value="{{old("name")}}">
    </div>
    <div class="form-group" >
        <label class="form-label">Description</label>
        <textarea name="description" class="form-control">{{old('description')}}</textarea>        
    </div>
    <input type="submit" value="Insert" class="btn btn-outline-primary my-3">
</form>
    
@endsection