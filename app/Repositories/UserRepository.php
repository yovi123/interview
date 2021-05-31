<?php

namespace App\Repositories;

use App\User;
use Illuminate\Support\Facades\Hash;

class UserRepository implements RepositoryInterface
{
   
    protected $model;

    public function __construct(User $user)
    {
        $this->model = $user;
    }

    public function create($data)
    {
        return User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }

    public function checkLoginCred($data)
    {
        return User::where(['email' => $data['email']])->first();

    }

    public function getAll()
    {
        return User::all();
    }
}