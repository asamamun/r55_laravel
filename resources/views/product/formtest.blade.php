@extends('layouts.test')

@section('content')

<h1>testing html() form elements</h1>
<hr>
{{ html()->text('username') }} <br> {{ html()->email('email')}}
<hr>
{{ html()->textarea('userdetails') }}
<hr>

    
@endsection