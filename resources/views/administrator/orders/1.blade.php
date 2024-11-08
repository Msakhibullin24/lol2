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
							<h3 class="card-title">Авторское право на программу для ЭВМ</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<input type="hidden" class="form-control" id="id" name="id" value="{{$orders->id}}">
											<label class="col-form-label" for="vidp">Название регистрируемой программы для ЭВМ</label>
											<input type="text" class="form-control" id="name_evm" name="name_evm" value="{{$orders->name_evm}}">
										</div>
									</div>
									<div class="row">
										<div class="col-md-5 col-sm-12">
											<label class="col-form-label" for="year_sozd">Язык программирования</label>
											<input type="text" class="form-control" id="lp" name="lp" value="{{$orders->lp}}">
										</div>
										<div class="col-md-3 col-sm-12">
											<label class="col-form-label" for="size_c">Объем</label>
											<input type="text" class="form-control" id="size_c" name="size_c" value="{{$orders->size_c}}">
										</div>
										<div class="col-md-4 col-sm-12">
											<label class="col-form-label" for="count_authors">Количество авторов</label>
											<input type="number" class="form-control" id="count_authors" name="count_authors" value="{{$orders->count_authors}}">
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12">
											<label class="col-form-label" for="year_sozd">Год создания</label>
											<input type="text" class="form-control" id="year_sozd" name="year_sozd" value="{{$orders->year_sozd}}">
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 col-sm-12">
											<label for="is_world" class="col-form-label">Выпускалась ли программа в свет</label>
											<input type="hidden" name="is_world"  id="is_world" value="{{$orders->is_world}}" onclick="checkRadio4(name)">
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="iw1" name="iw1" @if ($orders->is_world == 'iw1') checked @endif onclick="checkRadio4(name)">
												<label for="iw1" class="custom-control-label form-check-label">Нет</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="iw2" name="iw2" @if ($orders->is_world == 'iw2') checked @endif onclick="checkRadio4(name)">
												<label for="iw2" class="custom-control-label form-check-label">Да</label>
											</div>
										</div>
										<div class="col-md-6 col-sm-12">
											<div id="iw_form"  style="display: @if($orders->is_world=='iw1') none @else block @endif ;padding-top: 0;margin-top: 0;" class="mt-0">
												<div class="row">
													<div class="col-md-12 col-sm-12">
														<label class="col-form-label" for="year_sozd">Страна</label>
														<input type="text" class="form-control" id="iw2_country" name="iw2_country" value="{{$orders->iw2_country}}">
													</div>
												</div>
												<div class="row">
													<div class="col-md-12 col-sm-12">
														<label class="col-form-label" for="year_sozd">Год</label>
														<input type="text" class="form-control" id="iw_year" name="iw_year" value="{{$orders->iw_year}}">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<hr>
											<label for="personal_data" class="col-form-label">Данные автора</label>
										</div>
										<div class="col-md-8 col-sm-12">
											<label class="col-form-label" for="fio_author">ФИО</label>
											<input type="text" class="form-control" id="fio_author" name="fio_author" value="{{$orders->fio_author}}">
										</div>
										<div class="col-md-4 col-sm-12">
											<label class="col-form-label" for="date_r_author">Дата рождения</label>
											<input type="date" class="form-control" id="date_r_author" name="date_r_author" value="{{$orders->date_r_author}}">
										</div>
									</div>
									<div class="row">
										<div class="col-md-4 col-sm-12">
											<label class="col-form-label" for="grazhd">Гражданство</label>
											<input type="text" class="form-control" id="grazhd" name="grazhd" value="{{$orders->grazhd}}">
										</div>
										<div class="col-md-4 col-sm-12">
											<label class="col-form-label" for="snils2">СНИЛС</label>
											<input type="text" class="form-control" id="snils2" name="snils2" value="{{$orders->snils2}}">
										</div>
										<div class="col-md-4 col-sm-12">
											<label class="col-form-label" for="inn">ИНН</label>
											<input type="date" class="form-control" id="inn" name="inn" value="{{$orders->inn}}">
										</div>
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="passp2">Паспорт</label>
											<textarea class="form-control" rows="3" id="passp2" name="passp2">{{$orders->passp2}}</textarea>
										</div>
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="kotv">Краткое описание творческого вклада</label>
											<textarea class="form-control" rows="3" id="kotv" name="kotv">{{$orders->kotv}}</textarea>
										</div>
									</div>
								</div>
								<div class="col-md-6 col-sm-12">
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label for="personal_data" class="col-form-label">Содержание персональных данных</label>
											<input type="hidden" name="personal_data"  id="personal_data" value="{{$orders->personal_data}}">
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="pd1" name="pd1" @if ($orders->personal_data == 'pd1') checked @endif onclick="checkRadio(name)">
												<label for="pd1" class="custom-control-label form-check-label">Регистрируемый объект не содержит персональных данных третьих лиц</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="pd2" name="pd2" @if ($orders->personal_data == 'pd2') checked @endif onclick="checkRadio(name)">
												<label for="pd2" class="custom-control-label form-check-label">Регистрируемый объект содержит персональные данные третьих лиц</label>
											</div>
										</div>
										<div class="col-md-12 col-sm-12">
											<div id="pd_form"  style="@if ($orders->personal_data == 'pd1') display: none; @else display: block; @endif padding-top: 0;margin-top: 0;" class="mt-0">
												<div class="form-container">
													<label class="col-form-label" for="num_reestr">Регистрационный номер в Реестре операторов, осуществляющих обработку персональных данных</label>
													<input type="text" class="form-control" id="num_reestr" name="num_reestr" value="{{$orders->num_reestr}}">
												</div>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label class="col-form-label" for="naznach">Назначение, область применения, функциональные возможности, сведения о наличии персональных данных, составном произведении</label>
											<textarea class="form-control" rows="3" id="naznach" name="naznach">{{$orders->naznach}}</textarea>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<div class="custom-control custom-checkbox">
												<br>
												<input class="custom-control-input" type="checkbox" id="all_f_authors" @if($orders->all_f_authors=='on')checked @endif >
												<label for="all_f_authors" class="custom-control-label">Все правообладатели-физические лица являются авторами</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-12 col-sm-12">
											<label for="osnovanie" class="col-form-label">Основание возникновения права на регистрируемую ЭВМ</label>
											<input type="hidden" name="osnovanie"  id="osnovanie" value="{{$orders->osnovanie}}">
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="o1" name="o1" @if ($orders->osnovanie == 'o1') checked @endif onclick="checkRadio2(name)">
												<label for="o1" class="custom-control-label form-check-label">Заявитель является работодателем автора</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="o2" name="o2" @if ($orders->osnovanie == 'o2') checked @endif onclick="checkRadio2(name)">
												<label for="o2" class="custom-control-label form-check-label">Передача прав автором или его правопреемником заявителю</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="o3" name="o3" @if ($orders->osnovanie == 'o3') checked @endif onclick="checkRadio2(name)">
												<label for="o3" class="custom-control-label form-check-label">Передача прав работодателем заявителю</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="o4" name="o4" @if ($orders->osnovanie == 'o4') checked @endif onclick="checkRadio2(name)">
												<label for="o4" class="custom-control-label form-check-label">Универсальное правопреемство (наследование, реорганизация)</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="o5" name="o5" @if ($orders->osnovanie == 'o5') checked @endif onclick="checkRadio2(name)">
												<label for="o5" class="custom-control-label form-check-label">Заявитель является автором</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input custom-control-input-success" type="radio" id="o6" name="o6" @if ($orders->osnovanie == 'o6') checked @endif onclick="checkRadio2(name)">
												<label for="o6" class="custom-control-label form-check-label">Иное</label>
											</div>
										</div>
										<div class="col-md-12 col-sm-12">
											<div id="o_form"  style="@if ($orders->osnovanie == 'o6') display: block; @else display: none; @endif padding-top: 0;margin-top: 0;" class="mt-0">
												<div class="form-container">
													<label class="col-form-label" for="osnovanie_inoe">Основание</label>
													<input type="text" class="form-control" id="osnovanie_inoe" name="osnovanie_inoe" value="{{$orders->osnovanie_inoe}}">
												</div>
											</div>
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
									ФИО : {{$profile->ur_name}}
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
<script>

function checkRadio(name) {
	if (name == "pd1") {
		document.getElementById("personal_data").value = "pdl";
		document.getElementById("pd1").checked = true;
		document.getElementById("pd2").checked = false;
		document.getElementById("pd_form").style.display = 'none';
		document.getElementById("num_reestr").removeAttribute('required');
	} else if (name == "pd2") {
		document.getElementById("personal_data").value = "pd2";
		document.getElementById("pd1").checked = false;
		document.getElementById("pd2").checked = true;
		document.getElementById("pd_form").style.display = 'block';
		document.getElementById("num_reestr").setAttribute('required','required');
	}
}


function checkRadio2(name) {
	if (name == "o1") {
		document.getElementById("osnovanie").value = "ol";
		document.getElementById("o1").checked = true;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o2") {
		document.getElementById("osnovanie").value = "o2";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = true;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o3") {
		document.getElementById("osnovanie").value = "o3";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = true;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o4") {
		document.getElementById("osnovanie").value = "o4";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = true;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o5") {
		document.getElementById("osnovanie").value = "o5";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = true;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o6") {
		document.getElementById("osnovanie").value = "o6";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = true;
		document.getElementById("o_form").style.display = 'block';
		document.getElementById("osnovanie_inoe").setAttribute('required','required');
	}
}

function checkRadio3(name) {
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

function checkRadio4(name) {
	if (name == "iw1") {
		document.getElementById("is_world").value = "iw1";
		document.getElementById("iw1").checked = true;
		document.getElementById("iw2").checked = false;
		document.getElementById("iw_form").style.display = 'none';
		document.getElementById("iw2_country").removeAttribute('required');
	} else if (name == "iw2") {
		document.getElementById("is_world").value = "iw2";
		document.getElementById("iw1").checked = false;
		document.getElementById("iw2").checked = true;
		document.getElementById("iw_form").style.display = 'block';
		document.getElementById("iw2_country").setAttribute('required','required');
	}
}

</script>