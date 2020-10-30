@extends('home')
@section('contenu')
<div class="container content">
    <h1 class="mb-2">Add a product </h1>
    <div class="row mt-2">
    <form method="POST" action="{{ route('product.store') }}">
        <div class="col-sm-12">
            @if(session()->get('success'))
              <div class="alert alert-success">
                {{ session()->get('success') }}  
              </div>
            @endif
          </div>
        <div class="row">
          <div class="col-md-6">
            <label class="sr-only" for="inlineFormInputGroup">Product name</label>
            <div class="input-group mb-2">
              <div class="input-group-prepend">
                <div class="input-group-text">Product</div>
              </div>

              <input type="text" name="name" class="form-control"  id="inlineFormInputGroup"
                placeholder="Product name">
            </div>
          </div>
          <div class="col-md-4">
            <div class="input-group mb-3">
                <div class="input-group-prepend">
                  <label class="input-group-text" for="inputGroupSelect01">Category</label>
                </div>
                <select name="cat_id" class="custom-select" id="inputGroupSelect01">
                  <option selected>Choose...</option>
                  @foreach ($categories as $cat)
                    <option value="{{$cat->id}}">{{$cat->name}}</option>
                  @endforeach
                </select>
              </div>
              <input name="_token" type="hidden" value="{{ csrf_token() }}">
          </div>
          <div class="col-md-2">
            <button type="submit" class="btn btn-primary mb-2">OK</button>
          </div>
        </div>
      </form>
    </div>
</div>
@endsection