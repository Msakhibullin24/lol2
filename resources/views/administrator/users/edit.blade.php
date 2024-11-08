<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Просмотр пользователя</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item"><a href="/administrator/users">Реестр пользователей</a></li>
            <li class="breadcrumb-item active">Просмотр пользователя</li>
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
						<div class="card-body">
							<div class="row">
								<form method="post" action="{{ route('administrator.user_save') }}" style="display: contents;">
									@csrf
									<input type="hidden" name="id" value="{{$user->id}}" >
									<div class="col-md-3 col-sm-12">
										<label class="col-form-label" for="name">ФИО</label>
										<input type="text" class="form-control" id="name" name="name" value="{{$user->name}} {{$user->name_name}} {{$user->name_otch}} " readonly>
									</div>
									<div class="col-md-3 col-sm-12">
										<label class="col-form-label" for="email">Электронная почта</label>
										<input type="email" class="form-control" id="email" name="email" value="{{$user->email}}" readonly>
									</div>
									<div class="col-md-3 col-sm-12">
										<label class="col-form-label" for="status">Статус</label>
										<select class="form-control" id="status" name="status">
											<option value="0" @if($user->status==0) selected @endif >Активен</option>
											<option value="1" @if($user->status==1) selected @endif >Неактивен</option>
										</select>
									</div>
									<div class="col-md-3 col-sm-12">
										<input type="submit" class="form-control btn btn-primary" value="Сохранить" style="margin-top: 38px;">
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
				<div class="content-header col-md-9 col-sm-12">
					<div class="container-fluid">
						<div class="row">
							<h1 class="m-0">Профили пользователя</h1>						
						<table class="table">
							<thead>
								<tr>
									<th width="5%">№</th>
									<th width="15%">Тип профиля</th>
									<th width="30%">ФИО/Наименование</th>
									<th width="15%">Email</th>
									<th width="15%">Телефон</th>
								<tr>
							</thead>

							<tbody>
							@forelse ($profiles as $profile)
								<tr data-widget="expandable-table" aria-expanded="false">
									<td>{{ $profile->id }}</td>
									<td>
										@if ($profile->type==0) ФЛ @endif
										@if ($profile->type==1) ИП @endif
										@if ($profile->type==2) ЮЛ @endif
									</td>
									<td>{{ $profile->fio_name }}</td>
									<td>{{ $profile->email }}</td>
									<td>{{ $profile->phone }}</td>
								</tr>
								<tr class="expandable-body d-none">
								<td colspan="5">
										@if ($profile->type==0)
											<b>Данные физического лица</b>
											<div class="row">
												<div class="col-md-4 col-sm-12">
													<label class="col-form-label" for="fio_name">ФИО</label>
													<input type="text" class="form-control" id="fio_name" value="{{$profile->fio_name}}" readonly>
													<label class="col-form-label" for="inn">ИНН</label>
													<input type="text" class="form-control" id="inn" value="{{$profile->inn}}" readonly>
													<label class="col-form-label" for="snils">СНИЛС</label>
													<input type="text" class="form-control" id="snils" value="{{$profile->snils}}" readonly>
												</div>
												<div class="col-md-4 col-sm-12">
													<label class="col-form-label" for="grazhd">Гражданство</label>
													<input type="text" class="form-control" id="grazhd" value="{{$profile->grazhd}}" readonly>
													<!--<label class="col-form-label" for="passport">Паспорт</label>
													<input type="text" class="form-control" id="passport" value="{{$profile->passport}}" readonly>-->
													<label class="col-form-label" for="address">Адрес</label>
													<input type="text" class="form-control" id="address" value="{{$profile->address}}" readonly>
												</div>
												<div class="col-md-4 col-sm-12">
													<label class="col-form-label" for="email">Электронная почта</label>
													<input type="text" class="form-control" id="email" value="{{$profile->email}}" readonly>
													<label class="col-form-label" for="phone">Телефон</label>
													<input type="text" class="form-control" id="phone" value="{{$profile->phone}}" readonly>
												</div>
											</div>
										@else
											Наименование ИП/ЮЛ: <b>{{$profile->fio_name}} (ФЛ)</b><br>
											ИНН/КПП: <b>{{$profile->inn_kpp}}</b><br>
											ОГРН/ОГРНИП: <b>{{$profile->ogrn_ogrnip}}</b><br>
											Юр. адрес: <b>{{$profile->ur_address}}</b><br>
											Email: <b>{{$profile->email}}</b><br>
											Телефон: <b>{{$profile->phone}}</b><br>
										@endif
								</td>
							</tr>
							@empty
								<tr>
									<td colspan="4">
										<p class="text-danger text-center fw-bold"> У пользователя пока нет профилей </p>
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