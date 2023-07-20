@extends('layouts.test')

@section('content')

<h1>Create Categoru</h1>

<form action="{{route('category.store')}}" method="post">
    @csrf
    <div class="form-group">
        <label class="form-label">Name</label>
        <input type="text" class="form-control" name="name" placeholder="Cat name" required>
    </div>
    <div class="form-group">
        <label class="form-label">Description</label>
        <textarea name="description" class="form-control"></textarea>        
    </div>
    <input type="submit" value="Insert">
</form>
    
@endsection