@extends('home')
@section('contenu')
<div class="container content">
    <h1 class="mb-2">Add a Category </h1>
    <div class="row mt-2">
    <form method="POST" action="{{ route('category.store') }}">
      <div class="col-sm-12">
        @if(session()->get('errors'))
        <div class="alert alert-warning">
        @foreach (session()->get('errors')->all() as $item)      
          {{ $item }}       
        @endforeach
      </div>
        @endif
      </div>
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
              <input required minlength="2" maxlength="20" type="text" name="name" class="form-control" 
              id="inlineFormInputGroup" placeholder="Category name">
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