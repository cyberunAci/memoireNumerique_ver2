<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoleModel extends Model
{

    protected $table = "roles";
    protected $fillable = [
        'role'
    ];
    public $timestamps = false;

    function users()
    {
        return $this->hasMany(User::class, 'id_role');
    }
}
