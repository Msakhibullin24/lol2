<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl eading-tight">
            {{ __('Мои заявки') }}
        </h2>
    </x-slot>

	<div class="py-4 text-center">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="p-6 ">
				<div class="container">
					<a class="service" href="/">
						<div class="flex items-center">
                            <img src="/img/0.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация авторского права на произведение</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/">
						<div class="flex items-center">
                            <img src="/img/1.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация программы для ЭВМ</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/">
						<div class="flex items-center">
                            <img src="/img/2.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация промышленного образца</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/">
						<div class="flex items-center">
                            <img src="/img/3.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация товарного знака</span>
							</div>
                        </div>
					</a>
				</div>
				<h2>У вас еще не создано ни одной заявки. Создайте заявку сейчас</h2>
			</div>
		</div>
	</div>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class=" overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 ">
					
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
