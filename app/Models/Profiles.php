<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profiles extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'type', 	// физ.лицо, ИП, юрлицо (0,1,2)
        'fio',
        'fio_name',
        'fio_otch',
        'inn',
        'snils',
        'grazhd',
        'passport',
        'address',
        'ur_name',
        'ur_address',
        'inn_kpp',
        'ogrn_ogrnip',
        'phone',
        'email'
    ];
}
