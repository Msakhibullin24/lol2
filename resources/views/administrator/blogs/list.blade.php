<x-administrator-app-layout>
	<div class="content-header">
		<div class="container-fluid">
		  <div class="row mb-2">
			<div class="col-sm-6">
			  <h1 class="m-0">Блог</h1>
			</div>
			<div class="col-sm-6">
			  <ol class="breadcrumb float-sm-right">
				<li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
				<li class="breadcrumb-item active">Блог</li>
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
										<th>№</th>
										<th>Запись</th>
										<th><a class="btn btn-success" href="{{route('administrator.newblog')}}">Добавить</a></th>
									</tr>
								</thead>
								<tbody>
								@forelse ($blogs as $blog)
									<tr>
										<td>{{ $blog->id }}</td>
										<td>{{ $blog->name }}</td>
										<td><a class="btn btn-primary btn-sm" href="/administrator/blog/{{$blog->id}}"><i class="fas fa-folder"></i> Просмотр</a></td>
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
			</div>
		</div>
	</div>
</x-administrator-app-layout>