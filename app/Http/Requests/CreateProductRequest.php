<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreateProductRequest extends FormRequest
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
            'title' => 'required|string|max:255',
            'description' => 'required|string',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'price' => 'required|numeric',
        ];
    }

    public function messages() {
        return [
            'title.required' => 'The title is required?',
            'title.max' => 'The title may not be greater than :max characters.',
            'description.required' => 'The description is required?',
            'image.required' => 'The image is required?',
            'image.image' => 'The image must be a valid image.',
            'price.required' => 'The price is required?',
            'price.numeric' => 'The price must be a valid number.',
        ];
    }
}
