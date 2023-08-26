<?php

namespace App\Imports;

use GuzzleHttp\Client;
use Illuminate\Support\Str;
use App\Models\ProductModel;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Storage;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\Importable;
use Maatwebsite\Excel\Concerns\SkipsErrors;
use Maatwebsite\Excel\Concerns\SkipsOnError;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class ProductImport implements ToModel, WithHeadingRow,SkipsOnError
{
    use Importable, SkipsErrors;
    public function model(array $row)
    {
        $imageFilename = $row['image'];
        return new ProductModel([
            'title' => $row['title'],
            'description' => $row['description'],
            'image' => $imageFilename,
            'price' => $row['price'],
        ]);
    }
    // public function model(array $row)
    // {
    //     if (!isset($row['title']) || !isset($row['description']) || !isset($row['image'])) {
    //         $this->addError('Incomplete data', $row['title']);
    //         return null;
    //     }

    //     return new ProductModel([
    //         'title' => $row['title'],
    //         'description' => $row['description'],
    //         'image' => $row['image'],
    //         'price' => isset($row['price']) ? $row['price'] : null,
    //     ]);
    // }
}
