<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Реестр пользователей</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Реестр пользователей</li>
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
							<table class="table table-hover text-nowrap">
								<thead>
									<tr>
										<th>№</th>
										<th>ФИО</th>
										<th>Электронная почта</th>
										<th>Дата регистрации</th>
										<th>Статус</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								@forelse ($users as $user)
									<tr>
										<td>{{ $user->id }}</td>
										<td>{{ $user->name }} {{ $user->name_name }} {{ $user->name_otch }} </td>
										<td>{{ $user->email }}</td>
										<td>{{ $user->created_at	 }}</td>
										<td>
											@if($user->status==0) <span class="badge badge-success">Активен</span>
											@elseif($user->status==1) <span class="badge badge-danger">Неактивен</span>
											@endif
										</td>
										<td><a class="btn btn-primary btn-sm" href="/administrator/user/{{$user->id}}"><i class="fas fa-folder"></i> Просмотр</a></td>
									</tr>
								@empty
									<tr>
										<td colspan="5">
											<p class="text-danger text-center fw-bold"> Еще нет ни одного пользователя</p>
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