<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Http;

class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
    public function getUserInfo($req){
        $email = $req->email;
        $password = $req->password;
        $login = $req->validate([
            'email' => 'required|string',
            'password' => 'required|string'
        ]);
        if(!auth()->attempt($login)){
            return array("status" => 0, "message" => "This User Do No Exist");
        }

        $user = auth()->user();
        return array("status" => 1, "user" => $user, "accessToken" => $user->createToken('authToken')->accessToken);
    }
    public function loginAPI(Request $req){
        $result = $this->getUserInfo($req);
        if($result["status"] == 0){
            return response($result["message"]);
        }
        return response(["user" => $result["user"], "access_token" => $result["accessToken"]]);
    }
    public function getbeers(Request $req){
        $result = $this->getUserInfo($req);
        if($result["status"] == 0){
            return response($result["message"]);
        }
        
        $current_page = $req->page ?? 1;
        $per_page = $req->per_page ?? 5;

        $response = Http::withHeaders([
            'Authorization' => 'Bearer '.$result["accessToken"],
            'Accept' => 'application/json',
        ])->get(url("/").'/api/beers', [
            'page' => $current_page,
            'per_page' => $per_page,
        ]);
        return response(json_decode($response));
    }  
    

}
