<section>
        <h2 class="text-lg font-medium  ">
            <img src="/img/4.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация изобретения') }}<div class="" style="    display: block;    position: relative;    float: inline-end;">
            <a type="button" class="text-black px-4 py-2  transition ease-in-out duration-150 button_close" href="/rights">Отмена</a></div>
        </h2>
	<div class="form_column">
    <form method="post" action="{{ route('orders.store') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
        @csrf
		<input type="hidden" name="type_order" value="4">
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
				<a href="/profiles/create?redirect=izopm">Добавить профиль</a>
			</div>
        </div>
		<hr>
		<br>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="name_izopm" :value="__('Название изобретения.')"   class="required-field" />
					<small class="mt-1 text-sm  ">* Название должно быть кратким и давать представление о назначении объекта патентования и области его применения</small>
					<x-text-input id="name_izopm" name="name_izopm" type="text" class="mt-1 block w-full" autocomplete="name_izopm" required/>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="izopm_1" :value="__('Область техники, к которой относится заявляемое техническое решение. Укажите, к какой области техники относится патентуемое решение или где/для чего может быть использовано')"   class="required-field" />
					<small class="mt-1 text-sm  ">*При выборе комплекта указывается название в целом</small>
					<textarea id="izopm_1" name="izopm_1" rows="5" cols="75" onkeypress="" class="rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>	
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="izopm_2" :value="__('Укажите известные аналоги. Какими недостатками они обладают по сравнению с предлагаемым к заявляемому техническому решению')"   class="required-field" />
					<textarea id="izopm_2" name="izopm_2" rows="5" cols="75" onkeypress="" class="rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>	
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="izopm_3" :value="__('Укажите решаемую техническую проблему с помощью патентуемого объекта, которая существует в данной области техники на сегодняшний день. Технический результат (эффект, свойство, явление) проявляющийся при изготовлении или использовании технического решения. Сформулируйте технический эффект, который объективно проявляется при создании или использовании патентуемого объекта, например, снижение силы трения, повышение прочности конструкции, снижение материалоемкости при сохранении показателей прочности и т.п.')"   class="required-field" />
					<textarea id="izopm_3" name="izopm_3" rows="5" cols="75" onkeypress="" class="rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>	
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="izopm_4" :value="__('Сущность созданного технического решения')"   class="required-field" />
					<small class="mt-1 text-sm  ">Следует описать патентуемое решение, выделить и перечислить все существенные технические признаки, которые позволяют решить техническую проблему и обеспечить технический результат. При выборе существенности признака, учтите, что он должен влиять на достижение технического результата. Укажите какие из признаков патентуемого решения являются наиболее существенными и ранее не применялись в данной области техники.</small>
					<textarea id="izopm_4" name="izopm_4" rows="5" cols="75" onkeypress="" class="rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>	
		</div>
		<div class="form-container">
			<div class="form-field w2">
				<div>
					<x-input-label for="izopm_5" :value="__('Фигуры чертежей')"   class="required-field" />
					<small class="mt-1 text-sm  ">Проиллюстрируете патентуемое решение чертежами или другими материалами (фото, компьютерными изображениями, таблицами и т д.). При описании устройства ссылайтесь на указанные на чертеже позиции. Фигуры чертежей выполняются схематично для понимания сущности патентуемого решения. Для процессов и способов выполнения действий рекомендуется приводить блок-схемы, для устройств – общую совокупность элементом и типы связей между ними</small><br>
					<small class="mt-1 text-sm  ">Формат файла - PDF</small>
					<x-text-input id="izopm_5" name="izopm_5" type="file" class="mt-1 block w-full" autocomplete="izopm_5" />
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field">
				<div>
					<x-input-label for="izopm_6" :value="__('Принцип работы (описать коротко каким образом функционирует заявляемое техническое решение или способ осуществления процесса)')"   class="required-field" />
					<textarea id="izopm_6" name="izopm_6" rows="5" cols="75" onkeypress="" class="rounded-md shadow-sm mt-1 block w-full" required></textarea>
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
