<?php

namespace App\Services;

use App\Repositories\UserRepository;
use Illuminate\Support\Facades\Hash;

/**
 * User Service
 */
class UserService
{
    protected $user_repo;

    public function __construct(UserRepository $user_repo)
    {
        $this->user_repo = $user_repo;
    }

    public function UserList()
    {
        return $this->user_repo->getAll();
    }
}