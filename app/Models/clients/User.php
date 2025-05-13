<?php

namespace App\Models\clients;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Facades\DB;


class User extends Model
{
    use HasFactory;

    protected $table = "tbl_users";

    public function getUser($id){
        $user = DB::table($this->table)
        ->where('userId', $id)->first();
        return $user;
    }

    public function getUserId($username){
        return DB::table($this->table)
        ->select('userId')
        ->where('username', $username)->value('userId');
    }

    public function updateUser($id, $data)
    {
        $update = DB::table($this->table)
            ->where('userid', $id)
            ->update($data);

        return $update;
    }

}
