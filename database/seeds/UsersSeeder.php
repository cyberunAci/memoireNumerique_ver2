<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UsersSeeder extends Seeder
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
                'id' => 1,
                'name' => 'admin',
                'email' => 'admin.admin@gmail.com',
                'password' => bcrypt('admin'),
                "id_role"=>1,
            ],
            [
                'id' => 2,
                "name" => "Pierre",
                "email"=>"pierre@user.com",
                "password"=> bcrypt('user'),
                "id_role"=>2,
            ],      
        ];

        DB::table('users')->insert(
            $array
        );
    
    }
}
