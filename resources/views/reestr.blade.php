<x-guest-layout>
	<br>
	<br>
	<section data-section-id="1" data-share="" data-category="sign-light-mono" data-component-id="16fa08db_01_awz">
		<div class="flex flex-wrap" style="flex-flow: column;width: 50%;margin: 0 auto;">
			<div class="pt-6 lg:pt-16 pb-6 w-full lg:w-1/2">
				<div class="max-w-md mx-auto">
					<div class="mb-6 lg:mb-20 w-full px-3 flex items-center justify-center">
						<h1 class="text-2xl font-bold" data-config-id="header" style="font-size: -webkit-xxx-large;">Реестр РИД</h1>
					</div>
				</div>
				<form action="">
					<div class="flex flex-wrap">
						<div class="mb-3 sm:w-full lg:w-1/2 px-2">
							<input class=" w-full lg:w-1/2 p-4 text-xs bg-gray-50 outline-none rounded" type="text" placeholder="Введите слова для поиска">
						</div>
						<div class="mb-3 sm:w-1/3 lg:w-1/3 px-2">
							<input class="w-full p-4 text-xs bg-gray-800 outline-none rounded text-white" type="button" value="Поиск">
						</div>
					</div>
				</form>
			</div>
			<div class="pt-6 lg:pt-16 pb-6 w-full lg:w-1/2">
				<br>
			</div>
		</div>
	</section>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Реестр прав') }}
        </h2>
    </x-slot>


    <div class="py-0">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="window overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
					<div class="card my-3">
					<h1>Реестр прав</h1>
					<br>
						<table class="table reestr">
							<thead>
								<tr>
									<th width="6%"></th>
									<th width="20%"></th>
									<th width="20%"></th>
									<th width="4%"></th>
									<!--<th width="15%">Действия</th>-->
								<tr>
							</thead>

							<tbody>
								@forelse ($orders as $order)
									<tr>
										<td>{{ $order->updated_at->format('d-m-Y') }}</td>
										<td>{{ $order->type_order }}</td>
										<td><!-- {{ $order->nazvanie }} --></td> 
										<td><a href="/storage/{{ $order->result }}" target="_blank"><img src="/img/zagruzka.png" style="    display: inline-block;    float: right; width:16px;"> Результат</a></td>
									</tr>
								@empty
									<tr>
										<td colspan="4">
											<p class="text-danger text-center fw-bold">Реестр пока пуст</p>
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



</x-guest-layout>
