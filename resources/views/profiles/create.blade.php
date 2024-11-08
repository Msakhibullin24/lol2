<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl  leading-tight">
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="p-4 sm:p-8  order_box shadow sm:rounded-lg">
                <div class="">
					<section>
						<h2 class="font-medium">
							<span class="text-lg"> {{ __('Создать профиль') }}</span>
							<div style="display: block; position: relative; float: inline-end;">
								<a type="button" class="text-black px-4 py-2  transition ease-in-out duration-150 button_close" href="/orders">Отмена</a>
							</div>
						</h2>
						<form method="post" action="{{ route('profiles.store') }}" class="mt-6 space-y-6">
							@csrf
							@if($redirect!='book')
							<div class="form-container">
								<div>
									<label for="type_z" class="block font-medium text-sm ">Тип заявителя</label>
									<div class="form-field-2">
										<input id="fl" type="radio" class="" name="fl" checked onclick="checkRadio(name)">
										<label for="fl" class="block font-medium text-sm  sm:-my-px sm:ml-6"  onclick="checkRadio(name)">Физическое лицо / Самозанятый</label>
									</div> <!-- 
									<div class="form-field-2">
										<input id="ip" type="radio" class="" name="ip" onclick="checkRadio(name)">
										<label for="ip" class="block font-medium text-sm  sm:-my-px sm:ml-6"  onclick="checkRadio(name)">Индивидуальный предприниматель</label>
									</div> -->
									<div class="form-field-2">
										<input id="ul" type="radio" class="" name="ul" onclick="checkRadio(name)">
										<label for="ul" class="block font-medium text-sm  sm:ml-6" onclick="checkRadio(name)">Юридическое лицо</label>
									</div>
								</div>
							</div>
							@endif
							<input type="hidden" name="type"  id="type" value="fl">
							<div id="fl_form">
								<div class="form-container">
									<div class="form-field">
										<div>
											<x-input-label for="fio" :value="__('Фамилия')"  class="required-field" />
											<x-text-input id="fio" name="fio" type="text" class="mt-1 block w-full" autocomplete="fio" required/>
										</div>
									</div>
									<div class="form-field" >
										<div>
											<x-input-label for="fio_name" :value="__('Имя')"  class="required-field" />
											<x-text-input id="fio_name" name="fio_name" type="text" class="mt-1 block w-full" autocomplete="fio_name" required/>
										</div>
									</div>
									<div class="form-field" >
										<div>
											<x-input-label for="fio_otch" :value="__('Отчество')"  class="required-field" />
											<x-text-input id="fio_otch" name="fio_otch" type="text" class="mt-1 block w-full" autocomplete="fio_otch" required/>
										</div>
									</div>
								</div>
								<div class="form-container">
									<div class="form-field" >
										<div>
											<x-input-label for="snils" :value="__('СНИЛС')" />
											<x-text-input id="snils" name="snils" type="text" class="mt-1 block w-full" autocomplete="snils" />
										</div>
									</div>
									<div class="form-field" >
										<div>
											<x-input-label for="inn" :value="__('ИНН')"  class="required-field" />
											<x-text-input id="inn" name="inn" type="text" class="mt-1 block w-full" autocomplete="inn" required/>
										</div>
									</div>
									<div class="form-field" >
										<div>
											<x-input-label for="grazhd" :value="__('Гражданство')"  class="required-field" />
											<x-text-input id="grazhd" name="grazhd" type="text" class="mt-1 block w-full" autocomplete="grazhd" required/>
										</div>
									</div>
								</div>
								<div class="form-container">
									<div class="form-field">
										<div>
											<x-input-label for="address" :value="__('Адрес проживания с индексом')"  class="required-field" />
											<textarea id="address" name="address" rows="3" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required></textarea>
										</div>
									</div>	
								</div> 
							</div>
							<div id="ul_form" style="display:none">
								<div class="form-container">
									<div class="form-field w2">
										<div>
											<x-input-label for="ur_name" :value="__('Наименование организации/ Наименование ИП')"  class="required-field" />
											<x-text-input id="ur_name" name="ur_name" type="text" class="mt-1 block w-full" autocomplete="ur_name" />
										</div>
									</div>
								</div>
								<div class="form-container">
									<div class="form-field  w2">
										<div>
											<x-input-label for="ur_address" :value="__('Юридический адрес')"  class="required-field" />
											<textarea id="ur_address" name="ur_address" rows="2" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" ></textarea>
										</div>
									</div>
								</div>
								<div class="form-container">
									<div class="form-field" >
										<div>
											<x-input-label for="inn_kpp" :value="__('ИНН/КПП')"  class="required-field" />
											<x-text-input id="inn_kpp" name="inn_kpp" type="text" class="mt-1 block w-full" autocomplete="inn_kpp" />
										</div>
									</div>	
									<div class="form-field" >
										<div>
											<x-input-label for="ogrn_ogrnip" :value="__('ОГРН/ОГРНИП')"  class="required-field" />
											<x-text-input id="ogrn_ogrnip" name="ogrn_ogrnip" type="text" class="mt-1 block w-full" autocomplete="ogrn_ogrnip" />
										</div>
									</div>
								</div>
							</div>
							<div class="form-container">
								<div class="form-field" >
									<div>
										<x-input-label for="phone" :value="__('Телефон')"  class="required-field" />
										<x-text-input id="phone" name="phone" type="text" class="mt-1 block w-full" autocomplete="phone" required/>
									</div>
								</div>
								<div class="form-field  w2">
									<div>
										<x-input-label for="email" :value="__('Электронная почта')"  class="required-field" />
										<x-text-input id="email" name="email" type="email" class="mt-1 block w-full" autocomplete="email" required/>
									</div>
								</div>
							</div>
							@if($redirect=='0')
							<div class="flex items-center gap-4">
								<x-primary-button>{{ __('Сохранить') }}</x-primary-button>
								<input type="hidden" name="redirect" value="0">
							</div>
							@else
							<div class="flex items-center gap-4">
								<input type="hidden" name="redirect" value="{{$redirect}}">
								<x-primary-button>{{ __('Сохранить и продолжить') }}</x-primary-button>
							</div>
							@endif
						</form>
					</section>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
<script>
	function checkRadio(name) {
		if (name == "fl") {
			document.getElementById("type").value = "fl";
			document.getElementById("fl").checked = true;
			/*document.getElementById("ip").checked = false;*/
			document.getElementById("ul").checked = false;
			document.getElementById("fl_form").style.display = 'block';
			document.getElementById("ul_form").style.display = 'none';
			document.getElementById("fio").setAttribute('required','required');
			document.getElementById("fio_name").setAttribute('required','required');
			document.getElementById("fio_otch").setAttribute('required','required');
			//document.getElementById("snils").setAttribute('required','required');
			document.getElementById("inn").setAttribute('required','required');
			document.getElementById("grazhd").setAttribute('required','required');
			//document.getElementById("passport").setAttribute('required','required');
			document.getElementById("address").setAttribute('required','required');
			document.getElementById("ur_name").removeAttribute('required');
			document.getElementById("ur_address").removeAttribute('required');
			document.getElementById("inn_kpp").removeAttribute('required');
			document.getElementById("ogrn_ogrnip").removeAttribute('required');
		} /*else if (name == "ip"){
			document.getElementById("type").value = "ip";
			document.getElementById("fl").checked = false;
			document.getElementById("ip").checked = true;
			document.getElementById("ul").checked = false;
			document.getElementById("fl_form").style.display = 'none';
			document.getElementById("ul_form").style.display = 'block';
			document.getElementById("fio").removeAttribute('required');
			document.getElementById("snils").removeAttribute('required');
			document.getElementById("inn").removeAttribute('required');
			document.getElementById("grazhd").removeAttribute('required');
			document.getElementById("passport").removeAttribute('required');
			document.getElementById("address").removeAttribute('required');
			document.getElementById("ur_name").setAttribute('required','required');
			document.getElementById("ur_address").setAttribute('required','required');
			document.getElementById("inn_kpp").setAttribute('required','required');
			document.getElementById("ogrn_ogrnip").setAttribute('required','required');
		}*/ else if (name == "ul") {
			document.getElementById("type").value = "ul";
			document.getElementById("fl").checked = false;
			/*document.getElementById("ip").checked = false;*/
			document.getElementById("ul").checked = true;
			document.getElementById("fl_form").style.display = 'none';
			document.getElementById("ul_form").style.display = 'block';
			document.getElementById("fio").removeAttribute('required');
			document.getElementById("fio_name").removeAttribute('required');
			document.getElementById("fio_otch").removeAttribute('required');
			//document.getElementById("snils").removeAttribute('required');
			document.getElementById("inn").removeAttribute('required');
			document.getElementById("grazhd").removeAttribute('required');
			//document.getElementById("passport").removeAttribute('required');
			document.getElementById("address").removeAttribute('required');
			document.getElementById("ur_name").setAttribute('required','required');
			document.getElementById("ur_address").setAttribute('required','required');
			document.getElementById("inn_kpp").setAttribute('required','required');
			document.getElementById("ogrn_ogrnip").setAttribute('required','required');
		}
	}
</script>