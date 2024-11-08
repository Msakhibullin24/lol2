<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use App\Models\Settings;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

	public $danger; 
	public function __construct(){
		$this->danger = filter_var(Settings::where('name','=', 'danger')->first()->value, FILTER_VALIDATE_BOOLEAN);
	}
	
	public function index()
	{
		return view('dashboard');
	}
	
}
