<?php

namespace App;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class User_model extends Model
{
    // kategori
    public function login($username,$password)
    {
        $query = DB::table('users')
            ->select('*')
            ->where(array(  'users.username'	=> $username,
                            'users.password'    => md5($password)))
            ->orderBy('id_user','DESC')
            ->first();
        return $query;
    }
}
