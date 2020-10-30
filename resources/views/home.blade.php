@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="card">
                <div class="card-header">{{ __('Welcome') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    <!-- custom menu-->
                    <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Categories
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('category.create') }}">Add</a>
                            <a class="dropdown-item" href="{{ route('category.index') }}">List</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Products
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="{{ route('product.create') }}">Add</a>
                            <a class="dropdown-item" href="{{ route('product.index') }}">List</a>
                            </div>
                        </li>
                        </ul>
                    </div>
                    </nav>
                    <div class="col-md-12 mt-4">
                        @yield('contenu')
                    </div>
                    <div class="ml-5 mr-5">
                    @if (isset($prods) && count($prods))
                    <h1>Shopping cart</h1>
                    <div class="col-md-12">
                    <table class="table table-bordered table-sm">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">category</th>
                            <th scope="col">Date</th>
                          </tr>
                        </thead>
                        <tbody>
                          @foreach($prods as $prod)
                          <tr>
                            <td>{{$prod->id}}</td>
                            <td>{{$prod->product->name}}</td>
                            <td><span class="badge badge-pill badge-primary">
                                {{$prod->product->category->name}} </span>
                            <td>{{$prod->created_at}}</td>
                          </tr>
                          @endforeach
                        </tbody>
                        
                      </table>
                    </div>
                    @endif
                    </div>
                    
                </div>
                
            </div>
        </div>
        
    </div>
</div>
@endsection
