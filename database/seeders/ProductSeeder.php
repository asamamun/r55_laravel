<?php

namespace Database\Seeders;

use App\Models\Product;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Generator as faker;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(Faker $faker): void
    {
        // $faker = $this->withFaker();
        for ($i=0; $i <100 ; $i++) { 
            Product::insert([
                'category_id'=>rand(1,8),
                'subcategory_id'=>rand(1,25),
                'name' => $faker->word(10),
                'sku' => date('Ys').$faker->unique()->word,
                'details' => $faker->text,
                'price' => $faker->randomDigit,
                'quantity' => $faker->randomDigit
            ]);
    }
}
}
