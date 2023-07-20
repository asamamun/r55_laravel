@extends('layouts.test')

@section('content')

<label for="">ID</label>
<strong>{{$cat->id}}</strong> <br>
<label for="">Name</label>
<strong>{{$cat->name}}</strong> <br>
<label for="">Description</label>
<strong>{{$cat->description}}</strong> <br>
<label for="">Create Time</label>
<strong>{{$cat->created_at}}</strong> <br>
    
@endsection