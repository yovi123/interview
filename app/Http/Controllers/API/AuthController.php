<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Services\UserAuthService;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\User;
use Illuminate\Auth\Events\Registered;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;

class AuthController extends Controller
{
    //
    use RegistersUsers;

    protected $auth_service;

    public function __construct(UserAuthService $auth_service)
    {
        $this->middleware('guest');

        $this->auth_service = $auth_service;
    }

    /**
     * Register API
     * 
     */
    public function register(Request $request)
    {
        $this->validator($request->all())->validate();

        event(new Registered($user = $this->create($request->all())));

        $user_data = new User;
        $user_data->name = $user['name'];
        $user_data->email = $user['email'];

        $this->guard()->login($user_data);

        $accessToken = $user->createToken('authToken')->accessToken;

        return response()->json(['user' => $user, 'access_token' => $accessToken]);
    }

     /**
     * Register API Validation
     * 
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

     /**
     * Register API inseration
     * 
     */
    protected function create(array $data)
    {
        return $this->auth_service->register($data);
    }

     /**
     * Login API
     * 
     */
    public function login(Request $request)
    {
        $loginData = $request->validate([
            'email' => 'email|required',
            'password' => 'required'
        ]);
        
        if (!auth()->attempt($loginData)) {
            return response()->json(['message' => 'Invalid Credentials']);
        }

        $user_data = new User;
        
        $user_data->name = auth()->user()->name;
        $user_data->email = auth()->user()->email;
        

        $accessToken = auth()->user()->createToken('authToken')->accessToken;

        session(['name' => $user_data->name, 'email' => $user_data->email, 'token' => $accessToken]);

        return response()->json(['user' => auth()->user(), 'access_token' => $accessToken]);

    }

     /**
     * Login API validation
     * 
     */
    protected function validateLogin(Request $request)
    {
        $request->validate([
            $this->username() => 'required|string',
            'password' => 'required|string',
        ]);
    }
}
