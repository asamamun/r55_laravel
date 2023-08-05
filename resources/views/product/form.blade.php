<div class="form-group field-product-category_id required has-error">
    <label class="control-label" for="product-category_id">Category ID</label>

{!! html()->select('category_id',$categories,old('category_id'))->class('form-select')->placeholder("Select....") !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-subcategory_id required">
    <label class="control-label" for="product-subcategory_id">Subcategory ID</label>
    {!! html()->select('subcategory_id',$subcategories,null )->class('form-select')->placeholder("select....") !!}
    
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-name required">
    <label class="control-label" for="product-name">Name</label>

    {!! html()->text('name',old('name'))->class('form-control')->attributes(['maxlength'=>'255']) !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-sku required">
    <label class="control-label" for="product-sku">Sku</label>

    {!! html()->text('sku',old('sku'))->class('form-control')->attributes(['maxlength'=>'255'])->required() !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-details required">
    <label class="control-label" for="product-details">Details</label>
    {!! html()->textarea('details',old('details'))->class('form-control')->attributes([])->required() !!}
    <div class="help-block"></div>
    </div>
    <div class="form-group">
        <div class="form-label">Images</div>
        <input type="file" name="images[]" id="images" class="form-control" multiple>
        <hr>
        @if ($product && $product->images)
            @forelse ($product?->images as $img)
               <div class="d-inline-block position-relative p-3">
                <img src="{{asset('storage/'.$img->name)}}" width="100px" alt="" loading="lazy"> 
                <span data-id="{{$img->id}}" style="right:-10px;top:15px"  class="pimage position-absolute translate-middle badge rounded-pill bg-danger" title="delete image">&times;</span>  
            </div> 
            @empty
                
            @endforelse
        @endif
    </div>
        <div class="form-group field-product-price required">
    <label class="control-label" for="product-price">Price</label>
    {!! html()->text('price',old('price'))->class('form-control')->attributes(['min'=>'1'])->placeholder("0.00") !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-quantity required">
    <label class="control-label" for="product-quantity">Quantity</label>

    {!! html()->text('quantity',old('quantity'))->class('form-control')->attributes(['min'=>'1'])->placeholder("1") !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-status">
    <label class="control-label" for="product-status">Status</label>

    {!! html()->select('status',['1'=>"Active",'0'=>"Inactive"],old('status'))->class('form-select')->placeholder("Select....") !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-hot">
    <label class="control-label" for="product-hot">Hot</label>

    {!! html()->select('hot',['1'=>"Hot",'0'=>"Normal"],old('hot'))->class('form-select')->placeholder("Select....") !!}
    <div class="help-block"></div>
    </div>
        <div class="form-group field-product-new">
    <label class="control-label" for="product-new">New</label>

    {!! html()->select('new',['1'=>"New",'0'=>"Normal"],old('new'))->class('form-select')->placeholder("Select....") !!}
    <div class="help-block"></div>
    </div>