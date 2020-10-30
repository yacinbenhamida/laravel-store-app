@extends('home')
@section('contenu')
    <h1>Product Categories</h1>
    <div class="container content">
      @if ($errors->any())
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
        <br /> 
        @endif
        <div class="col-sm-12">

          @if(session()->get('success'))
            <div class="alert alert-success">
              {{ session()->get('success') }}  
            </div>
          @endif
        </div>
<table class="table table-sm">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Created at</th>
      <th scope="col">Updated at</th>
      <th scope="col">action </th>
    </tr>
  </thead>
  <tbody>
  @foreach($categories as $cat)
    <tr>
      <th scope="row">{{$cat->id}}</th>
      <td>{{$cat->name}}</td>
      <td>{{$cat->created_at}}</td>
      <td>{{$cat->updated_at}}</td>
      <td><div class="btn-group mr-2" role="group" aria-label="Second group">
     <form method="post" action="{{ route('category.destroy',$cat->id) }}" >
        @csrf
        @method('DELETE')
        <button type="submit" class="btn btn-sm btn-danger">x</button>
      </form>
        <a href="{{ route('category.edit',$cat->id) }}" class="btn btn-sm btn-warning">edit</a>
      </div></td>
    </tr>
   @endforeach
  </tbody>
</table>
{{$categories->links('pagination::bootstrap-4')}}
</div>
@endsection