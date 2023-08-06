@extends('layouts.test')

@section('content')

<h1>Create SubCategory</h1>

{{-- <form action="{{route('subcategory.store')}}" method="post"> --}}
    {{ html()->form('post', route("subcategory.store"))->open() }}
    @csrf
    @include('subcategory.form')
    <input type="submit" value="Insert" class="btn btn-outline-primary my-3">
</form>
    
@endsection