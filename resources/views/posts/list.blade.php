<x-guest-layout>
	<br>
	<br>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Реестр прав') }}
        </h2>
    </x-slot>


    <div class="py-0">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
					<div class="card my-3">
					<h1>Блог</h1>
					<br>

					</div>
                </div>
            </div>
        </div>
    </div>

	<div class="py-4 text-center">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="text-gray-900 dark:text-gray-100">
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


</x-guest-layout>
