<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl leading-tight">
            {{ __('Мои профили') }}
        </h2>
		<a href="/profiles/create" class="add_profile">Добавить профиль</a>
    </x-slot>
	<br>
    <div class="py-0">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="shadow-sm sm:rounded-lg">
                <div class="p-6 order_box">
					<div class="card my-3">
						@if(count($profiles)==0)
						<p class="text-danger text-center fw-bold"> У вас пока нет профилей </p>
						@else
						<table class="table">
							<thead>
								<tr>
									<th width="5%">№</th>
									<th width="15%">Тип профиля</th>
									<th width="50%">ФИО/Наименование</th>
									<th width="20%"></th>
								<tr>
							</thead>
							<tbody>
							@foreach ($profiles as $profile)
								<tr>
									<td>{{ $profile->id }}</td>
									<td>
										@if ($profile->type==0) ФЛ @endif
										@if ($profile->type==1) ЮЛ @endif
										@if ($profile->type==2) ЮЛ @endif
									</td>
									<td>{{ $profile->fio_name }}</td>
									<td><a class="btn btn-primary btn-sm" href="/profiles/{{$profile->id}}" style="background: #fff; padding: 2px;    padding-left: 10px;    padding-right: 10px;"><i class="fas fa-folder"></i> Просмотр</a></td>
								</tr>
							@endforeach
							</tbody>
						</table>
						@endif
					</div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>