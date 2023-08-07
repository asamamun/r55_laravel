@extends('layouts.test')

@section('content')


    
@endsection

@section('script')
<script>
    $(document).ready(function () {
        let c = new Cart();
        console.table(c.items);
    });
</script>
    
@endsection