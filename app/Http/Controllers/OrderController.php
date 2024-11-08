<?php

namespace App\Http\Controllers;
use Auth;
use App\Models\Profiles;
use App\Models\Order;
use App\Models\Rights;
use App\Models\Payments;
use App\Models\Post;
use App\Models\Advantages;
use App\Models\Textblocks;
use Illuminate\Http\Request;
use LogActivity;

class OrderController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
		if($this->danger){
			$orders = Order::where('user_id', '=', Auth::user()->id)->get();
			foreach ($orders as &$value) {
				if($value->type_order == 0){
					$value->type_order = 'Авторское право на произведение';
				}elseif($value->type_order == 1){
					$value->type_order = 'Регистрация программы для ЭВМ';
				}elseif($value->type_order == 2){
					$value->type_order = 'Регистрация промышленного образца';
				}elseif($value->type_order == 3){
					$value->type_order = 'Регистрация товарного знака';
				}elseif($value->type_order == 4){
					$value->type_order = 'Регистрация изобретения/полезной модели';
				}

				if($value->status == 0){
					$value->status = 'Новая';
				}elseif($value->status == 1){
					$value->status = 'В работе';
				}elseif($value->status == 2){
					$value->status = 'Выполнена';
				}elseif($value->status == 3){
					$value->status = 'Отменена';
				}
			}
			return view('orders.complete', compact('orders'));
		} else {
			return view('danger');
		}
    }

    public function welcome(){
		if($this->danger){
			$blogs = Post::where('status', '=', '1')->orderBy('id', 'desc')->limit(4)->get();
			$textblock = Textblocks::where('id', '=', '1')->get();
			$advantages = Advantages::get();
			foreach ($blogs as &$value) {
				$value->content = strip_tags(mb_substr($value->content, 0, 350));
			}
			return view('welcome', compact('blogs','advantages','textblock'));
		} else {
			return view('danger');
		}
	}

    public function rights(){
		if($this->danger){
			$orders = Order::where('user_id', '=', Auth::user()->id)->get();
			foreach ($orders as &$value) {
				if($value->type_order == 0){
					$value->type_order = 'Авторское право на произведение';
				}elseif($value->type_order == 1){
					$value->type_order = 'Регистрация программы для ЭВМ';
				}elseif($value->type_order == 2){
					$value->type_order = 'Регистрация промышленного образца';
				}elseif($value->type_order == 3){
					$value->type_order = 'Регистрация товарного знака';
				}elseif($value->type_order == 4){
					$value->type_order = 'Регистрация изобретения/полезной модели';
				}

				if($value->status == 0){
					$value->status = 'Новая';
				}elseif($value->status == 1){
					$value->status = 'В работе';
				}elseif($value->status == 2){
					$value->status = 'Выполнена';
				}elseif($value->status == 3){
					$value->status = 'Отменена';
				}
			}
			return view('orders.complete', compact('orders'));
		} else {
			return view('danger');
		}
    }

    public function reestr(){
		if($this->danger){
			$orders = Order::where('status', '=', '2')->get();
			foreach ($orders as &$value) {
				if($value->type_order == 0){
					$value->type_order = 'Авторское право на произведение';
					$value->nazvanie = $value->vidp;
				}elseif($value->type_order == 1){
					$value->type_order = 'Регистрация программы для ЭВМ';
					$value->nazvanie = $value->name_evm;
				}elseif($value->type_order == 2){
					$value->type_order = 'Регистрация промышленного образца';
					$value->nazvanie = $value->name_prom;
				}elseif($value->type_order == 3){
					$value->type_order = 'Регистрация товарного знака';
					$value->nazvanie = $value->slov_oboz;
				}elseif($value->type_order == 3){
					$value->type_order = 'Регистрация изобретения/полезной модели';
					$value->nazvanie = $value->slov_oboz;
				}
			}
			return view('reestr', compact('orders'));
		} else {
			return view('danger');
		}
    }

    public function payments(){
		if($this->danger){
			$payments = \DB::table('payments')
				->leftJoin('orders', 'payments.order_id', '=', 'orders.id')
				->selectRaw('payments.*,orders.type_order')
				->where('payments.user_id', '=',Auth::user()->id)
				->orderBy('id', 'desc')
				->paginate(15);
			foreach ($payments as &$value) {
				if($value->type_order == 0){
					$value->type_order = 'Авторское право на произведение';
				}elseif($value->type_order == 1){
					$value->type_order = 'Регистрация программы для ЭВМ';
				}elseif($value->type_order == 2){
					$value->type_order = 'Регистрация промышленного образца';
				}elseif($value->type_order == 3){
					$value->type_order = 'Регистрация товарного знака';
				}
				$value->email = Auth::user()->email;
			}
			return view('payments', compact('payments'));
		} else {
			return view('danger');
		}
    }

    public function lcs(Request $request){
		if($this->danger){
			$id = rand(999999999999,9999999999999);
			if(($request->auth_id == 0)&&($request->chat_id_support == 0)){
				$bot_chat = \DB::table('bot_chat')->insert(array('id' => $id,'type' => 'private','title' => '','username' => '','first_name' => '','last_name' => '','status_chat' => 0,'msg_type' => 'support'));
			}
			if(($request->auth_id != 0)&&($request->chat_id_support == 0)){
				$bot_chat = \DB::table('bot_chat')->insert(array('id' => $id,'type' => 'private','title' => '','username' => '','first_name' => '','last_name' => '','status_chat' => 0,'msg_type' => 'support'));
				$update_chat = \DB::table('users')->where('id', '=', $request->auth_id)->update(['chat_id_support' => $id]);
			}
			return json_encode(array('id'=>$id,'chat'=>[]));
		} else {
			return view('danger');
		}
    }

    public function sendmessage(Request $request){
		if($this->danger){
			$max_id = \DB::table('bot_message')->max('id');
			$id = $max_id + 1;
			if($request->msg_type == 'tlg'){
				$result = RequestLongman::sendMessage([
					'chat_id' => $request->chat_id,
					'text'    => $request->message,
				]);
			} else if($request->msg_type == 'vk'){
				$token = 'vk1.a.8ewAoBy73btgtjpMn_nnUAc8oMHgnksLB3_6wJhkPy33ZzhlGA_OJz1_kmOMUh4OrqQSvHkaCbg5LBasF0SKc5CToE3UxHJu3S4cQemBK_a8WsB8OzUdprVsQVcNtlosYjjztGkWDN57fpK3kJEZElDeymWt2cWz5LrT01BKcrGpC1GH7xwMtxUeFBsvtq7MRo4GNa7oDO_rt6ephAslTQ';
				$request_params = array(
					'message' => $request->message,
					'peer_id' => $request->chat_id,
					'access_token' => $token,
					'v' => '5.103',
					'random_id' => '0'
				);
				$get_params = http_build_query($request_params);
				file_get_contents('https://api.vk.com/method/messages.send?'. $get_params);
			}
			$messages = \DB::table('bot_message')->insert(array('chat_id' => $request->chat_id,'id' => $id,'text' => $request->message));
			$update_chat = \DB::table('bot_chat')->where('id', '=', $request->chat_id)->update(['status_chat' => 1]);
		} else {
			return view('danger');
		}
    }

    public function load_chat(Request $request){
		if($this->danger){
			$chat = \DB::table('bot_chat')
				->leftJoin('users', 'bot_chat.id', '=', 'users.chat_id_support')
				->select('bot_chat.*', 'users.name', 'users.id as id2',)->where('bot_chat.id','=',$request->chat_id_support)
				->first();

			$messages = \DB::table('bot_message')->orderBy('date', 'ASC')
				->select('*')->where('chat_id','=',$request->chat_id_support)
				->get();

			return json_encode(array('chat'=>$chat,'messages'=>$messages));
		} else {
			return view('danger');
		}
    }

    public function book(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->where('type', '=', '0')->get();
			$service = Rights::where('id', '=', '1')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_book');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio.' '.$value->fio_name.' '.$value->fio_otch;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_book',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function po(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->get();
			$service = Rights::where('id', '=', '2')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_po');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio.' '.$value->fio_name.' '.$value->fio_otch;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_po',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function prom(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->get();
			$service = Rights::where('id', '=', '3')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_prom');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio.' '.$value->fio_name.' '.$value->fio_otch;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_prom',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function tz(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->where('type', '>', '0')->get();
			$service = Rights::where('id', '=', '4')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_tz');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_tz',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function tz2(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->where('type', '>', '0')->get();
			$service = Rights::where('id', '=', '4')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_tz');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_tz2',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function izo(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->where('type', '=', '0')->get();
			$service = Rights::where('id', '=', '5')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_izo');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio.' '.$value->fio_name.' '.$value->fio_otch;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_izo',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function pm(){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->where('type', '=', '0')->get();
			$service = Rights::where('id', '=', '6')->first();
			if(count($profiles)==0){
				return view('profiles.not_profiles_pm');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio.' '.$value->fio_name.' '.$value->fio_otch;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.create_pm',compact('profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function store(Request $request){
		if($this->danger){
			if($request->type_order==0){

				if($request->file('file_book') !== null){
					$file_book = $request->file('file_book');
					$file_book_filename = 'file-' . time() . rand(0,9999) . '.' . $file_book->getClientOriginalExtension();
					$path = $file_book->storeAs('public/', $file_book_filename);
				} else {
					$file_book_filename = '0';
				}
				
				$order = Order::create([
					'user_id' => Auth::user()->id,
					'profile_id' => $request->profile_id,
					'type_order' => $request->type_order,
					'status' => 0,
					'vidp' => $request->vidp,
					'descr' => $request->descr,
					'date_s' => $request->date_s,
					'date_p' => $request->date_p,
					'mesto_p' => $request->mesto_p,
					'soavt' => $request->soavt,
					'file_book' => $file_book_filename
				]);
				\LogActivity::addToLog('Создана заявка на регистрацию произведения');
			}

			if($request->type_order==1){
				$order = Order::create([
					'user_id' => Auth::user()->id,
					'profile_id' => $request->profile_id,
					'type_order' => $request->type_order,
					'status' => 0,
					'fam' => $request->fam,
					'name' => $request->name,
					'otch' => $request->otch,
					'dolzh'=> $request->dolzh,
					'ur_name'=> $request->ur_name,
					'personal_data'=> $request->personal_data,
					'num_reestr'=> $request->num_reestr,
					'count_copyright_holders_u'=> $request->count_copyright_holders_u,
					'count_copyright_holders_f'=> $request->count_copyright_holders_f,
					'all_f_authors'=> $request->all_f_authors,
					'osnovanie'=> $request->osnovanie,
					'osnovanie_inoe'=> $request->osnovanie_inoe,
					'gos_mun_contract'=> $request->gos_mun_contract,
					'date_contract'=> $request->date_contract,
					'num_contract'=> $request->num_contract,
					'opf'=> $request->opf,
					'p_ur_name'=> $request->p_ur_name,
					'inn2'=> $request->inn2,
					'ogrn'=> $request->ogrn,
					'uraddr'=> $request->uraddr,
					'fam2'=> $request->fam2,
					'name2'=> $request->name2,
					'otch2'=> $request->otch2,
					'addr_prozh'=> $request->addr_prozh,
					'snils'=> $request->snils,
					'inn3'=> $request->inn3,
					'passp'=> $request->passp,
					'name_evm'=> $request->name_evm,
					'year_sozd'=> $request->year_sozd,
					'is_world'=> $request->is_world,
					'iw2_country'=> $request->iw2_country,
					'iw_year'=> $request->iw_year,
					'naznach'=> $request->naznach,
					'lp'=> $request->lp,
					'size_c'=> $request->size_c,
					'count_authors'=> $request->count_authors,
					'fio_author'=> $request->fio_author,
					'date_r_author'=> $request->date_r_author,
					'grazhd'=> $request->grazhd,
					'snils2'=> $request->snils2,
					'inn'=> $request->inn,
					'passp2'=> $request->passp2,
					'kotv'=> $request->kotv
				]);
				\LogActivity::addToLog('Создана заявка на регистрацию ПО');
			}

			if($request->type_order==2){

				if($request->file('izo_izd') !== null){
					$izo_izd = $request->file('izo_izd');
					$izo_izd_filename = 'file-' . time() . rand(0,9999) . '.' . $izo_izd->getClientOriginalExtension();
					$path = $izo_izd->storeAs('public/', $izo_izd_filename);
				} else {
					$izo_izd_filename = '';
				}

				if($request->file('izo_chert') !== null){
					$izo_chert = $request->file('izo_chert');
					$izo_chert_filename = 'file-' . time() . rand(0,9999) . '.' . $izo_chert->getClientOriginalExtension();
					$path = $izo_chert->storeAs('public/', $izo_chert_filename);
				} else {
					$izo_chert_filename = '';
				}

				$order = Order::create([
					'user_id' => Auth::user()->id,
					'profile_id' => $request->profile_id,
					'type_order' => $request->type_order,
					'status' => 0,
					'name_prom' => $request->name_prom,
					'descr_po' => $request->descr_po,
					'gos_mun_contract'=> $request->gos_mun_contract,
					'date_contract'=> $request->date_contract,
					'num_contract'=> $request->num_contract,
					'fam' => $request->fam,
					'name' => $request->name,
					'otch' => $request->otch,
					'snils' => $request->snils,
					'inn' => $request->inn,
					'addr_prozh' => $request->addr_prozh,
					'desc_prom' => $request->desc_prom,
					'izo_izd' => $izo_izd_filename,
					'izo_chert' => $izo_chert_filename
				]);
				\LogActivity::addToLog('Создана заявка на регистрацию промышленного образца');
			}

			if($request->type_order==3){
				if($request->file('izo_oboz') !== null){
					$izo_oboz = $request->file('izo_oboz');
					$izo_oboz_filename = 'file-' . time() . rand(0,9999) . '.' . $izo_oboz->getClientOriginalExtension();
					$path = $izo_oboz->storeAs('public/', $izo_oboz_filename);
				} else {
					$izo_oboz_filename = '';
				}
				$order = Order::create([
					'user_id' => Auth::user()->id,
					'profile_id' => $request->profile_id,
					'type_order' => $request->type_order,
					'status' => 0,
					'type_z' => $request->type_z,
					'per_tov' => $request->per_tov,
					'slov_oboz' => $request->slov_oboz,
					'izo_oboz' => $izo_oboz_filename
				]);
				\LogActivity::addToLog('Создана заявка на регистрацию товарного знака');
			}

			if($request->type_order==4){
				if($request->file('izopm_5') !== null){
					$izopm_5 = $request->file('izopm_5');
					$izopm_5_filename = 'file-' . time() . rand(0,9999) . '.' . $izopm_5->getClientOriginalExtension();
					$path = $izopm_5->storeAs('public/', $izopm_5_filename);
				} else {
					$izopm_5_filename = '';
				}
				
				$order = Order::create([
					'user_id' => Auth::user()->id,
					'profile_id' => $request->profile_id,
					'type_order' => $request->type_order,
					'status' => 0,
					'name_izopm' => $request->name_izopm,
					'izopm_1' => $request->izopm_1,
					'izopm_2' => $request->izopm_2,
					'izopm_3' => $request->izopm_3,
					'izopm_4' => $request->izopm_4,
					'izopm_6' => $request->izopm_6,
					'izopm_5' => $izopm_5_filename
				]);
				\LogActivity::addToLog('Создана заявка на регистрацию товарного знака');
			}

			if ($order) {
				return redirect()->route('orders.index');
			}
		} else {
			return view('danger');
		}
    }

    public function show(Order $order){
		if($this->danger){
			$profiles = Profiles::where('user_id', '=', Auth::user()->id)->where('id', '=', $order->profile_id)->get();
			$service = Rights::where('id', '=', (int)$order->type_order+1)->first();			
			if(count($profiles)==0){
				return view('profiles.not_profiles_book');
			} else {
				foreach ($profiles as &$value) {
					if($value->type == 0){
						$value->fio_name = $value->fio;
					}elseif($value->type == 1){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 2){
						$value->fio_name = $value->ur_name;
					}elseif($value->type == 3){
						$value->fio_name = $value->ur_name;
					}
				}
				return view('orders.show', compact('order','profiles','service'));
			}
		} else {
			return view('danger');
		}
    }

    public function edit(Order $order){
		if($this->danger){
			return view('orders.edit', compact('order'));
		} else {
			return view('danger');
		}
    }

    public function update(Request $request,  Order $order){
		if($this->danger){
			$order = Order::where('id', '=', $request->id)->where('user_id', '=', Auth::user()->id)->first();
			if($order->type_order == '0'){
				if($request->file('file_book') !== null){
					$file_book = $request->file('file_book');
					$file_book_filename = 'file-' . time() . rand(0,9999) . '.' . $file_book->getClientOriginalExtension();
					$path = $file_book->storeAs('public/', $file_book_filename);
				} else {
					$file_book_filename = '0';
				}
				$order['vidp'] = $request->vidp;
				$order['descr'] = $request->descr;
				$order['date_s'] = $request->date_s;
				$order['date_p'] = $request->date_p;
				$order['mesto_p'] = $request->mesto_p;
				$order['soavt'] = $request->soavt;
				$order['file_book'] = $file_book_filename;
			} else if($order->type_order == '1'){
				$order['name_evm'] = $request->name_evm;
				$order['year_sozd'] = $request->year_sozd;
				$order['is_world'] = $request->is_world;
				$order['iw2_country'] = $request->iw2_country;
				$order['iw_year'] = $request->iw_year;
				$order['naznach'] = $request->naznach;
				$order['lp'] = $request->lp;
				$order['size_c'] = $request->size_c;
				$order['count_authors'] = $request->count_authors;
				$order['personal_data'] = $request->personal_data;
				$order['num_reestr'] = $request->num_reestr;
				$order['count_copyright_holders_u'] = $request->count_copyright_holders_u;
				$order['count_copyright_holders_f'] = $request->count_copyright_holders_f;
				$order['all_f_authors'] = $request->all_f_authors;
				$order['osnovanie'] = $request->osnovanie;
				$order['osnovanie_inoe'] = $request->osnovanie_inoe;
				$order['gos_mun_contract'] = $request->gos_mun_contract;
				$order['date_contract'] = $request->date_contract;
				$order['num_contract'] = $request->num_contract;
				$order['fio_author'] = $request->fio_author;
				$order['date_r_author'] = $request->date_r_author;
				$order['grazhd'] = $request->grazhd;
				$order['snils2'] = $request->snils2;
				$order['inn'] = $request->inn;
				$order['passp2'] = $request->passp2;
				$order['kotv'] = $request->kotv;
			} else if($order->type_order == '2'){

				if($request->file('izo_izd') !== null){
					$izo_izd = $request->file('izo_izd');
					$izo_izd_filename = 'file-' . time() . rand(0,9999) . '.' . $izo_izd->getClientOriginalExtension();
					$path = $izo_izd->storeAs('public/', $izo_izd_filename);
				} else {
					$izo_izd_filename = '0';
				}

				if($request->file('izo_chert') !== null){
					$izo_chert = $request->file('izo_chert');
					$izo_chert_filename = 'file-' . time() . rand(0,9999) . '.' . $izo_chert->getClientOriginalExtension();
					$path = $izo_chert->storeAs('public/', $izo_chert_filename);
				} else {
					$izo_chert_filename = '0';
				}
				
				$order['name_prom'] = $request->name_prom;
				$order['descr_po'] = $request->descr_po;
				$order['gos_mun_contract'] = $request->gos_mun_contract;
				$order['date_contract'] = $request->date_contract;
				$order['num_contract'] = $request->num_contract;
				$order['desc_prom'] = $request->desc_prom;
				$order['izo_izd'] = ($izo_izd_filename=='0')?$order['izo_izd']:$izo_izd_filename;
				$order['izo_chert'] = ($izo_chert_filename=='0')?$order['izo_chert']:$izo_chert_filename;

			} else if($order->type_order == '3'){
				if($request->file('izo_oboz') !== null){
					$izo_oboz = $request->file('izo_oboz');
					$izo_oboz_filename = 'file-' . time() . rand(0,9999) . '.' . $izo_oboz->getClientOriginalExtension();
					$path = $izo_oboz->storeAs('public/', $izo_oboz_filename);
				} else {
					$izo_oboz_filename = '0';
				}
				$order['per_tov'] = $request->per_tov;
				$order['slov_oboz'] = $request->slov_oboz;
				$order['izo_oboz'] = ($izo_oboz_filename=='0')?$order['izo_oboz']:$izo_oboz_filename;
			} else if($order->type_order == '4'){
				if($request->file('izopm_5') !== null){
					$izopm_5 = $request->file('izopm_5');
					$izopm_5_filename = 'file-' . time() . rand(0,9999) . '.' . $izopm_5->getClientOriginalExtension();
					$path = $izopm_5->storeAs('public/', $izopm_5_filename);
				} else {
					$izopm_5_filename = '0';
				}
				$order['per_tov'] = $request->per_tov;
				$order['slov_oboz'] = $request->slov_oboz;
				$order['izopm_5'] = ($izopm_5_filename=='0')?$order['izopm_5']:$izopm_5_filename;
			}

			if($request->file('doverka') !== null){
				$doverka = $request->file('doverka');
				$doverka_filename = 'file-' . time() . rand(0,9999) . '.' . $doverka->getClientOriginalExtension();
				$path = $doverka->storeAs('public/', $doverka_filename);
			} else {
				$doverka_filename = '0';
			}
			$order['doverka'] = ($doverka_filename=='0')?$order['doverka']:$doverka_filename;
			$order->save();
			\LogActivity::addToLog('Заявка №'.$request->id.' изменена');

			return redirect()->route('orders.show',$order->id);
		} else {
			return view('danger');
		}
    }

    public function del_img(Request $request,  Order $order){
		if($this->danger){
			$order = Order::where('id', '=', $request->order_id)->where('user_id', '=', Auth::user()->id)->first();
			$order[$request->field] = '';
			$order->save();
			unlink(dirname(__dir__,3).'/public/storage/'.$request->filename);

			return redirect()->route('orders.show',$order->id);
		} else {
			return view('danger');
		}
    } 

    public function destroy($id){
        //
    }

    public function folks(){
		if($this->danger){
			return view('folk.map');
		} else {
			return view('danger');
		}
    }

    public function folk($id){
		$link = -1;
		if($this->danger){
			/*
			$blogs = Post::where('status','=', '1')->get();
			foreach ($blogs as &$value) {
				$value->content = strip_tags(mb_substr($value->content, 0, 350));
				$value->created = date('d.m.Y',strtotime($value->created_at));
			}
			$blog = Post::where('id', $id)->first();
			$blog->created = date('d.m.Y',strtotime($blog->created_at));
			*/
			return view('folk.region',compact('link'));
		} else {
			return view('danger');
		}
    }

    public function folk_link($id,$link){
		if($this->danger){
			return view('folk.folk_link',compact('link'));
		} else {
			return view('danger');
		}
    }

    public function blogs(){
		if($this->danger){
			$blogs = Post::where('status','=', '1')->paginate(10);
			foreach ($blogs as &$value) {
				$value->content = strip_tags(mb_substr($value->content, 0, 350));
				$value->created = date('d.m.Y',strtotime($value->created_at));
			}
			return view('blogs.list', compact('blogs'));
		} else {
			return view('danger');
		}
		
    }

    public function privacy(){
		if($this->danger){
			$id = 5;
			$page = Post::where('id', $id)->first();
			$page->created = date('d.m.Y',strtotime($page->created_at));
			return view('page.view', compact('page'));
		} else {
			return view('danger');
		}
    }

    public function legal_information(){
		if($this->danger){
			$id = 6;
			$page = Post::where('id', $id)->first();
			$page->created = date('d.m.Y',strtotime($page->created_at));
			return view('page.view', compact('page'));
		} else {
			return view('danger');
		}
    }

    public function agreement(){
		if($this->danger){
			$id = 7;
			$page = Post::where('id', $id)->first();
			$page->created = date('d.m.Y',strtotime($page->created_at));
			return view('page.view', compact('page'));
		} else {
			return view('danger');
		}
    }

    public function theoda(){
		if($this->danger){

			$blogs = Post::where('status','=', '1')->orderBy('id','desc')->limit(4)->get();
			foreach ($blogs as &$value) {
				$value->content = strip_tags(mb_substr($value->content, 0, 350));
				$value->created = date('d.m.Y',strtotime($value->created_at));
			}
			return view('services', compact('blogs'));
		} else {
			return view('danger');
		}
    }

    public function blog($id){
		if($this->danger){
			$blogs = Post::where('status','=', '1')->get();
			foreach ($blogs as &$value) {
				$value->content = strip_tags(mb_substr($value->content, 0, 350));
				$value->created = date('d.m.Y',strtotime($value->created_at));
			}
			$blog = Post::where('id', $id)->first();
			$blog->created = date('d.m.Y',strtotime($blog->created_at));
			return view('blogs.view', compact('blog','blogs'));
		} else {
			return view('danger');
		}
    }

    public function notify(Request $request){
		$payment = Payments::where('order_id', '=', $request->OrderId)->first();
		$payment['status'] = 1;
		$payment->save();
		echo "OK";
    }

}