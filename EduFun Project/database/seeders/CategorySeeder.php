<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Category;

class CategorySeeder extends Seeder
{
    
    public function run(): void
    {
        Category::create([
            'name' => 'Data Science',
            'slug' => 'data-science',
        ]);


        Category::create([
            'name' => 'Network Security',
            'slug' => 'network-security',
        ]);

    }
}
