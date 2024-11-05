<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Writer;

class WriterSeeder extends Seeder
{
    
    public function run(): void
    {
        // Writer::create([
        //     'name' => 'Bia Mika Annisa',
        //     'bio' => 'Spesialis Data Science',
        //     'writer_image' => asset('assets/datascience_writer_image.png'),

        // ]);

        // Writer::create([
        //     'name' => 'Abi Firmansyah',
        //     'bio' => 'Spesialis Network Security',
        //     'writer_image' => asset('assets/network_writer_image.png'),

        // ]);

        Writer::where('name', 'Bia Mika Annisa')->update([
            'writer_image' => 'http://localhost:8000/assets/datascience_writer_image.png',
        ]);


        Writer::where('name', 'Abi Firmansyah')->update([
            'writer_image' => 'http://localhost:8000/assets/network_writer_image.png',
        ]);
    }
}
