<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Чат-боты</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Чат-боты</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!-- Main content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body table-responsive p-0">
							<table class="table table-hover text-nowrap" id="chats_list">
								<thead>
									<tr>
										<th>Дата/время</th>
										<th>№</th>
										<th>Пользователь</th>
										<th>Мессенджер</th>
										<th>Статус</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								@forelse ($chats as $chat)
									<tr>
										<td>{{ $chat->mdate }}</td>
										<td>{{ $chat->id }}</td>
										<td>@if($chat->name!='') {{ $chat->name }} @else Незарегистрованный пользователь @endif</td>
										<td>@if($chat->msg_type=='tlg') <img src="/img/tlg.png" width="32">@elseif ($chat->msg_type=='vk') <img src="/img/vk.png" width="32"> @elseif ($chat->msg_type=='support') <img src="/img/support.png" width="32"> @endif</td>
										<td>
											@if($chat->status_chat=='0') - @endif
											@if($chat->status_chat=='1') <span class="badge badge-danger"> Вопрос </span> @endif
											@if($chat->status_chat=='2') <span class="badge badge-success">Дан ответ </span> @endif
										</td>
										<td><a class="btn btn-primary btn-sm" href="/administrator/chat/{{$chat->id}}"><i class="fas fa-folder"></i> Перейти в чат</a></td>
									</tr>
								@empty
									<tr>
										<td colspan="5">
											<p class="text-danger text-center fw-bold"> Еще нет ни одного чата</p>
										</td>
									</tr>
								@endforelse
								</tbody>
							</table>
						</div>
					</div>	
				</div>
			</div>
		</div>
	</div>
</div>
</x-administrator-app-layout>