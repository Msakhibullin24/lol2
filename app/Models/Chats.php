<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chats extends Model
{
    use HasFactory;	 
	protected $table = 'bot_chat';

    protected $fillable = [
        'id',
        'username',
        'status_chat'
    ];
}
