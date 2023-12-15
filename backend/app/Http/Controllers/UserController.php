<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;

class UserController extends Controller
{

    function login(Request $request)
    {
        $request->validate([
            "email" => "required|email|exists:users,email",
            "password" => "required|min:8"
        ]);

        $infoLogin = [
            "email" => $request->email,
            "password" => $request->password
        ];

        if (Auth::attempt($infoLogin)) {
            toastr()->success('Login berhasil');
            return redirect('/');
        } else {
            toastr()->error('Username dan password tidak valid');
            return back();
        }
    }

    function register(Request $request)
    {
        $request->validate([
            "name" => "required|string",
            "email" => "required|email|unique:users",
            "password" => "required|min:8",
            "confirm_password" => "required|min:8|same:password"
        ]);

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'role' => $request->role,
            'password' => $request->password,
            'email_verified_at' => now(),
            'remember_token' => Str::random(10),
        ]);

        $infoLogin = [
            'email' => $request->email,
            'password' => $request->password
        ];

        if (Auth::attempt($infoLogin)) {
            toastr()->success('Registrasi dan login berhasil');
            return redirect('/');
        } else {
            return back();
        }
    }

    function logout()
    {
        Auth::logout();
        toastr()->success('Berhasil Logout');
        return redirect('/');
    }
}