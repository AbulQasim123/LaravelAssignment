<?php

namespace App\Http\Controllers\API;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\AuthLoginRequest;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\AuthRegisterRequest;


class AuthController extends Controller
{
    // Register user
    public function register(AuthRegisterRequest $request)
    {
        $user = User::create([
            'name' => $request->register_name,
            'email' => $request->register_email,
            'password' => Hash::make($request->register_password),
        ]);

        return response()->json([
            'status' => true,
            'message' => 'User Inserted Successfully.',
            // 'users' => $user
        ]);
    }

    // Login user
    public function login(AuthLoginRequest $request)
    {
        $credentials = $request->only('email', 'password');
        if (!Auth::attempt($credentials)) {
            return response()->json(['status' => false,'message' => 'Invalid credentials']);
        }
        $user = $request->user();
        return response()->json([
            'status' => true,
            'data' => $user
        ]);
    }

    public function dashboard(Request $request)
    {
        dd(auth()->user());
        try {
            return response()->json(['status' => true, 'data' => auth()->user()]);
        } catch (\Exception $th) {
            return response()->json(['status' => false, 'msg' => $th->getMessage()]);
        }
    }

    public function logout()
    {
        try {
            auth()->logout();
            return redirect()->route('login');
        } catch (\Exception $th) {
            return response()->json(['status' => false, 'msg' => $th->getMessage()]);
        }
    }
}
