<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Services\UserAuthService;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

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
    protected $auth_service;
    
    public function __construct(UserAuthService $auth_service)
    {
        $this->middleware('guest')->except('logout');

        $this->auth_service = $auth_service;
    }

    // public function login(Request $request)
    // {
    //     $this->validateLogin($request);

    //     $data = $request->all();

    //     if (method_exists($this, 'hasTooManyLoginAttempts') &&
    //         $this->hasTooManyLoginAttempts($request)) {
    //         $this->fireLockoutEvent($request);

    //         return $this->sendLockoutResponse($request);
    //     }


    //     $login_attempt = $this->auth_service->login($data);

    //     if ($this->attemptLogin($request)) {
    //         return $this->sendLoginResponse($request);
    //     }

    //     // if ($login_attempt) {
            
    //     //     $data = [
    //     //         'success' => true,
    //     //         'code' => 200,
    //     //         'message' => 'success'
    //     //     ];

    //     //     // return $this->sendLoginResponse($request);

    //     // }else{
    //     //     $data = [
    //     //         'success' => false,
    //     //         'code' => 200,
    //     //         'message' => 'Credentail does not matched.'
    //     //     ];
    //     // }
        
    //     $this->incrementLoginAttempts($request);

    //     return $this->sendFailedLoginResponse($request);

    //     // return response()->json($data);
    // }

    // protected function attemptLogin(Request $request)
    // {
    //     return $this->guard()->attempt(
    //         $this->credentials($request), $request->filled('remember')
    //     );
    // }

    // protected function validateLogin(Request $request)
    // {
    //     $request->validate([
    //         $this->username() => 'required|string',
    //         'password' => 'required|string',
    //     ]);
    // }
}
