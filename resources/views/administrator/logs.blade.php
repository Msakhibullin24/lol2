<x-administrator-app-layout>
	<div class="content-header">
		<div class="container-fluid">
		  <div class="row mb-2">
			<div class="col-sm-6">
			  <h1 class="m-0">Журнал событий</h1>
			</div>
			<div class="col-sm-6">
			  <ol class="breadcrumb float-sm-right">
				<li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
				<li class="breadcrumb-item active">Журнал событий</li>
			  </ol>
			</div>
		  </div>
		</div>
	</div>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body table-responsive p-0">
							<table class="table table-hover text-nowrap">
								<thead>
									<tr>
										<th>Дата</th>
										<th>Запись</th>
										<th>IP</th>
										<th>Пользователь</th>
									</tr>
								</thead>
								<tbody>
								@forelse ($logs as $log)
									<tr>
										<td>{{ $log->created_at }}</td>
										<td>{{ $log->subject }}</td>
										<td>{{ $log->ip }}</td>
										<td>{{ $log->email }}</td>
									</tr>
								@empty
									<tr>
										<td colspan="5">
											<p class="text-danger text-center fw-bold"> Еще нет ни одной записи</p>
										</td>
									</tr>
								@endforelse
								</tbody>
							</table>
						</div>
					</div>	
				</div>
				<div class="col-12">
					{!! $logs->appends(\Request::except('page'))->render() !!}
				</div>
			</div>
		</div>
	</div>
</x-administrator-app-layout>