<div class="form-group">
    <label class="form-label">Category</label>
    {!! html()->select('category_id',$categories,old('category_id'))->class('form-select')->placeholder("Select....") !!}
</div>
<div class="form-group">
    <label class="form-label">Name</label>
    {{-- <input type="text" class="form-control" name="name" placeholder="Cat name" value="{{old("name")}}"> --}}
    {!! html()->text('name',old('name'))->class('form-control')->placeholder("subcategory name")->attributes(['maxlength'=>'255']) !!}
</div>