@extends('home')
@section('contenu')
<div class="container content">
    <h1 class="mb-2">Edit the category </h1>
    <div class="row mt-2">
    <form method="POST" action="{{ route('category.update',$cat->id) }}">
        @method('PATCH') 
        @csrf
        <div class="col-sm-12">
            @if(session()->get('success'))
              <div class="alert alert-success">
                {{ session()->get('success') }}  
              </div>
            @endif
          </div>
        <div class="form-row align-items-center">
          <div class="col-md-8">
            <label class="sr-only" for="inlineFormInputGroup">Category name</label>
            <div class="input-group mb-2">
              <div class="input-group-prepend">
                <div class="input-group-text">Category</div>
              </div>
              <input type="text" name="name" class="form-control"  required
              minlength="2" maxlength="20"
              id="inlineFormInputGroup" placeholder="Category name" value={{ $cat->name }}>
              <input name="_token" type="hidden" value="{{ csrf_token() }}">
            </div>
          </div>
          <div class="col-md-4">
            <button type="submit" class="btn btn-primary mb-2">OK</button>
          </div>
        </div>
      </form>
    </div>
</div>
@endsection