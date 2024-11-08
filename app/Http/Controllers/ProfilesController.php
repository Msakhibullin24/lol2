<?php

namespace App\Http\Controllers;

use Auth;
use Illuminate\Http\Request;
use App\Models\Profiles;

class ProfilesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->get();
			foreach ($profiles as &$value) {
				if($value->type == 0){
					$value->fio_name = $value->fio.' '.$value->fio_name.' '.$value->fio_otch;
				}elseif($value->type == 1){
					$value->fio_name = $value->ur_name;
				}elseif($value->type == 2){
					$value->fio_name = $value->ur_name;
				}

			}
			return view('profiles.list', compact('profiles'));
		} else {
			return view('danger');
		}
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
		if($this->danger){
			$redirect=(isset($_GET['redirect']))?$_GET['redirect']:'0';
			return view('profiles.create',['redirect'=>$redirect]);
		} else {
			return view('danger');
		}
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
		if($request->type=='fl'){
			$profiles = Profiles::create([
				'user_id' => Auth::user()->id,
				'type' => 0,
				'fio' => $request->fio,
				'fio_name' => $request->fio_name,
				'fio_otch' => $request->fio_otch,
				'inn' => $request->inn,
				'snils' => $request->snils,
				'grazhd' => $request->grazhd,
				'passport' => $request->passport,
				'address' => $request->address,
				'phone' => $request->phone,
				'email' => $request->email
			]);
		} else if ($request->type=='ip'){
			$profiles = Profiles::create([
				'user_id' => Auth::user()->id,
				'type' => 1,
				'ur_name' => $request->ur_name,
				'inn_kpp' => $request->inn_kpp,
				'ogrn_ogrnip' => $request->ogrn_ogrnip,
				'ur_address' => $request->ur_address,
				'phone' => $request->phone,
				'email' => $request->email
			]);
		} else if ($request->type=='ul'){
			$profiles = Profiles::create([
				'user_id' => Auth::user()->id,
				'type' => 2,
				'ur_name' => $request->ur_name,
				'inn_kpp' => $request->inn_kpp,
				'ogrn_ogrnip' => $request->ogrn_ogrnip,
				'ur_address' => $request->ur_address,
				'phone' => $request->phone,
				'email' => $request->email
			]);
		}

		if (isset($request->redirect) and $request->redirect!='0') {
			return redirect()->route('orders.create.'.$request->redirect);
		}
		
        if ($profiles) {
            return redirect()->route('profiles.index');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
		if($this->danger){
			$profiles = Profiles::where('user_id', Auth::user()->id)
								->where('id', $id)->first();

			return view('profiles.show', compact('profiles'));
		} else {
			return view('danger');
		}
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, Profiles $profiles)
    {		
		$profiles = Profiles::where('id', $request->id)->first();
		if($request->type=='0'){
			$profiles['fio'] = $request->fio;
			$profiles['fio_name'] = $request->fio_name;
			$profiles['fio_otch'] = $request->fio_otch;
			$profiles['inn'] = $request->inn;
			$profiles['snils'] = $request->snils;
			$profiles['grazhd'] = $request->grazhd;
			$profiles['passport'] = $request->passport;
			$profiles['address'] = $request->address;
			$profiles['phone'] = $request->phone;
			$profiles['email'] = $request->email;
			$profiles->save();
		} else {
			$profiles['ur_name'] = $request->ur_name;
			$profiles['ur_address'] = $request->ur_address;
			$profiles['inn_kpp'] = $request->inn_kpp;
			$profiles['ogrn_ogrnip'] = $request->ogrn_ogrnip;
			$profiles['phone'] = $request->phone;
			$profiles['email'] = $request->email;
			$profiles->save();
		}
        return redirect()->route('profiles.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
