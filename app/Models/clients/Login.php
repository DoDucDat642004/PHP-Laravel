<?php

namespace App\Models\clients;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;


class Login extends Model
{
    use HasFactory;

    protected $table = 'tbl_users';

    public function registerAccount($data): bool{
        return DB::table($this->table)->insert($data);
    }

    public function checkUserExist($username, $email) : bool{
        $check = DB::table(($this->table))
        ->where('username', $username)
        ->orWhere('email', $email)
        ->exists();

        return $check;
    }

    public function getUserByToken($token)
    {
        return DB::table($this->table)->where('activation_token', $token)->first();
    }

    // Cập nhật thông tin kích hoạt tài khoản
    public function activateUserAccount($token)
    {
        return DB::table($this->table)
            ->where('activation_token', $token)
            ->update(['activation_token' => null, 'isActive' => 'y']);
    }
}
