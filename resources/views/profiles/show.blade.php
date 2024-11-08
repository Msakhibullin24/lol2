<x-app-layout> 
    <x-slot name="header">
        <h2 class="font-semibold text-xl  leading-tight">
            {{ __('Мои профили') }}
        </h2>
    </x-slot>
    <div class="py-2">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class=" overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6  order_box">
					<div class="card my-3">
						@if($profiles->type==0)
						<div id="fl_form">
							<div class="" style="    display: block;    position: relative;    float: inline-end;">
								<a type="button" class="px-4 py-2  transition ease-in-out duration-150 button_close" href="/profiles">Закрыть</a>
							</div>
							<form method="post" action="{{ route('profiles.update') }}" class="mt-6 space-y-6">
							<input type="hidden" value="{{$profiles->id}}" name="id">
							<input type="hidden" value="{{$profiles->type}}" name="type">
							@csrf
							
							<div class="form-container">
								<div class="form-field">
									<div>
										<x-input-label for="fio" :value="__('Фамилия')"  class="required-field" />
										<x-text-input value="{{$profiles->fio}}" id="fio" name="fio" type="text" class="mt-1 block w-full" autocomplete="fio" required/>
									</div>
								</div>
								<div class="form-field" >
									<div>
										<x-input-label for="fio_name" :value="__('Имя')"  class="required-field" />
										<x-text-input value="{{$profiles->fio_name}}" id="fio_name" name="fio_name" type="text" class="mt-1 block w-full" autocomplete="fio_name" required/>
									</div>
								</div>
								<div class="form-field" >
									<div>
										<x-input-label for="fio_otch" :value="__('Отчество')"  class="required-field" />
										<x-text-input value="{{$profiles->fio_otch}}" id="fio_otch" name="fio_otch" type="text" class="mt-1 block w-full" autocomplete="fio_otch" required/>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field">
									<div>
										<x-input-label for="snils" :value="__('СНИЛС')" />
										<x-text-input value="{{$profiles->snils}}" id="snils" name="snils" type="text" class="mt-1 block w-full" autocomplete="snils" />
									</div>
								</div>
								<div class="form-field" >
									<div>
										<x-input-label for="inn" :value="__('ИНН')"  class="required-field" />
										<x-text-input value="{{$profiles->inn}}" id="inn" name="inn" type="text" class="mt-1 block w-full" autocomplete="inn" required/>
									</div>
								</div>
								<div class="form-field" >
									<div>
										<x-input-label for="grazhd" :value="__('Гражданство')"  class="required-field" />
										<x-text-input value="{{$profiles->grazhd}}" id="grazhd" name="grazhd" type="text" class="mt-1 block w-full" autocomplete="grazhd" required/>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field">
									<div>
										<x-input-label for="address" :value="__('Адрес проживания с индексом')"  class="required-field" />
										<textarea id="address" name="address" rows="3" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$profiles->address}}</textarea>
									</div>
								</div>	
							</div>
							<div class="form-container">
								<div class="form-field" >
									<div>
										<x-input-label for="phone" :value="__('Телефон')"  class="required-field" />
										<x-text-input value="{{$profiles->phone}}" id="phone" name="phone" type="text" class="mt-1 block w-full" autocomplete="phone" required/>
									</div>
								</div>
								<div class="form-field  w2">
									<div>
										<x-input-label for="email" :value="__('Электронная почта')"  class="required-field" />
										<x-text-input value="{{$profiles->email}}" id="email" name="email" type="email" class="mt-1 block w-full" autocomplete="email" required/>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field" >
									<div>
										<x-primary-button>{{ __('Сохранить') }}</x-primary-button>
									</div>
								</div>
							</div>
							</form>
						</div>
						@else
						<div id="ul_form">
							<div class="" style="    display: block;    position: relative;    float: inline-end;">
								<a type="button" class="px-4 py-2  transition ease-in-out duration-150 button_close" href="/profiles">Закрыть</a>
							</div>
							<form method="post" action="{{ route('profiles.update') }}" class="mt-6 space-y-6">
							<input type="hidden" value="{{$profiles->id}}" name="id">
							<input type="hidden" value="{{$profiles->type}}" name="type">
							@csrf
								<div class="form-container">
									<div class="form-field w2">
										<div>
											<x-input-label for="ur_name" :value="__('Наименование организации/ Наименование ИП')"  class="required-field" />
											<x-text-input value="{{$profiles->ur_name}}" id="ur_name" name="ur_name" type="text" class="mt-1 block w-full" autocomplete="ur_name" />
										</div>
									</div>
								</div>
								<div class="form-container">
									<div class="form-field  w2">
										<div>
											<x-input-label for="ur_address" :value="__('Юридический адрес')"  class="required-field" />
											<textarea id="ur_address" name="ur_address" rows="2" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" >{{$profiles->ur_address}}</textarea>
										</div>
									</div>
								</div>
								<div class="form-container">
									<div class="form-field" >
										<div>
											<x-input-label for="inn_kpp" :value="__('ИНН/КПП')"  class="required-field" />
											<x-text-input value="{{$profiles->inn_kpp}}" id="inn_kpp" name="inn_kpp" type="text" class="mt-1 block w-full" autocomplete="inn_kpp" />
										</div>
									</div>
												
									<div class="form-field" >
										<div>
											<x-input-label for="ogrn_ogrnip" :value="__('ОГРН/ОГРНИП')"  class="required-field" />
											<x-text-input value="{{$profiles->ogrn_ogrnip}}" id="ogrn_ogrnip" name="ogrn_ogrnip" type="text" class="mt-1 block w-full" autocomplete="ogrn_ogrnip" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field" >
									<div>
										<x-input-label for="phone" :value="__('Телефон')"  class="required-field" />
										<x-text-input value="{{$profiles->phone}}" id="phone" name="phone" type="text" class="mt-1 block w-full" autocomplete="phone" required/>
									</div>
								</div>
								<div class="form-field  w2">
									<div>
										<x-input-label for="email" :value="__('Электронная почта')"  class="required-field" />
										<x-text-input value="{{$profiles->email}}" id="email" name="email" type="email" class="mt-1 block w-full" autocomplete="email" required/>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field" >
									<div>
										
										<x-primary-button>{{ __('Сохранить') }}</x-primary-button>
									</div>
								</div>
							</div>
							</form>
						@endif
					</div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>