@extends('layouts.test')

@section('sidebar')
<ul>
    <li><a href="#">Google</a></li>
    <li><a href="#">FB</a></li>
    <li><a href="#">ChatGPT</a></li>
    <li><a href="#">Google</a></li>
    <li><a href="#">FB</a></li>
    <li><a href="#">ChatGPT</a></li>
    <li><a href="#">Google</a></li>
    <li><a href="#">FB</a></li>
    <li><a href="#">ChatGPT</a></li>
</ul>
    
@endsection

@section('content')
<h1 id="mainh1">welcome to home page</h1>
<h1>My User List</h1>
    @foreach ($users as $user)
        <li>{{$user->name}} - {{$user->email}} - {{$user->role=="2"?"Admin":"User"}}</li>
    @endforeach
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