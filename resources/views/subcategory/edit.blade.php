@extends('layouts.test')

@section('content')

<div class="d-flex justify-content-between">
    {{-- {{dd(Auth::user())}} --}}
    <h1>Edit Subcategories</h1>
    <a style="font-size: 2em" href="javascript:history.back()"><i class="bi bi-backspace"></i></a>
</div>

{{ html()->modelForm($subcategory,'post', route("subcategory.update",$subcategory->id))->open() }}
    @csrf
    @method("put")
    @include('subcategory.form')
    <input type="submit" value="Update" class="btn btn-outline-primary my-3">
</form>
    
@endsection