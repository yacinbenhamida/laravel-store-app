@extends('home')
@section('contenu')
    <h1>Products list</h1>
    <div class="row">
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

<div class="col-md-12">
        <table class="table  table-sm">
          <thead>
            <th> 
              category
            </th>
            <th>
              products
            </th>
          </thead>
          <tbody>
          @foreach($products->groupBy('category_id') as $salesperson)
              <tr>
                  <th >{{ $salesperson[0]->category->name }}</th>
                  <td>
                  @foreach($salesperson as $item)
                  <span class="badge badge-pill badge-primary">{{ $item['name'] }}</span>
                  @endforeach
                </td>
              </tr>
          @endforeach
          </tbody>
        </table>
</div>
</div>
@endsection