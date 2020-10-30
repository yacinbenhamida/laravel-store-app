<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserProduct;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $request)
    {
        $all = UserProduct::where('user_id',$request->user()->id)->get();
        return view('home',['prods'=>$all]);
    }
}
