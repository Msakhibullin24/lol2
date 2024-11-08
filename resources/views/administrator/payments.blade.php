<x-administrator-app-layout>
	<div class="content-header">
		<div class="container-fluid">
		  <div class="row mb-2">
			<div class="col-sm-6">
			  <h1 class="m-0">Платежи</h1>
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
										<th>ФИО</th>
										<th>E-mail</th>
										<th>Услуга</th>
										<th>Сумма (руб)</th>
										<th>Статус</th>
									</tr>
								</thead>
								<tbody>
								@forelse ($payments as $payment)
									<tr>
										<td>{{ $payment->created_at }}</td>
										<td>{{ $payment->name }}</td>
										<td>{{ $payment->email }}</td>
										<td>{{ $payment->type_order }}</td>
										<td>{{ $payment->amount }}</td>
										<td>@if ($payment->status == 0)  <span class="badge badge-danger">Не оплачено</span> 	@elseif ($payment->status == 1)  <span class="badge badge-success">Оплачено</span>@endif</td>
									</tr>
								@empty
									<tr>
										<td colspan="5">
											<p class="text-danger text-center fw-bold"> Еще нет ни одного счета</p>
										</td>
									</tr>
								@endforelse
								</tbody>
							</table>
						</div>
					</div>	
				</div>
				<div class="col-12">
					{!! $payments->appends(\Request::except('page'))->render() !!}
				</div>
			</div>
		</div>
	</div>
</x-administrator-app-layout>