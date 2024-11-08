<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl   leading-tight">
            {{ __('Мои профили') }}
        </h2>
    </x-slot>

	<div class="py-4 text-center">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<a href="/profiles/create?redirect=tz">Добавить профиль</a>
		</div>
	</div>

    <div class="py-0">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class=" overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 ">
					<div class="card my-3 text-center">
					Для создания заявки на регистрацию товарного знака необходимо заполнить профиль юридического лица
					</div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>