<?php

namespace App\Http\Controllers\Administrator;

use Auth;
use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\User;
use App\Models\Rights;
use App\Models\Profiles;
use App\Models\Message;
use App\Models\Chats;
use App\Models\Post;
use App\Models\Settings;
use App\Models\Advantages;
use App\Models\Textblocks;
use App\Models\LogActivity as Logs;
use LogActivity;
use Illuminate\Http\Request;

use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Request as RequestLongman;

class DashboardController extends Controller
{

    public function index(){
        $orders = Order::where('status','<',2)->sortable()->paginate(10);
        $danger = $this->danger;
		foreach ($orders as &$value) {
			if($value->type_order == 0){
				$value->type_order = 'Авторское право на произведение';
			} elseif($value->type_order == 1){
				$value->type_order = 'Программа для ЭВМ или база данных';
			} elseif($value->type_order == 2){
				$value->type_order = 'Промышленный образец';
			} elseif($value->type_order == 3){
				$value->type_order = 'Товарный знак';
			} elseif($value->type_order == 4){
				$value->type_order = 'Изобретение/Полезная модель';
			}
			$value->applicant = Profiles::where('id','=',$value->profile_id)->first();
		}
        return view('administrator.dashboard', compact('orders'));
    }

    public function reestr(){
        $orders = Order::where('status','=',2)->sortable()->paginate(10);
		foreach ($orders as &$value) {
			if($value->type_order == 0){
				$value->type_order = 'Авторское право на произведение';
			} elseif($value->type_order == 1){
				$value->type_order = 'Программа для ЭВМ или база данных';
			} elseif($value->type_order == 2){
				$value->type_order = 'Промышленный образец';
			} elseif($value->type_order == 3){
				$value->type_order = 'Товарный знак';
			} elseif($value->type_order == 3){
				$value->type_order = 'Изобретения/Полезная модель';
			}
			$value->applicant = Profiles::where('id','=',$value->profile_id)->first();
		}
        return view('administrator.dashboard', compact('orders'));
    }

    public function order($id){
		$orders = Order::where('id', $id)->first();
		$account = User::where('id', $orders->user_id)->first();
		$profile = Profiles::where('id', $orders->profile_id)->first();
		$orders->test = $account->email;
		$date = $orders->created_at;
		$orders->created_order = date('Y-m-d', strtotime($date));
		$order_type = $orders->type_order;
        return view('administrator.orders.'.$order_type, compact('orders','profile'));
    }

    public function edit(Order $order){
        return view('orders.edit', compact('order'));
    }

    public function blogs(){
        $blogs = Post::all();
        return view('administrator.blogs.list', compact('blogs'));
    }
	
    public function blog($id){
		$blog = Post::where('id', $id)->first();
        return view('administrator.blogs.edit', compact('blog'));
    }

    public function chats(){

        $chats = \DB::table('bot_chat')
            //->leftJoin('bot_message', 'bot_chat.id', '=', 'bot_message.chat_id')
            ->leftJoin('users', 'bot_chat.username', '=', 'users.telegram')
			->leftJoin('bot_message', 'bot_chat.id', '=', 'bot_message.chat_id')
            ->selectRaw('bot_chat.*,users.name, count(bot_message.chat_id) as mcount,max(bot_message.date) as mdate')
			->groupBy('bot_chat.id','users.name')
			->where('status_chat','>',0)
			->orderBy('status_chat', 'ASC')
            ->get();

		foreach ($chats as &$value) {
			$value->date_update = 'tlg';
			$value->type_bot = 'tlg';
		}
        return view('administrator.chats.list', compact('chats'));
    }

    public function gnm(Request $request){
		// to do : сократить количество записей до 8
        $chats = \DB::table('bot_chat')
            ->leftJoin('users', 'bot_chat.username', '=', 'users.telegram')
			->leftJoin('bot_message', 'bot_chat.id', '=', 'bot_message.chat_id')
            ->selectRaw('bot_chat.*,users.name, count(bot_message.chat_id) as mcount,max(bot_message.date) as mdate')
			->groupBy('bot_chat.id','users.name')
			->where('status_chat','=',1)
            ->get();
		return $chats;
    }

    public function cvk(Request $request){
		$confirmation_token = '4bea3bbb';
		$token = 'vk1.a.8ewAoBy73btgtjpMn_nnUAc8oMHgnksLB3_6wJhkPy33ZzhlGA_OJz1_kmOMUh4OrqQSvHkaCbg5LBasF0SKc5CToE3UxHJu3S4cQemBK_a8WsB8OzUdprVsQVcNtlosYjjztGkWDN57fpK3kJEZElDeymWt2cWz5LrT01BKcrGpC1GH7xwMtxUeFBsvtq7MRo4GNa7oDO_rt6ephAslTQ';
		$data = json_decode(file_get_contents('php://input'));
		//file_put_contents( __DIR__ . '/filename.txt', print_r($data,true),FILE_APPEND);

		switch ($data->type) {

			case 'confirmation':
				echo $confirmation_token;
			break;

			case 'message_new':
				$chat_id = $data->object->message->from_id;
				$user_info = json_decode(file_get_contents("https://api.vk.com/method/users.get?user_ids={$chat_id}&access_token={$token}&v=5.103"));
				$user_name = $user_info->response[0]->first_name;
				$chats = \DB::table('bot_chat')->select('*')->where('id','=',$chat_id)->get();
				if (count($chats)==0){
					$bot_chat = \DB::table('bot_chat')->insert(array('id' => $chat_id,'type' => 'private','title' => '','username' => '','first_name' => $user_name,'last_name' => '','status_chat' => 1,'msg_type' => 'vk'));
				} else {
					$update_chat = \DB::table('bot_chat')->where('id', '=', $chat_id)->update(['status_chat' => 1]);
				}
				$max_id = \DB::table('bot_message')->max('id');
				$id = $max_id + 1;
				$messages = \DB::table('bot_message')->insert(array('chat_id' => $chat_id,'id' => $id,'text' => $data->object->message->text));
				echo('ok');
			break;

		}
    }

    public function chd(Request $request){
		if($request->danger=='true'){
			$update_chat = \DB::table('settings')->where('name', '=', 'danger')->update(['value' => 'true']);
			\LogActivity::addToLog('Установлен штатный режим работы системы');
		} else {
			$update_chat = \DB::table('settings')->where('name', '=', 'danger')->update(['value' => 'false']);
			\LogActivity::addToLog('Установлен аварийный режим работы системы');
		}
    }

    public function sendmessage(Request $request){
		$max_id = \DB::table('bot_message')->max('id');
		$id = $max_id + 1;
		if($request->msg_type == 'tlg'){
			$result = RequestLongman::sendMessage([
				'chat_id' => $request->chat_id,
				'text'    => $request->message,
			]);
			\LogActivity::addToLog('Отправлено сообщение пользователю в телеграм. ID : '.$request->chat_id);
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
			\LogActivity::addToLog('Отправлено сообщение пользователю ВКонтакте. ID : '.$request->chat_id);
		} else if($request->msg_type=='support') {
			\LogActivity::addToLog('Отправлено сообщение пользователю в чат. ID : '.$request->chat_id);
		}
        $messages = \DB::table('bot_message')->insert(array('chat_id' => $request->chat_id,'id' => $id,'text' => $request->message,'operator_id' => Auth::user()->id));
		$update_chat = \DB::table('bot_chat')->where('id', '=', $request->chat_id)->update(['status_chat' => 2]);
    }

    public function chat($id){

        $chat = \DB::table('bot_chat')
            ->leftJoin('users', 'bot_chat.username', '=', 'users.telegram')
            ->select('bot_chat.*', 'users.name', 'users.id as id2',)->where('bot_chat.id','=',$id)
            ->first();

        $messages = \DB::table('bot_message')->orderBy('date', 'desc')
            ->select('*')->where('chat_id','=',$id)
            ->get();
			
        return view('administrator.chats.chat', compact('chat','messages'));
    }

    public function inform(){
        $rights = Rights::all();
        return view('administrator.rights.list', compact('rights'));
    }

    public function logs(){
        $logs = \DB::table('log_activities')
            ->leftJoin('users', 'log_activities.user_id', '=', 'users.id')
            ->selectRaw('log_activities.*,users.email')
			->orderBy('id', 'desc')
            ->paginate(15);
        return view('administrator.logs', compact('logs'));
    }

    public function payments(){
        $payments = \DB::table('payments')
            ->leftJoin('users', 'payments.user_id', '=', 'users.id')
            ->leftJoin('orders', 'payments.order_id', '=', 'orders.id')
            ->selectRaw('payments.*,users.name,users.email,orders.type_order')
			->orderBy('id', 'desc')
            ->paginate(15);
        return view('administrator.payments', compact('payments'));
    }

    public function ourservices(){
        return view('administrator.ourservices');
    }

    public function rights(){
        $rights = Rights::all();
        return view('administrator.rights.list', compact('rights'));
    }

    public function right($id){
		$right = Rights::where('id', $id)->first();
        return view('administrator.rights.edit', compact('right'));
    }

    public function options(){
        return view('administrator.options');
    }
    public function advantages(){
        $advantages = Advantages::all();
        return view('administrator.advantages', compact('advantages'));
    }

    public function advantage($id){
		$advantage = Advantages::where('id', $id)->first();
        return view('administrator.advantages.edit', compact('advantage'));
    }

    public function advantage_save(Request $request){
		$advantage = Advantages::where('id', '=', $request->id)
			->update([
				'title' => $request->title,
				'descriptions' => $request->descriptions
			]);
		\LogActivity::addToLog('Преимущество "'.$request->title.'" сохранено');
        if ($advantage) {
            return redirect()->route('administrator.advantages');
        }
    }

    public function textblock($id){
		$textblock = Textblocks::where('id', $id)->first();
        return view('administrator.textblocks.edit', compact('textblock'));
    }

    public function textblock_save(Request $request){
		$advantage = Textblocks::where('id', '=', $request->id)
			->update([
				'title' => $request->title,
				'descriptions' => $request->descriptions
			]);
		\LogActivity::addToLog('Текстовый блок "'.$request->title.'" сохранен');
        if ($advantage) {
            return redirect()->route('administrator.options');
        }
    }

    public function newrights(){
        return view('administrator.rights.new');
    }

    public function newblog(){
        return view('administrator.blogs.new');
    }

    public function blog_store(Request $request){
		$right = Post::create([
				'name' => $request->name,
				'content' => $request->content,
				'status' => ($request->status=='on')?1:0
			]);
		\LogActivity::addToLog('Запись "'.$request->name.'" добавлена в блог');
        if ($right) {
            return redirect()->route('administrator.blogs');
        }
    }

    public function right_store(Request $request){
		$right = Rights::create([
				'name' => $request->name,
				'price' => $request->price,
				'term' => $request->term,
				'description' => $request->description,
				'status' => ($request->status=='on')?1:0
			]);
		\LogActivity::addToLog('Добавлена услуга "'.$request->name.'"');
        if ($right) {
            return redirect()->route('administrator.rights');
        }
    }

    public function right_save(Request $request){
		$right = Rights::where('id', '=', $request->id)
			->update([
				'name' => $request->name,
				'price' => $request->price,
				'term' => $request->term,
				'description' => $request->description,
				'status' => $request->status
			]);
		\LogActivity::addToLog('Услуга "'.$request->name.'" сохранена');
        if ($right) {
            return redirect()->route('administrator.rights');
        }
    }

    public function blog_save(Request $request){
		if($request->content!=''){
			$blog = Post::where('id', '=', $request->id)
				->update([
					'name' => $request->name,
					'image' => $request->image,
					'content' => $request->content,
					'status' => $request->status
				]);
			if ($blog) {
				\LogActivity::addToLog('Запись в блоге "'.$request->name.'" сохранена');
				return redirect()->route('administrator.blogs');
			}
		} else {
			$blog = Post::where('id', '=', $request->id)
				->update([
					'name' => $request->name,
					'status' => $request->status
				]);
			if ($blog) {
				\LogActivity::addToLog('Запись в блоге "'.$request->name.'" сохранена');
				return redirect()->route('administrator.blogs');
			}
		}
    }

    public function users(){
        $users = User::all();
        return view('administrator.users.list', compact('users'));
    }

    public function user($id){
		$user = User::where('id', $id)->first();
        $profiles = Profiles::where('user_id', '=', $id)->get();
		
		foreach ($profiles as &$value) {
			if($value->type == 0){
				$value->fio_name = $value->fio;
			}elseif($value->type == 1){
				$value->fio_name = $value->ur_name;
			}elseif($value->type == 2){
				$value->fio_name = $value->ur_name;
			}
		}
        return view('administrator.users.edit', compact('user','profiles'));
    }

    public function user_save(Request $request){
		$user = User::where('id', '=', $request->id)
			->update([
				'status' => $request->status
			]);
        if ($user) {
			$status = ($request->status==0)?'Активен':'Неактивен';
			\LogActivity::addToLog('Статус пользователя ID'.$request->id.' изменен на "'.$status.'"');
            return redirect()->route('administrator.users');
        }
    }

    public function order_save(Request $request){
		if(isset($request->status)){
			$order = Order::where('id', '=', $request->id)
				->update([
					'status' => $request->status
				]);
			if ($order) {
				switch($request->status){
					case 0: $status = 'Новая'; break;
					case 1: $status = 'В работе'; break;
					case 2: $status = 'Завершена'; break;
					case 3: $status = 'Отменена'; break;
					default: $status = ''; break;
				}
				\LogActivity::addToLog('Статус заявки №'.$request->id.' изменен на "'.$status.'"');
				return redirect()->route('administrator.order',$request->id);
			}
		}
		if(isset($request->pay_status)){
			$order = Order::where('id', '=', $request->id)
				->update([
					'pay_status' => $request->pay_status
				]);
			if ($order) {
				$status = ($request->pay_status==0)?'Не оплачена':'Оплачена';
				\LogActivity::addToLog('Платежный статус заявки №'.$request->id.'" изменен на "'.$status.'"');
				return redirect()->route('administrator.order',$request->id);
			}
		}
		if(isset($request->result)){
			if($request->file('result') !== null){
				$result = $request->file('result');
				$result_filename = 'file-' . time() . rand(0,9999) . '.' . $result->getClientOriginalExtension();
				$path = $result->storeAs('public/', $result_filename);
			} else {
				$result_filename = '0';
			}
			$order = Order::where('id', '=', $request->id)
				->update([
					'result' => $result_filename
				]);
			if ($order) {
				\LogActivity::addToLog('К заявке №'.$request->id.'" подгружен результат ');
				return redirect()->route('administrator.dashboard',$request->id);
			}
		}
		
    }
	
}