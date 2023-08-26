<?php

namespace Database\Seeders;

use App\Models\ProductModel;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class ProductModelSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run()
    {
        ProductModel::factory()->count(200)->create();
    }
}
