<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Переписка # {{$chat->id}}</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item"><a href="/administrator/chats">Чат-боты</a></li>
            <li class="breadcrumb-item active">Переписка # {{$chat->id}}</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!-- Main content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 col-sm-12">
					<div class="card card-widget">
						<div class="card-header">
							<div class="user-block">
								<span class="username">
									<a href="#">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">@if($chat->name!='') <a href="/administrator/user/{{$chat->id2}}" target="_blank">{{$chat->name}}</a> @else Незарегистрованный пользователь @endif</font>
										</font>
									</a>
								</span>
								<!--
								<span class="description">
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">Опубликовано публично – сегодня в 19:30</font>
									</font>
								</span>
								-->
							</div>
							<div class="card-tools">
								<a type="button" class="btn btn-tool" href="/administrator/chats"><i class="fas fa-times"></i></a>
							</div>
						</div>
						<div class="card-footer" style="display: block;">
							<input type="hidden" name="id" id="id" value="{{$chat->id}}">
							<input type="hidden" name="msg_type" id="msg_type" value="{{$chat->msg_type}}">
							@csrf
							<div class="img-push">
								<div class="row">
									<div class="col-md-10 col-sm-12">
										<textarea id="question" name="question" cols="15" rows="5" class="form-control"></textarea>
									</div>
									<div class="col-md-2 col-sm-12">
										<button id="send_question" class="form-control btn btn-primary " onclick="sendMessage()">Отправить</button>
									</div>
								</div>
							</div>
						</div>
						@forelse ($messages as $message)
						<div class="card-footer card-comments @if ( $message->operator_id == 0 ) u-comment @else u-operator @endif " style="display: block;">
							<div class="card-comment">
								<div class="comment-text">
									<span class="username">
										<font style="vertical-align: inherit;">
											<font style="vertical-align: inherit;">
											@if ( $message->operator_id == 0 )
												@if($chat->name!='') 
													<a href="/administrator/user/{{$chat->id2}}" target="_blank">{{$chat->name}}</a> 
												@else 
													Незарегистрованный пользователь 
												@endif
											@else 
												Оператор
											@endif
											</font>
										</font>
										<span class="text-muted float-right">
											<font style="vertical-align: inherit;">
												<font style="vertical-align: inherit;">{{ $message->date }}</font>
											</font>
										</span>
									</span>
									<font style="vertical-align: inherit;">
										<font style="vertical-align: inherit;">{{ $message->text }}</font>
									</font>
								</div>
							</div>
						</div>
						@empty
						<p class="text-danger text-center fw-bold"> Еще нет ни одного сообщения</p>
						@endforelse
					</div>
				</div>
			</div>
		</div>
	</div>
</div>




<script>
function sendMessage(){
	const data = {
	  "message": document.getElementById("question").value,
	  "msg_type": document.getElementById("msg_type").value,
	  "chat_id": document.getElementById("id").value,
	  "_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
	};
	const Http = new XMLHttpRequest();
	const url='/administrator/sendmessage';
	Http.onreadystatechange = function() {
		if (Http.readyState == XMLHttpRequest.DONE) {
			location.reload();
		}
	}
	Http.open("POST", url);
	Http.setRequestHeader("Content-Type", "application/json");
	Http.send(JSON.stringify(data));
	//location.reload();
}
</script>
</x-administrator-app-layout>