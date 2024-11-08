<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl  leading-tight">
            {{ __('Мои заявки') }}
        </h2>
    </x-slot>

	<div class="py-4 text-center">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="p-6 ">
				<div class="container">
					<a class="service" href="/orders/create/book">
						<div class="flex items-center">
                            <img src="/img/0.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация авторского права на произведение</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/po">
						<div class="flex items-center">
                            <img src="/img/1.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация программы для ЭВМ</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/prom">
						<div class="flex items-center">
                            <img src="/img/2.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация промышленного образца</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/tz">
						<div class="flex items-center">
                            <img src="/img/3.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация товарного знака</span>
							</div>
                        </div>
					</a>
				</div>
			</div>
		</div>
	</div>

    <div class="py-0">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 order_box">
            <div class=" overflow-hidden shadow-sm sm:rounded-lg">
                <div class=" ">
					@if (count($orders) == 0)
					<div class="card my-3 text-center">
						<h2>У вас еще оформлено ни одних прав. Создайте заявку сейчас</h2>
					</div>
					@else
					<div class="card my-3">
						<table class="table">
							<thead>
								<tr>
									<th width="5%">№</th>
									<th width="80%">Объект права на интеллектуальную собственность</th>
									<th width="6%">Статус</th>
									<!--<th width="15%">Действия</th>-->
								<tr>
							</thead>

							<tbody>
								@forelse ($orders as $order)
									<tr>
										<td>{{ $order->id }}</td>
										<td><a href="/orders/{{ $order->id }}" type_order="View" class="btn btn-sm btn-info">{{ $order->type_order }}</a></td>
										<!-- <td><a href="{{ route('orders.show', $order->id) }}" type_order="View" class="btn btn-sm btn-info">{{ $order->type_order }}</a></td> -->
										<td>{{ $order->status }}</td>
										<!--
										<td>
											<form action="{{ route('orders.destroy', $order->id) }}" method="order">
												@csrf
												<a href="{{ route('orders.edit', $order->id) }}" type_order="Edit" class="btn btn-sm btn-success">Редактировать </a>

												@method('DELETE')
												<button type="submit" onclick="return confirm('Are you sure?');" type_order="Delete" class="btn btn-sm btn-danger"> Удалить </button>
											</form>
										</td>
										-->
									</tr>
								@empty
									<tr>
										<td colspan="4">
											<p class="text-danger text-center fw-bold"> У Вас пока нет заявок </p>
										</td>
									</tr>
								@endforelse
							</tbody>
						</table>
					</div>
					@endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>

