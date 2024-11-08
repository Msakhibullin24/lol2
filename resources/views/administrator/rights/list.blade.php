<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Реестр прав</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Реестр прав</li>
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
						<div class="card-header">
							<div class="card-tools">
								<div class="input-group input-group-sm" style="width: 150px;">
									<a class="btn btn-primary" href="{{route('administrator.newrights')}}">Добавить</a>
								</div>
							</div>
						</div>
						<div class="card-body table-responsive p-0">
							<table class="table table-hover text-nowrap">
								<thead>
									<tr>
										<th>№</th>
										<th>Объект интеллектуальной собствености</th>
										<th>Стоимость (руб)</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								@forelse ($rights as $rigth)
									<tr>
										<td>{{ $rigth->id }}</td>
										<td>{{ $rigth->name }}</td>
										<td>{{ $rigth->price }}</td>
										<td><a class="btn btn-primary btn-sm" href="/administrator/right/{{$rigth->id}}"><i class="fas fa-folder"></i> Просмотр</a></td>
									</tr>
								@empty
									<tr>
										<td colspan="5">
											<p class="text-danger text-center fw-bold"> Еще нет ни одного права</p>
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