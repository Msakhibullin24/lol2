<section>
        <h2 class="text-lg font-medium ">
            <img src="/img/1.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация программы для ЭВМ') }}<div class="" style="    display: block;    position: relative;    float: inline-end;">
            <a type="button" class="text-black px-4 py-2  transition ease-in-out duration-150 button_close" href="/rights">Отмена</a></div>
        </h2>
	<div class="form_column">
    <form method="post" action="{{ route('orders.store') }}" class="mt-6 space-y-6">
        @csrf
		<input type="hidden" name="type_order" value="1">
		<div class="form-container">
			<div class="form-field w3" style="    display: block;">
				<label class="block font-medium text-sm " for="profile_id">Заявитель</label>
				<select class=" rounded-md shadow-sm mt-1 block w-full" name="profile_id" id="profile_id">
					@foreach  ($profiles as $profile)
					<option value="{{ $profile->id }}">{{ $profile->fio_name }}</option>
					@endforeach 
				</select>
			</div>
			<div class="form-field" style="display: block;padding-top: 19px;">
				<br>
				<a href="/profiles/create?redirect=po">Добавить профиль</a>
			</div>
        </div>
		<hr>
		<br>
		<div class="form-container">
			<div class="form-field w2" >
				<div>
					<x-input-label for="name_evm" :value="__('Название регистрируемой программы для ЭВМ')"  class="required-field" />
					<x-text-input id="name_evm" name="name_evm" type="text" class="mt-1 block w-full" autocomplete="name_evm" required/>
				</div>
			</div>
			<div class="form-field" >
				<div>
					<x-input-label for="year_sozd" :value="__('Год создания')"  class="required-field" />
					<x-text-input id="year_sozd" name="year_sozd" type="text" class="mt-1 block" autocomplete="year_sozd" required/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div>
				<label for="is_world" class="block font-medium text-sm  px-2" class="required-field" >Выпускалась ли программа в свет</label>
				<input type="hidden" name="is_world"  id="is_world" value="iw1">
				<div class="form-field-2">
					<input id="iw1" type="radio" class="sm:ml-6" name="iw1" checked onclick="checkRadio4(name)">
					<label for="iw1" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio4(name)">Нет</label>
				</div>
				<div class="form-field-2">
					<input id="iw2" type="radio" class="sm:ml-6" name="iw2" onclick="checkRadio4(name)">
					<label for="iw2" class="block font-medium text-sm  sm:ml-6" onclick="checkRadio4(name)">Да</label>
				</div>
			</div>
		</div> 
		<div id="iw_form"  style="display: none;padding-top: 0;margin-top: 0;" class="mt-0">
			<div class="form-container">
				<div class="form-field" >
					<div>
						<x-input-label for="iw2_country" :value="__('Страна')"  class="required-field" />
						<x-text-input id="iw2_country" name="iw2_country" type="text" class="mt-1 block " autocomplete="iw2_country" />
					</div>
				</div>
				<div class="form-field" >
					<div>
						<x-input-label for="iw_year" :value="__('Год')"  class="required-field" />
						<x-text-input id="iw_year" name="iw_year" type="text" class="mt-1 block " autocomplete="iw_year" />
					</div>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="naznach" :value="__('Назначение, область применения, функциональные возможности, сведения о наличии персональных данных, составном произведении')"  class="required-field" />
					<textarea id="naznach" name="naznach" rows="2" cols="74" onkeypress="" class="rounded-md shadow-sm mt-1 block w-full" ></textarea>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field" >
				<div>
					<x-input-label for="lp" :value="__('Язык программирования')"  class="required-field" />
					<x-text-input id="lp" name="lp" type="text" class="mt-1 block w-full" autocomplete="lp" />
				</div>
			</div>
			<div class="form-field" >
				<div>
					<x-input-label for="size_c" :value="__('Объем')"  class="required-field" />
					<x-text-input id="size_c" name="size_c" type="text" class="mt-1 block w-full" autocomplete="size_c" />
				</div>
			</div>
			<div class="form-field" >
				<div>
					<x-input-label for="count_authors" :value="__('Количество авторов')"  class="required-field" />
					<x-text-input id="count_authors" name="count_authors" type="number" class="mt-1 block w-full" autocomplete="count_authors" min="0" value="0"/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div>
				<label for="personal_data" class="block font-medium text-smpx-2" class="required-field" >Содержание персональных данных</label>
				<input type="hidden" name="personal_data"  id="personal_data" value="pd1">
				<div class="form-field-2">
					<input id="pd1" type="radio" class="sm:ml-6" name="pd1" checked onclick="checkRadio(name)">
					<label for="pd1" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio(name)">Регистрируемый объект не содержит персональных данных третьих лиц</label>
				</div>
				<div class="form-field-2">
					<input id="pd2" type="radio" class="sm:ml-6" name="pd2" onclick="checkRadio(name)">
					<label for="pd2" class="block font-medium text-sm  sm:ml-6" onclick="checkRadio(name)">Регистрируемый объект содержит персональные данные третьих лиц</label>
				</div>
			</div>
		</div>
		<div id="pd_form"  style="display: none;padding-top: 0;margin-top: 0;" class="mt-0">
			<div class="form-container">
				<div class="form-field" >
					<div>
						<x-input-label for="num_reestr" :value="__('Регистрационный номер в Реестре операторов, осуществляющих обработку персональных данных ')"  class="required-field" />
						<x-text-input id="num_reestr" name="num_reestr" type="text" class="mt-1 block " autocomplete="num_reestr" />
					</div>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="count_copyright_holders_u" :value="__('Количество правообладателей - юридических лиц')"  class="required-field" />
					<x-text-input id="count_copyright_holders_u" name="count_copyright_holders_u" type="number" class="mt-1 block" autocomplete="count_copyright_holders_u" value="0" min="0" required/>
				</div>
			</div>
			<div class="form-field">
				<div>
					<x-input-label for="count_copyright_holders_f" :value="__('Количество правообладателей - физических лиц')"  class="required-field" />
					<x-text-input id="count_copyright_holders_f" name="count_copyright_holders_f" type="number" class="mt-1 block" autocomplete="count_copyright_holders_f" value="0" min="0" required/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<input id="all_f_authors" type="checkbox" class="" name="all_f_authors">
				<label for="all_f_authors" class="block font-medium text-sm  sm:ml-6" class="required-field" >Все правообладатели-физические лица являются авторами</label>
			</div>
		</div>
		<div class="form-container">
			<div>
				<label for="osnovanie" class="block font-medium text-sm px-2" class="required-field" >Основание возникновения права на регистрируемую ЭВМ</label>
				<input type="hidden" name="osnovanie"  id="osnovanie" value="o1">

				<div class="form-field-2">
					<input id="o1" type="radio" class="sm:ml-6" name="o1" checked onclick="checkRadio2(name)">
					<label for="o1" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio2(name)">Заявитель является работодателем автора</label>
				</div>
				<div class="form-field-2">
					<input id="o2" type="radio" class="sm:ml-6" name="o2" onclick="checkRadio2(name)">
					<label for="o2" class="block font-medium text-sm sm:ml-6"  onclick="checkRadio2(name)">Передача прав автором или его правопреемником заявителю</label>
				</div>
				<div class="form-field-2">
					<input id="o3" type="radio" class="sm:ml-6" name="o3" onclick="checkRadio2(name)">
					<label for="o3" class="block font-medium text-sm sm:ml-6"  onclick="checkRadio2(name)">Передача прав работодателем заявителю</label>
				</div>
				<div class="form-field-2">
					<input id="o4" type="radio" class="sm:ml-6" name="o4" onclick="checkRadio2(name)">
					<label for="o4" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio2(name)">Универсальное правопреемство (наследование, реорганизация)</label>
				</div>
				<div class="form-field-2">
					<input id="o5" type="radio" class="sm:ml-6" name="o5" onclick="checkRadio2(name)">
					<label for="o5" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio2(name)">Заявитель является автором</label>
				</div>
				<div class="form-field-2">
					<input id="o6" type="radio" class="sm:ml-6" name="o6" onclick="checkRadio2(name)">
					<label for="o6" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio2(name)">Иное</label>
				</div>
			</div>
		</div>
		<div id="o_form"  style="display: none;padding-top: 0;margin-top: 0;" class="mt-0">
			<div class="form-container">
				<div class="form-field w2" >
					<div>
						<x-input-label for="osnovanie_inoe" :value="__('Основание')"  class="required-field" />
						<x-text-input id="osnovanie_inoe" name="osnovanie_inoe" type="text" class="mt-1 block w-full" autocomplete="osnovanie_inoe" />
					</div>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div>
				<label for="gos_mun_contract" class="block font-medium text-sm  px-2" class="required-field" >Объект создан по государственному или муниципальному контракту (выберите вариант)</label>
				<input type="hidden" name="gos_mun_contract"  id="gos_mun_contract" value="p1">
				
				<div class="form-field-2">
					<input id="p1" type="radio" class="sm:ml-6" name="p1" checked onclick="checkRadio3(name)">
					<label for="p1" class="block font-medium text-sm  sm:ml-6"  onclick="checkRadio3(name)">Не создан</label>
				</div>
				<div class="form-field-2">
					<input id="p2" type="radio" class="sm:ml-6" name="p2" onclick="checkRadio3(name)">
					<label for="p2" class="block font-medium text-sm  sm:ml-6" onclick="checkRadio3(name)">Государственный контракт (укажите дату и номер контракта)</label>
				</div>
				<div class="form-field-2">
					<input id="p3" type="radio" class="sm:ml-6" name="p3" onclick="checkRadio3(name)">
					<label for="p3" class="block font-medium text-sm  sm:ml-6" onclick="checkRadio3(name)">Муниципальный контракт (укажите дату и номер контракта)</label>
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
		<h2 class="px-2">Данные автора</h2>
		<br>
		<div class="form-container">
			<div class="form-field w2" >
				<div>
					<x-input-label for="fio_author" :value="__('ФИО')"  class="required-field" />
					<x-text-input id="fio_author" name="fio_author" type="text" class="mt-1 block w-full" autocomplete="fio_author" />
				</div>
			</div>
			<div class="form-field" >
				<div>
					<x-input-label for="date_r_author" :value="__('Дата рождения')"  class="required-field" />
					<x-text-input id="date_r_author" name="date_r_author" type="date" class="mt-1 block w-full" autocomplete="date_r_author" required/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="grazhd" :value="__('Гражданство')"  class="required-field" />
					<x-text-input id="grazhd" name="grazhd" type="text" class="mt-1 block w-full" autocomplete="grazhd" required/>
				</div>
			</div>
			<div class="form-field" >
				<div>
					<x-input-label for="snils2" :value="__('СНИЛС')"  class="required-field" />
					<x-text-input id="snils2" name="snils2" type="text" class="mt-1 block w-full" autocomplete="snils2" required/>
				</div>
			</div>
			<div class="form-field" >
				<div>
					<x-input-label for="inn" :value="__('ИНН')"  class="required-field" />
					<x-text-input id="inn" name="inn" type="text" class="mt-1 block w-full" autocomplete="inn" required/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field w2" >
				<div>
					<x-input-label for="passp2" :value="__('Паспорт')"  class="required-field" />
					<textarea id="passp2" name="passp2" rows="2" cols="74" onkeypress="" class="  rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field w2" >
				<div>
					<x-input-label for="kotv" :value="__('Краткое описание творческого вклада')"  class="required-field" />
					<textarea id="kotv" name="kotv" rows="2" cols="74" onkeypress="" class="  rounded-md shadow-sm mt-1 block w-full" required></textarea>
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
                    class="text-sm "
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

function del_doverka(){
	const data = {
	  "filename": document.getElementById("o_doverka").value,
	  "order_id": document.getElementById("id").value,
	  "field": 'doverka',
	  "_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
	};
	const Http = new XMLHttpRequest();
	const url='/orders/del_img';
	Http.open("POST", url);
	Http.setRequestHeader("Content-Type", "application/json");
	Http.send(JSON.stringify(data));
	location.reload();
}
</script>
<script>
function checkRadio(name) {
	if (name == "pd1") {
		document.getElementById("personal_data").value = "pdl";
		document.getElementById("pd1").checked = true;
		document.getElementById("pd2").checked = false;
		document.getElementById("pd_form").style.display = 'none';
		document.getElementById("num_reestr").removeAttribute('required');
	} else if (name == "pd2") {
		document.getElementById("personal_data").value = "pd2";
		document.getElementById("pd1").checked = false;
		document.getElementById("pd2").checked = true;
		document.getElementById("pd_form").style.display = 'block';
		document.getElementById("num_reestr").setAttribute('required','required');
	}
}

function checkRadio2(name) {
	if (name == "o1") {
		document.getElementById("osnovanie").value = "ol";
		document.getElementById("o1").checked = true;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o2") {
		document.getElementById("osnovanie").value = "o2";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = true;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o3") {
		document.getElementById("osnovanie").value = "o3";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = true;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o4") {
		document.getElementById("osnovanie").value = "o4";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = true;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o5") {
		document.getElementById("osnovanie").value = "o5";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = true;
		document.getElementById("o6").checked = false;
		document.getElementById("o_form").style.display = 'none';
		document.getElementById("osnovanie_inoe").removeAttribute('required');
	} else if (name == "o6") {
		document.getElementById("osnovanie").value = "o6";
		document.getElementById("o1").checked = false;
		document.getElementById("o2").checked = false;
		document.getElementById("o3").checked = false;
		document.getElementById("o4").checked = false;
		document.getElementById("o5").checked = false;
		document.getElementById("o6").checked = true;
		document.getElementById("o_form").style.display = 'block';
		document.getElementById("osnovanie_inoe").setAttribute('required','required');
	}
}

function checkRadio3(name) {
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

function checkRadio4(name) {
	if (name == "iw1") {
		document.getElementById("is_world").value = "iw1";
		document.getElementById("iw1").checked = true;
		document.getElementById("iw2").checked = false;
		document.getElementById("iw_form").style.display = 'none';
		document.getElementById("iw2_country").removeAttribute('required');
		document.getElementById("iw2_country").removeAttribute('required');
	} else if (name == "iw2") {
		document.getElementById("is_world").value = "iw2";
		document.getElementById("iw1").checked = false;
		document.getElementById("iw2").checked = true;
		document.getElementById("iw_form").style.display = 'block';
		document.getElementById("iw2_country").setAttribute('required','required');
		document.getElementById("iw2_country").setAttribute('required','required');
	}
}

</script>