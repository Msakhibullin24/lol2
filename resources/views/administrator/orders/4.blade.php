<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Заявка # {{$orders->id}}</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item active"><a href="/administrator/dashboard">Заявки</a></li>
            <li class="breadcrumb-item active">Заявка № {{$orders->id}}</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!-- Main content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-12">
					<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">Регистрация изобретения/полезной модели</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-12 col-sm-12">
									<input type="hidden" class="form-control" id="id" name="id" value="{{$orders->id}}">
									<label class="col-form-label" for="name_izopm">Название изобретения/полезной модели</label>
									<input type="text" class="form-control" id="name_izopm" name="name_izopm" value="{{$orders->name_izopm}}">
								</div>
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="izopm_1">Область техники, к которой относится заявляемое техническое решение.</label>
											<textarea class="form-control" rows="3" id="izopm_1" name="izopm_1">{{$orders->izopm_1}}</textarea>
										</div>
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="izopm_4">Сущность созданного технического решения</label>
											<textarea class="form-control" rows="3" id="izopm_4" name="izopm_4">{{$orders->izopm_4}}</textarea>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="izopm_3">Решаемая техническая проблема</label>
											<textarea class="form-control" rows="3" id="izopm_3" name="izopm_3">{{$orders->izopm_3}}</textarea>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="izopm_2">Известные аналоги.</label>
											<textarea class="form-control" rows="3" id="izopm_2" name="slov_oboz">{{$orders->izopm_2}}</textarea>
										</div>
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="izopm_6">Принцип работы</label>
											<textarea class="form-control" rows="3" id="izopm_6" name="izopm_6">{{$orders->izopm_6}}</textarea>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12 text-right py-4">
											<a class="btn btn-primary" href="/administrator/@if ($orders->status==2)reestr @endif ">Закрыть</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-3 col-sm-12">
					<div class="card card-primary">
						<div class="card-header">
							<h3 class="card-title">Информация</h3>
						</div>
						<div class="card-body">
							<p>Дата создания заявки : {{$orders->created_order}}</p>
							Аккаунт<br>
							<strong><i class="fas fa-envelope mr-1"></i> {{$orders->test}}</strong><br><br>
							Заявитель
							@if($profile->type==0)
							<div class="row">
								<div class="col-md-12 col-sm-12">
									ФИО : {{$profile->fio}}
								</div>
								<div class="col-md-12 col-sm-12">
									СНИЛС : {{$profile->snils}}
								</div>
								<div class="col-md-12 col-sm-12">
									ИНН : {{$profile->inn}}
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									Паспорт : {{$profile->passport}}
								</div>
								<div class="col-md-12 col-sm-12">
									Адрес: {{$profile->address}}
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									Гражданство : {{$profile->grazhd}}
								</div>
								<div class="col-md-12 col-sm-12">
									Телефон : {{$profile->phone}}
								</div>
								<div class="col-md-12 col-sm-12">
									Электронная почта : {{$profile->email}}
								</div>
							</div> 
							@else
							<div class="row">
								<div class="col-md-12 col-sm-12">
									Наименование юр.лица : <br>{{$profile->ur_name}}<br><br>
								</div>
								<div class="col-md-12 col-sm-12">
									ОГРН/ОГРНИП : {{$profile->ogrn_ogrnip}}
								</div>
								<div class="col-md-12 col-sm-12">
									ИНН/КПП : {{$profile->inn_kpp}}
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									Юридический адрес: {{$profile->ur_address}}
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12">
									Телефон : {{$profile->phone}}
								</div>
								<div class="col-md-12 col-sm-12">
									Электронная почта : {{$profile->email}}
								</div>
							</div>
							@endif
							<hr>
							<div class="form-group text-right">
									<form method="post" action="{{ route('administrator.order_save') }}" style="display: contents;"  enctype="multipart/form-data">
										<input type="hidden" value="{{$orders->id}}" id="id" name="id">
										@csrf
										<x-input-label for="result" :value="__('Результат')" />
										@if ($orders->result!='')
											<a href="/storage/{{$orders->result}}" target="_blank">{{$orders->result}}</a>&nbsp&nbsp<input type="button" value="Удалить" onclick="del_result()" class="text-black px-4 py-2 bg-gray-800 dark:bg-gray-200 border border-transparent rounded-md font-semibold text-xs tracking-widest hover:bg-gray-700 dark:hover:bg-white focus:bg-gray-700 dark:focus:bg-white active:bg-gray-900 dark:active:bg-gray-300 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 dark:focus:ring-offset-gray-800 transition ease-in-out duration-150">
											<input type="hidden" id="o_result" value="{{$orders->result}}">
										@else
										<x-text-input id="result" name="result" type="file" class="mt-1 block w-full" autocomplete="result" />
										@endif
										<button class="btn btn-primary" type="submit">Сохранить</button>
									</form>
							</div>
							<hr>
							<div class="form-group">
								<p>Статус заявки</p>
								<div class="row">
									<form method="post" action="{{ route('administrator.order_save') }}" style="display: contents;">
										<div class="col-md-6 col-sm-6">
												@csrf
												<input type="hidden" class="form-control" id="id" name="id" value="{{$orders->id}}">
												<div class="custom-control custom-radio">
													<input class="custom-control-input custom-control-input-success" type="radio" id="status_0" name="status" value = "0" @if ($orders->status == 0) checked @endif >
													<label for="status_0" class="custom-control-label">Новая</label>
												</div>
												<div class="custom-control custom-radio">
													<input class="custom-control-input custom-control-input-warning" type="radio" id="status_1" name="status" value = "1" @if ($orders->status == 1) checked @endif >
													<label for="status_1" class="custom-control-label">В работе</label>
												</div>
												<div class="custom-control custom-radio">
													<input class="custom-control-input custom-control-input-primary" type="radio" id="status_2" name="status" value = "2" @if ($orders->status == 2) checked @endif >
													<label for="status_2" class="custom-control-label">Завершена</label>
												</div>
												<div class="custom-control custom-radio">
													<input class="custom-control-input custom-control-input-danger" type="radio" id="status_3" name="status" value = "3" @if ($orders->status == 3) checked @endif >
													<label for="status_3" class="custom-control-label">Отменена</label>
												</div>
												
										</div>
										<div class="col-md-6 col-sm-6">
											<button class="btn btn-primary" type="submit">Сохранить</button>
										</div>
									</form>
								</div>
							</div>
							<hr>
							<div class="form-group">
								<p>Платежный статус заявки</p>
								<div class="row">
									<form method="post" action="{{ route('administrator.order_save') }}" style="display: contents;">
										<div class="col-md-6 col-sm-6">
											@csrf
											<input type="hidden" class="form-control" id="id" name="id" value="{{$orders->id}}">
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-danger" type="radio" id="pay_status_0" name="pay_status" value = "0" @if ($orders->pay_status == 0) checked @endif >
												<label for="pay_status_0" class="custom-control-label">Не оплачена</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="pay_status_1" name="pay_status" value = "1" @if ($orders->pay_status == 1) checked @endif >
												<label for="pay_status_1" class="custom-control-label">Оплачено</label>
											</div>
										</div>
										<div class="col-md-6 col-sm-6">
											<button class="btn btn-primary" type="submit">Сохранить</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="card card-success">
						<div class="card-header">
							<h3 class="card-title">Файлы</h3>
						</div>
						<div class="card-body">
							Изобразительное обозначение<br>
							@if($orders->izopm_5!='')
							<a href="/storage/{{$orders->izopm_5}}" target="_blank">{{$orders->izopm_5}}</a>
							@else
							не загружено
							@endif
							<br>
							Доверенность : <a href="/storage/{{$orders->doverka}}" target="_blank">{{$orders->doverka}}</a>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</x-administrator-app-layout>

<script>

function del_result(){
	const data = {
	  "filename": document.getElementById("o_result").value,
	  "order_id": document.getElementById("id").value,
	  "field": 'result',
	  "_token": document.querySelector("[name='_token']").value
	};
	const Http = new XMLHttpRequest();
	const url='/orders/del_img';
	Http.open("POST", url);
	Http.setRequestHeader("Content-Type", "application/json");
	Http.send(JSON.stringify(data));
	location.reload();
}
</script>