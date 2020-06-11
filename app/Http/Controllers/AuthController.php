<?php

namespace App\Http\Controllers;

use App\Http\Resources\UsersResources;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;

class AuthController extends Controller
{ 
    public function login(Request $request)
    {
        $login = $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string'
        ]);
        if (!Auth::attempt($login)) {
            return response(['message' => 'Login Invalide.']);
        }

        $accessToken = Auth::user()->createToken('authToken')->accessToken;
        return new UsersResources(Auth::user($accessToken), $accessToken);
    }

    public function logout()
    {
        Log::debug('Logout');
        $accessToken = Auth::user()->token();
        $accessToken->revoke();
        return response('Vous êtes déconnecté', 200);
    } 
}
