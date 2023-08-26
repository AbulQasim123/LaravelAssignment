<?php

namespace App\Http\Controllers;

use App\Models\ProductModel;
use Illuminate\Http\Request;
use App\Imports\ProductImport;
use App\Exports\ProductsExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;
use Yajra\DataTables\Facades\DataTables;
use App\Http\Requests\EditProductRequest;
use App\Http\Requests\CreateProductRequest;

class ProductController extends Controller
{
    // Get Products
    public function getProducts(Request $request)
    {
        $products = ProductModel::select(['id', 'title', 'description', 'price'])->orderByDesc('id')->get();
        return DataTables::of($products)
            ->addColumn('action', function ($product) {
                return '<button class="btn btn-sm btn-info edit-btn" data-id="' . $product->id . '"><i class="bi bi-pencil"></i></button> ' .
                    '<button class="btn btn-sm btn-danger delete-btn" data-id="' . $product->id . '"><i class="bi bi-trash"></i></button>';
            })
            ->rawColumns(['action'])
            ->make(true);
    }

    public function create()
    {
        //
    }

    // Store Product
    public function store(Request $request)
    {
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->storeAs('public', $imageName);

            $product = ProductModel::create([
                'title' => $request->input('title'),
                'description' => $request->input('description'),
                'image' => $imageName,
                'price' => $request->input('price'),
            ]);

            return response()->json([
                'status' => true,
                'message' => 'Product added successfully',
            ]);
        }
    }


    public function show(string $id)
    {
        //
    }

    // Show Product
    public function edit(ProductModel $product)
    {
        return response()->json([
            'data' => $product,
        ]);
    }

    // Update Product
    public function update(Request $request, ProductModel $product)
    {
        $formData = $request->all();
        dd($formData['title']);
        
        $product->id = $formData['editId'];
        $product->title = $formData['title'];
        $product->description = $formData['editDescription'];
        $product->price = $formData['editPrice'];

        if ($request->hasFile('editImage')) {
            Storage::disk('public')->delete($product->image);
            $extension = $request->file('editImage')->getClientOriginalExtension();
            $filename = time() . '.' . $extension;
            $imagePath = $request->file('image')->storeAs('product_images', $filename, 'public');
            $product->image = $imagePath;
        }

        $product->save();

        return response()->json(['message' => 'Product updated successfully']);
    }

    // Detele Product
    public function destroy(ProductModel $product)
    {
        try {
            $product->delete();
            return response()->json(['message' => 'Product deleted successfully']);
        } catch (\Exception $e) {
            return response()->json(['message' => 'Error deleting product'], 500);
        }
    }

    // Export products
    public function exportProducts()
    {
        return Excel::download(new ProductsExport, 'products.xlsx');
        return redirect()->back();
    }

    // Import products
    public function importProducts(Request $request)
    {
        $request->validate([
            'file' => 'required|mimes:csv,xls,xlsx',
        ]);
        $file = $request->file('file');
        Excel::import(new ProductImport, $file);
        return redirect()->back()->with('success', 'Products imported successfully.');
    }
}
