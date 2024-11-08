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
							<h3 class="card-title">Авторское право на промышленный образец</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<input type="hidden" class="form-control" id="id" name="id" value="{{$orders->id}}">
											<label class="col-form-label" for="name_prom">Название промышленного образца </label>
											<input type="text" class="form-control" id="name_prom" name="name_prom" value="{{$orders->name_prom}}">
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="descr_po">Один ПО или группа ПО (набор/комплект или варианты)?</label>
											<textarea class="form-control" rows="3" id="descr_po" name="descr_po">{{$orders->descr_po}}</textarea>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label for="gos_mun_contract" class="col-form-label">Объект создан по государственному или муниципальному контракту (выберите вариант)</label>
											<input type="hidden" name="gos_mun_contract"  id="gos_mun_contract" value="{{$orders->gos_mun_contract}}">
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="p1" name="p1" @if ($orders->gos_mun_contract == 'p1') checked @endif onclick="checkRadio3(name)">
												<label for="p1" class="custom-control-label form-check-label">Не создан</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="p2" name="p2" @if ($orders->gos_mun_contract == 'p2') checked @endif onclick="checkRadio3(name)">
												<label for="p2" class="custom-control-label form-check-label">Государственный контракт (укажите дату и номер контракта)</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="p3" name="p3" @if ($orders->gos_mun_contract == 'p3') checked @endif onclick="checkRadio3(name)">
												<label for="p3" class="custom-control-label form-check-label">Муниципальный контракт (укажите дату и номер контракта)</label>
											</div>
										</div>
										<div class="col-md-12 col-sm-12">
											<div id="p_form"  style="@if ($orders->gos_mun_contract == 'p1') display: none; @else display: block; @endif padding-top: 0;margin-top: 0;" class="mt-0">
												<div class="row">
													<div class="col-md-6 col-sm-12">
														<div class="form-container">
															<label class="col-form-label" for="date_contract">Дата контракта</label>
															<input type="date" class="form-control" id="date_contract" name="date_contract" value="{{$orders->date_contract}}">
														</div>
													</div>
													<div class="col-md-6 col-sm-12">
														<div class="form-container">
															<label class="col-form-label" for="num_contract">Номер контракта</label>
															<input type="text" class="form-control" id="num_contract" name="num_contract" value="{{$orders->num_contract}}">
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="desc_prom">Описание промышленного образца</label>
											<textarea class="form-control" rows="3" id="desc_prom" name="desc_prom">{{$orders->desc_prom}}</textarea>
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
							Изображение изделия <br>
							@if($orders->izo_izd!='')
							<a href="/storage/{{$orders->izo_izd}}" target="_blank">{{$orders->izo_izd}}</a>
							@else
							не загружено
							@endif
							<br>
							Чертежи общего вида изделия <br>
							@if($orders->izo_chert!='')
							<a href="/storage/{{$orders->izo_chert}}" target="_blank">{{$orders->izo_chert}}</a>
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
function checkRadio(name) {
	if (name == "fl") {
		document.getElementById("type_z").value = "fl";
		document.getElementById("fl").checked = true;
		document.getElementById("ul").checked = false;
		document.getElementById("fl_form").style.display = 'block';
		document.getElementById("ul_form").style.display = 'none';

		document.getElementById("ul_name").removeAttribute('required');
		document.getElementById("uraddr").removeAttribute('required');
		document.getElementById("inn2").removeAttribute('required');
		document.getElementById("ogrn").removeAttribute('required');
		document.getElementById("fio_author").removeAttribute('required');
		document.getElementById("addr_prozh2").removeAttribute('required');

		document.getElementById("fam").setAttribute('required','required');
		document.getElementById("name").setAttribute('required','required');
		document.getElementById("otch").setAttribute('required','required');
		document.getElementById("snils").setAttribute('required','required');
		document.getElementById("inn").setAttribute('required','required');
		document.getElementById("addr_prozh").setAttribute('required','required');
	} else if (name == "ul") {
		document.getElementById("type_z").value = "ul";
		document.getElementById("fl").checked = false;
		document.getElementById("ul").checked = true;
		document.getElementById("fl_form").style.display = 'none';
		document.getElementById("ul_form").style.display = 'block';

		document.getElementById("fam").removeAttribute('required');
		document.getElementById("name").removeAttribute('required');
		document.getElementById("otch").removeAttribute('required');
		document.getElementById("snils").removeAttribute('required');
		document.getElementById("inn").removeAttribute('required');
		document.getElementById("addr_prozh").removeAttribute('required');

		document.getElementById("ul_name").setAttribute('required','required');
		document.getElementById("uraddr").setAttribute('required','required');
		document.getElementById("inn2").setAttribute('required','required');
		document.getElementById("ogrn").setAttribute('required','required');
		document.getElementById("fio_author").setAttribute('required','required');
		document.getElementById("addr_prozh2").setAttribute('required','required');
	}
}

function checkRadio2(name) {
	if (name == "p1") {
		document.getElementById("gos_mun_contract").value = "pl";
		document.getElementById("p1").checked = true;
		document.getElementById("p2").checked = false;
		document.getElementById("p3").checked = false;
		document.getElementById("p_form").style.display = 'none';
		document.getElementById("date_contract").removeAttribute('required');
		document.getElementById("num_contract").removeAttribute('required');
	} else if (name == "p2") {
		document.getElementById("gos_mun_contract").value = "p2";
		document.getElementById("p1").checked = false;
		document.getElementById("p2").checked = true;
		document.getElementById("p3").checked = false;
		document.getElementById("p_form").style.display = 'block';
		document.getElementById("date_contract").setAttribute('required','required');
		document.getElementById("num_contract").setAttribute('required','required');
	} else if (name == "p3") {
		document.getElementById("gos_mun_contract").value = "p3";
		document.getElementById("p1").checked = false;
		document.getElementById("p2").checked = false;
		document.getElementById("p3").checked = true;
		document.getElementById("p_form").style.display = 'block';
		document.getElementById("date_contract").setAttribute('required','required');
		document.getElementById("num_contract").setAttribute('required','required');
	}
}
</script>

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