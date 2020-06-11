<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Role_seeder extends Seeder
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
                "role" => "admin",
            ],
            [
                "role" => "user",
            ],

        ];
        DB::table('roles')->insert($array);
    }
}