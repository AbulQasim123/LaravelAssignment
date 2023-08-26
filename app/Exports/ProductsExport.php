<?php

namespace App\Exports;

use App\Models\ProductModel;
use Maatwebsite\Excel\Concerns\Exportable;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;

class ProductsExport implements FromCollection, WithHeadings
{
    use Exportable;
    public function collection()
    {
        return ProductModel::select('id', 'title', 'description', 'price')->get();
    }
    public function headings():array
    {
        return [
            'ID', 'Title', 'Description', 'Price'
        ];
    }
}
