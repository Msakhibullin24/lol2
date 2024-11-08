<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl  leading-tight">
            {{ __('Мой профиль') }}
        </h2>
    </x-slot>
    <div class="py-2">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white  overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6  ">
					<div class="card my-3">
						<div id="fl_form">
							<div class="form-container">
								<div class="form-field w2">
									<div>
										<x-input-label for="fio" :value="__('ФИО')" />
										<x-text-input id="fio" name="fio" type="text" class="mt-1 block w-full" autocomplete="fio" required value="{{$profiles->fio}}">
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field" >
									<div>
										<x-input-label for="snils" :value="__('СНИЛС')" />
										<x-text-input id="snils" name="snils" type="text" class="mt-1 block w-full" autocomplete="snils" required/>
									</div>
								</div>
								<div class="form-field" >
									<div>
										<x-input-label for="inn" :value="__('ИНН')" />
										<x-text-input id="inn" name="inn" type="text" class="mt-1 block w-full" autocomplete="inn" required/>
									</div>
								</div>
								<div class="form-field" >
									<div>
										<x-input-label for="grazhd" :value="__('Гражданство')" />
										<x-text-input id="grazhd" name="grazhd" type="text" class="mt-1 block w-full" autocomplete="grazhd" required/>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field">
									<div>
										<x-input-label for="passport" :value="__('Паспорт')" />
										<textarea id="passport" name="passport" rows="3" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required></textarea>
									</div>
								</div>	
							</div> 
							<div class="form-container">
								<div class="form-field">
									<div>
										<x-input-label for="address" :value="__('Адрес проживания с индексом')" />
										<textarea id="address" name="address" rows="3" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required></textarea>
									</div>
								</div>	
							</div> 
						</div>
					</div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>