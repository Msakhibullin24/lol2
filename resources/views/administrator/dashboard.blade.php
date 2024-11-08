<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Заявки</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item active">Заявки</li>
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
										<th>@sortablelink('id','№')</th>
										<th>Заявитель</th>
										<th>Объект интеллектуальной собственности</th>
										<th>@sortablelink('created_at','Дата подачи')</th>
										<th>Статус</th>
										<th>Платежный статус</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								@forelse ($orders as $order)
									<tr>
										<td>{{ $order->id }}</td>
										<td>
										@if ($order->applicant->type == 0) 
										{{ $order->applicant->fio }} {{ $order->applicant->fio_name }} {{ $order->applicant->fio_otch }} 
										@else
										{{ $order->applicant->ur_name }}
										@endif
										</td>
										<td>{{ $order->type_order }}</td>
										<td>{{ $order->created_at->format('d-m-Y') }}</td>
										<td> 
											@if 	($order->status == 0)  <span class="badge badge-success">Новая</span> 
											@elseif ($order->status == 1)  <span class="badge badge-warning">В работе</span> 
											@elseif ($order->status == 2)  <span class="badge badge-primary">Завершена</span> 
											@elseif ($order->status == 3)  <span class="badge badge-danger">Отменена</span> 
											@endif
										</td>
										<td> 
											@if 	($order->pay_status == 0)  <span class="badge badge-danger">Не оплачено</span> 
											@elseif ($order->pay_status == 1)  <span class="badge badge-success">Оплачено</span>
											@endif
										</td>
										<td><a class="btn btn-primary btn-sm" href="/administrator/order/{{$order->id}}"><i class="fas fa-folder"></i> Просмотр</a></td>
									</tr>
								@empty
									<tr>
										<td colspan="5">
											<p class="text-danger text-center fw-bold"> Еще нет ни одной заявки</p>
										</td>
									</tr>
								@endforelse
								</tbody>
							</table>
						</div>
					</div>	
				</div>
				<div class="col-12">
					{!! $orders->appends(\Request::except('page'))->render() !!}
				</div>
			</div>
		</div>
	</div>
</div>
</x-administrator-app-layout>