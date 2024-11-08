<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl leading-tight">
            {{ __('Счета на оплату') }}
        </h2>
    </x-slot>
<br>
    <div class="py-0">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class=" shadow-sm sm:rounded-lg">
                <div class="p-6 order_box">
					<div class="card my-3">
					@if (count($payments) == 0)
					<h2>У вас еще нет счетов</h2>
					@else
						<table class="table reestr">
							<thead>
								<tr>
									<th width="5%">№ счета</th>
									<th width="10%">Дата</th>
									<th width="30%">Объект права на интеллектуальную собственность</th>
									<th width="10%">Сумма (руб)</th>
									<th width="10%">Статус</th>
									<th width="6%"></th>
									<!--<th width="15%">Действия</th>-->
								<tr>
							</thead>

							<tbody>
								@forelse ($payments as $payment)
									<tr>
										<td>{{ $payment->id }}</td>
										<td>{{ $payment->created_at }}</td>
										<td><a href="/orders/{{ $payment->order_id }}" target="_blank">{{ $payment->type_order }}</a></td>
										<td>{{ $payment->amount }}</a></td>
										<td>@if ($payment->status == 0) <span class="badge badge-danger">Не оплачено</span> @elseif ($payment->status == 1) <span class="badge badge-success">Оплачено</span>@endif</td>
										<td>@if ($payment->status == 0)
											<form class="payform-tinkoff" name="payform-tinkoff" onsubmit="pay(this); return false;">
												<input class="payform-tinkoff-row" type="hidden" name="terminalkey" value="1703685971547DEMO">
												<input class="payform-tinkoff-row" type="hidden" placeholder="Номер заказа" name="order" value="{{ $payment->order_id }}">
												<input class="payform-tinkoff-row" type="hidden" name="frame" value="false">
												<input class="payform-tinkoff-row" type="hidden" name="language" value="ru">
												<input class="payform-tinkoff-row" type="hidden" name="amount" required value="{{ $payment->amount }}">
												<input class="payform-tinkoff-row" type="hidden" name="email" value="{{ $payment->email }}" >
												<input class="payform-tinkoff-row" type="hidden" name="DATA" value="Number={{ $payment->order_id }}">
												<input class="payform-tinkoff-row payform-tinkoff-btn" type="submit" value="Оплатить">
											</form>@elseif ($payment->status == 1) - @endif
										</td>
									</tr>
								@empty
									<tr>
										<td colspan="4">
											<p class="text-danger text-center fw-bold"> У Вас пока нет счетов </p>
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
<script src="https://securepay.tinkoff.ru/html/payForm/js/tinkoff_v2.js"></script>
</x-app-layout>

