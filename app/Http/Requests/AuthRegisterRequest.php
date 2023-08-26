<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class AuthRegisterRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules()
    {
        return [
            'register_name' => 'required|string|max:255',
            'register_email' => 'required|email|unique:users,email',
            'register_password' => 'required|string|min:8|confirmed',
            'password_confirmation' => 'required|string|min:8',
        ];
    }
    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'success'   => false,
            'message'   => 'Validation errors',
            'data'      => $validator->errors()
        ]));
    }
    public function messages()
    {
        return [
            'register_name.required' => 'The name is required?',
            'register_name.max' => 'The name may not be greater than :max characters.',
            'register_email.required' => 'The email is required?',
            'register_email.email' => 'The email must be a valid email address.',
            'register_email.unique' => 'The email has already been taken.',
            'register_password.required' => 'The password is required?',
            'register_password.min' => 'The password must be at least :min characters.',
            'register_password.confirmed' => 'The password confirmation does not match.',
            'password_confirmation.required' => 'The Confirm Password is required?',
            'password_confirmation.min' => 'The password must be at least :min characters.',
        ];
    }
}
