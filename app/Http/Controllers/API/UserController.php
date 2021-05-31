<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Services\UserAuthService;
use App\Services\UserService;
use Illuminate\Http\Request;

class UserController extends Controller
{
    protected $user_service;

    public function __construct(UserService $user_service)
    {
        $this->user_service = $user_service;
    }

    public function getAllUser()
    {
        $result = $this->user_service->UserList();

        return response()->json(['data' => $result]);
    }
}
