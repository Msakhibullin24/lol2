<?php

namespace App;
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class File extends Model
{
    use HasFactory;
	use SoftDeletes;
	
	protected $fillable = [
      'title'
    ];

    public function user()
    {
      return $this->belongsTo(User::class);
    }

    public function order()
    {
      return $this->belongsTo(Order::class);
    }
}
