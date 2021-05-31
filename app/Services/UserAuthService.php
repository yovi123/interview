<?php

namespace App\Services;

use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Hash;

/**
 * User Auth Service
 */
class UserAuthService
{
    protected $user_repo;

    public function __construct(UserRepository $user_repo)
    {
        $this->user_repo = $user_repo;
    }

    public function register(array $data)
    {
        $result = $this->user_repo->create($data);
        return $result;
    }

    public function login(array $array)
    {
        $response = [];
        $record =  $this->user_repo->checkLoginCred($array);
        if (!empty($record)) {
            $check_password = Hash::check($array['password'], $record['password']);
            if ($check_password) {
                $response = $record;
            }
        }

        return $response;
    }
}