<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Http;
use Illuminate\Pagination\Paginator;
use Session;


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
        $this->baseurl = 'https://api.punkapi.com/v2/beers';
    }
    function APICALL($current_page, $per_page){
        $url = $this->baseurl.'?per_page='.$per_page.'&page='.$current_page;
        return Http::get($url);
    }

    public function test(Request $request){
        return response(["user" => 1]);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index(Request $req)
    {
        $current_page = $req->page ?? 1;
        $per_page = 5;

        $response = $this->APICALL($current_page, $per_page);
        if($response->status() == 200){
            $pagination = new Paginator($response->collect(), $per_page, $current_page);
            $pagination->withPath('');

            return view('home', ['beers' => $pagination]);
        }
        
        Session::flash('error', "LAST API CALL HAS A PROBLEM");
        return redirect('home');
    }
    
    public function getBeers(Request $req){
        $current_page = $req->page ?? 1;
        $per_page = $req->per_page ?? 5;
        $response = $this->APICALL($current_page, $per_page);
        if($response->status() == 200){
            return response($response->collect());
        }
        return response("Error during API CALL");
    }
}
