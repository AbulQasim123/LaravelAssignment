<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class EditProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
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
            'editTitle' => 'required|string|max:255',
            'editDescription' => 'required|string',
            'editImage' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'editPrice' => 'required|numeric',
        ];
    }

    public function messages()
    {
        return [
            'editTitle.required' => 'The title is required?',
            'editTitle.max' => 'The title may not be greater than :max characters.',
            'editDescription.required' => 'The description is required?',
            'editImage.required' => 'The image is required?',
            'editImage.image' => 'The image must be a valid image.',
            'editPrice.required' => 'The price is required?',
            'editPrice.numeric' => 'The price must be a valid number.',
        ];
    }
}
