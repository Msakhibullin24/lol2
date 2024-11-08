<x-administrator-app-layout>
	<div class="content-header">
		<div class="container-fluid">
		  <div class="row mb-2">
			<div class="col-sm-6">
			  <h1 class="m-0">Наши преимущества</h1>
			</div>
			<div class="col-sm-6">
			  <ol class="breadcrumb float-sm-right">
				<li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
				<li class="breadcrumb-item"><a href="/administrator/options/">Настройки</a></li>
				<li class="breadcrumb-item active">Наши преимущества</li>
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
										<th>Блок</th>
									</tr>
								</thead>
								<tbody>
								@forelse ($advantages as $advantage)
									<tr>
										<td><a href="/administrator/options/advantage/{{ $advantage->id }}">{{ $advantage->title }}</a></td>
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