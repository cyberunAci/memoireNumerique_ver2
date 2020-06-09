<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Media_TypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $array = [
            [
                'type' => 'Video',
            ],
            [
                'type' => 'Article',
            ],
            [
                'type' => 'Image',
            ],
        ];
        DB::table('mediatype')->insert(
            $array
        );
    }
}
