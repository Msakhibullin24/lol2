<section>
        <h2 class="text-lg font-medium  ">
            <img src="/img/2.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация промышленного образца') }}<div class="" style="    display: block;    position: relative;    float: inline-end;">
            <a type="button" class="text-black px-4 py-2  transition ease-in-out duration-150 button_close" href="/rights">Отмена</a></div>
        </h2>
	<div class="form_column">
    <form method="post" action="{{ route('orders.store') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
        @csrf
		<input type="hidden" name="type_order" value="2">
		<div class="form-container">
			<div class="form-field w3" style="    display: block;">
				<label class="block font-medium text-sm  " for="profile_id">Заявитель</label>
				<select class="        rounded-md shadow-sm mt-1 block w-full" name="profile_id" id="profile_id">
					@foreach  ($profiles as $profile)
					<option value="{{ $profile->id }}">{{ $profile->fio_name }}</option>
					@endforeach 
				</select>
			</div>
			<div class="form-field" style="display: block;padding-top: 19px;">
				<br>
				<a href="/profiles/create?redirect=prom">Добавить профиль</a>
			</div>
        </div>
		<hr>
		<br>
		<div class="form-container">
			<div class="form-field  w2">
				<div>
					<x-input-label for="name_prom" :value="__('Название промышленного образца')"  class="required-field" />
					<x-text-input id="name_prom" name="name_prom" type="text" class="mt-1 block w-full" autocomplete="name_prom" required/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="descr_po" :value="__('Один ПО или группа ПО (набор/комплект или варианты)?')"  class="required-field" />
					<small class="mt-1 text-sm  ">*При выборе комплекта указывается название в целом</small>
					<textarea id="descr_po" name="descr_po" rows="5" cols="75" onkeypress="" class="        rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>	
		</div>
		<hr>
		<br>
		<div class="form-container">
			<div>
				<label for="gos_mun_contract" class="block font-medium text-sm   px-2">Объект создан по государственному или муниципальному контракту (выберите вариант)</label>
				<div class="form-field">
					<input id="p1" type="radio" class="" name="p1" checked onclick="checkRadio2(name)">
					<label for="p1" class="block font-medium text-sm   sm:-my-px sm:ml-6"  onclick="checkRadio(name)">Не создан</label>
					
					<input id="p2" type="radio" class="sm:ml-6" name="p2" onclick="checkRadio2(name)">
					<label for="p2" class="block font-medium text-sm   sm:ml-6" onclick="checkRadio2(name)">Государственный контракт (укажите дату и номер контракта)</label>
					
					<input id="p3" type="radio" class="sm:ml-6" name="p3" onclick="checkRadio2(name)">
					<label for="p3" class="block font-medium text-sm   sm:ml-6" onclick="checkRadio2(name)">Муниципальный контракт (укажите дату и номер контракта)</label>
					<input type="hidden" name="gos_mun_contract"  id="gos_mun_contract" value="p1">
				</div>
			</div>
		</div>
		<div id="p_form"  style="display:none">
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="date_contract" :value="__('Дата контракта')"  class="required-field" />
						<x-text-input id="date_contract" name="date_contract" type="date" class="mt-1 block w-full" autocomplete="date_contract" />
					</div>
				</div>
							
				<div class="form-field" >
					<div>
						<x-input-label for="num_contract" :value="__('Номер контракта')"  class="required-field" />
						<x-text-input id="num_contract" name="num_contract" type="text" class="mt-1 block w-full" autocomplete="num_contract" />
					</div>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field ">
				<div>
					<x-input-label for="desc_prom" :value="__('Описание промышленного образца. ')"  class="required-field" />
					<small class="mt-1 text-sm  ">Описание должно быть кратким и давать представление о характеристиках объекта</small>
					<textarea id="desc_prom" name="desc_prom" rows="5" cols="74" onkeypress="" class="        rounded-md shadow-sm mt-1 block w-full" ></textarea>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field w2">
				<div>
					<x-input-label for="izo_izd" :value="__('Изображения изделия (формат JPG)')"  class="required-field" />
					<x-text-input id="izo_izd" name="izo_izd" type="file" class="mt-1 block w-full" autocomplete="izo_izd" />
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field w2">
				<div>
					<x-input-label for="izo_chert" :value="__('Чертежи общего вида изделия (если имеются)')"  class="required-field" />
					<x-text-input id="izo_chert" name="izo_chert" type="file" class="mt-1 block w-full" autocomplete="izo_chert" />
				</div>
			</div>
		</div>
        <div class="flex items-center gap-4">
            <x-primary-button>{{ __('Отправить') }}</x-primary-button>
            @if (session('status') === 'password-updated')
                <p
                    x-data="{ show: true }"
                    x-show="show"
                    x-transition
                    x-init="setTimeout(() => show = false, 2000)"
                    class="text-sm  "
                >{{ __('Сохранено.') }}</p>
            @endif
        </div>
    </form>
	</div>
	<div class="descr_coumn">
		<div class="price_column">
			Стоимость услуги: {{ $service->price }} р
		</div>
		<br>
		<div class="term_column">
			Срок выполнения услуги (дней): {{ $service->term }}
		</div>
		<br>
		<div class="price_column">
			{{ $service->description }}
		</div>
	</div>
</section>

<script>

function checkRadio(name) {
	if (name == "fl") {
		document.getElementById("type_z").value = "fl";
		document.getElementById("fl").checked = true;
		document.getElementById("ul").checked = false;
		document.getElementById("fl_form").style.display = 'block';
		document.getElementById("ul_form").style.display = 'none';

		document.getElementById("ul_name").removeAttribute('required');
		document.getElementById("uraddr").removeAttribute('required');
		document.getElementById("inn2").removeAttribute('required');
		document.getElementById("ogrn").removeAttribute('required');
		document.getElementById("fio_author").removeAttribute('required');
		document.getElementById("addr_prozh2").removeAttribute('required');

		document.getElementById("fam").setAttribute('required','required');
		document.getElementById("name").setAttribute('required','required');
		document.getElementById("otch").setAttribute('required','required');
		document.getElementById("snils").setAttribute('required','required');
		document.getElementById("inn").setAttribute('required','required');
		document.getElementById("addr_prozh").setAttribute('required','required');
	} else if (name == "ul") {
		document.getElementById("type_z").value = "ul";
		document.getElementById("fl").checked = false;
		document.getElementById("ul").checked = true;
		document.getElementById("fl_form").style.display = 'none';
		document.getElementById("ul_form").style.display = 'block';

		document.getElementById("fam").removeAttribute('required');
		document.getElementById("name").removeAttribute('required');
		document.getElementById("otch").removeAttribute('required');
		document.getElementById("snils").removeAttribute('required');
		document.getElementById("inn").removeAttribute('required');
		document.getElementById("addr_prozh").removeAttribute('required');

		document.getElementById("ul_name").setAttribute('required','required');
		document.getElementById("uraddr").setAttribute('required','required');
		document.getElementById("inn2").setAttribute('required','required');
		document.getElementById("ogrn").setAttribute('required','required');
		document.getElementById("fio_author").setAttribute('required','required');
		document.getElementById("addr_prozh2").setAttribute('required','required');
	}
}

function checkRadio2(name) {
	if (name == "p1") {
		document.getElementById("gos_mun_contract").value = "pl";
		document.getElementById("p1").checked = true;
		document.getElementById("p2").checked = false;
		document.getElementById("p3").checked = false;
		document.getElementById("p_form").style.display = 'none';
		document.getElementById("date_contract").removeAttribute('required');
		document.getElementById("num_contract").removeAttribute('required');
	} else if (name == "p2") {
		document.getElementById("gos_mun_contract").value = "p2";
		document.getElementById("p1").checked = false;
		document.getElementById("p2").checked = true;
		document.getElementById("p3").checked = false;
		document.getElementById("p_form").style.display = 'block';
		document.getElementById("date_contract").setAttribute('required','required');
		document.getElementById("num_contract").setAttribute('required','required');
	} else if (name == "p3") {
		document.getElementById("gos_mun_contract").value = "p3";
		document.getElementById("p1").checked = false;
		document.getElementById("p2").checked = false;
		document.getElementById("p3").checked = true;
		document.getElementById("p_form").style.display = 'block';
		document.getElementById("date_contract").setAttribute('required','required');
		document.getElementById("num_contract").setAttribute('required','required');
	}
}
</script>
