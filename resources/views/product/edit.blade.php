@extends('layouts.test')

@section('content')
<div class="d-flex justify-content-between">
    <h1>Edit Product</h1>
    <a title="back to index" style="font-size: 2em" href="{{route("product.index")}}"><i class="bi bi-backspace"></i></a>
</div>
<div class="product-form">

    {{-- <form action="{{route("product.store")}}" method="post" enctype="multipart/form-data">
@csrf --}}
{{ html()->modelForm($product,'post', route("product.update",$product->id))->acceptsFiles()->open() }}
@method("put")
@include('product.form')    
    <div class="form-group">
    <button type="submit" class="btn btn-success my-3">Save</button>    
    </div>
</form>
</div>
    
@endsection


@section('script')
<script>
    function decorate_subcat(d){
        console.log(d);
    $h = "<option value='-1'>Select</option>";
        for (const k in d) {
           $h += "<option value='"+k+"'>"+d[k]+"</option>"; 
        }
        $("#subcategory_id").html($h);
    }

    $(document).ready(function () {
       $("#category_id").change(function () {
        let id = $(this).val();
        
        if(id == "-1"){  return;}
        let url = "{{url("getsubcat")}}/"+id;
        // alert(url);
        // alert(id);
        $.get(url,{},function(d){            
            decorate_subcat(d);
        });


       })
    });
</script>
    
@endsection