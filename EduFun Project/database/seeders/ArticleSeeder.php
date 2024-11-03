<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Article;
use App\Models\Category;
use App\Models\Writer;
use Faker\Factory as Faker;

class ArticleSeeder extends Seeder
{
        public function run(): void
    {
        $faker = Faker::create('id_ID');

        $dataScienceCategory = Category::where('slug','data-science')->first();
        $networkSecurityCategory = Category::where('slug','network-security')->first();

        $dataScienceWriter = Writer::where('name','Bia Mika Annisa')->first();
        $networkSecurityWriter = Writer::where('name','Abi Firmansyah')->first();

        $dataScienceArticle = [
            'Machine Learning',
            'Deep Learning',
            'Natural Language Processing',
        ];

        foreach($dataScienceArticle as $title){
            Article::create([
                'title' => $title,
                'category_id' => $dataScienceCategory->id,
                'writer_id' =>$dataScienceWriter->id,
                'content' => $this->generateContent($faker, 6),
                'post_date' => $faker->date(),
                'views' => $faker->numberBetween(0,100),
                'article_image' =>  $faker->imageUrl(640, 480, 'technics'),
            ]);
        }

        $networkSecurityArticle = [
            'Software Security',
            'Network Administration',
            'Popular Network Technology',
        ];

        foreach($networkSecurityArticle as $title){
            Article::create([
                'title' => $title,
                'category_id' => $networkSecurityCategory->id,
                'writer_id' =>$networkSecurityWriter->id,
                'content' => $this->generateContent($faker, 6),
                'post_date' => $faker->date(),
                'views' => $faker->numberBetween(0,100),
                'article_image' => $faker->imageUrl(640, 480, 'technics'),
            ]);
        }
    }

    private function generateContent($faker, $paragraphCount)
    {
        $content = '';
        for ($i = 0; $i < $paragraphCount; $i++) {
            $content .=  $faker->paragraph;
        }
        return $content;
    }
}
