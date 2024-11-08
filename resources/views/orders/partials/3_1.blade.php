<section>
        <h2 class="text-lg font-medium  ">
            <img src="/img/3.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация товарного знака') }}<div class="" style="    display: block;    position: relative;    float: inline-end;">
            <a type="button" class="text-black px-4 py-2  transition ease-in-out duration-150 button_close" href="/rights">Отмена</a></div>
        </h2>
	<div class="form_column">
    <form method="post" action="{{ route('orders.store') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
        @csrf
		<input type="hidden" name="type_order" value="3">
		<div class="form-container">
			<div class="form-field w3" style="    display: block;">
				<label class="block font-medium text-sm  " for="profile_id"  class="required-field" >Заявитель</label>
				<select class="        rounded-md shadow-sm mt-1 block w-full" name="profile_id" id="profile_id">
					@foreach  ($profiles as $profile)
					<option value="{{ $profile->id }}">{{ $profile->fio_name }}</option>
					@endforeach 
				</select>
			</div>
			<div class="form-field" style="display: block;padding-top: 19px;">
				<br>
				<a href="/profiles/create?redirect=tz2">Добавить профиль</a>
			</div>
        </div>
		<hr>
		<br>
		<div class="form-container">
			<div class="form-field w2">
				<div>
					<x-input-label for="per_tov" :value="__('Перечень товаров и/или услуг')"   class="required-field" />
					<textarea id="per_tov" name="per_tov" rows="5" cols="74" onkeypress="" class="        rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field w2">
				<div>
					<x-input-label for="slov_oboz" :value="__('Словесное обозначение')"   class="required-field" />
					<textarea id="slov_oboz" name="slov_oboz" rows="5" cols="74" onkeypress="" class="        rounded-md shadow-sm mt-1 block w-full" required></textarea>
				</div>
			</div>
		</div>
		<div class="form-container">
			<div class="form-field w2">
				<div>
					<x-input-label for="izo_oboz" :value="__('Изобразительное обозначение')"   class="required-field" />
					<x-text-input id="izo_oboz" name="izo_oboz" type="file" class="mt-1 block w-full" autocomplete="izo_oboz" required/>
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
  if (name == "ip") {
    document.getElementById("type_z").value = "ip";
    document.getElementById("ip").checked = true;
    document.getElementById("ul").checked = false;
	document.getElementById("ip_form").style.display = 'block';
	document.getElementById("ul_form").style.display = 'none';

	document.getElementById("fam").setAttribute('required','required');
	document.getElementById("name").setAttribute('required','required');
	document.getElementById("otch").setAttribute('required','required');
	document.getElementById("grazhd").setAttribute('required','required');
	document.getElementById("inn").setAttribute('required','required');
	document.getElementById("ogrnip").setAttribute('required','required');
	document.getElementById("snils").setAttribute('required','required');
	document.getElementById("phone").setAttribute('required','required');
	document.getElementById("email").setAttribute('required','required');
	document.getElementById("passp").setAttribute('required','required');
	document.getElementById("uraddr").setAttribute('required','required');
	document.getElementById("kor_addr").setAttribute('required','required');

	document.getElementById("ul_name").removeAttribute('required');
	document.getElementById("uraddr2").removeAttribute('required');
	document.getElementById("kor_addr2").removeAttribute('required');
	document.getElementById("inn2").removeAttribute('required');
	document.getElementById("ogrn").removeAttribute('required');
	document.getElementById("phone2").removeAttribute('required');
	document.getElementById("email2").removeAttribute('required');
	document.getElementById("name_ruk_org").removeAttribute('required');
	document.getElementById("fio_ruk").removeAttribute('required');

  } else if (name == "ul") {
    document.getElementById("type_z").value = "ul";
    document.getElementById("ip").checked = false;
    document.getElementById("ul").checked = true;
	document.getElementById("ip_form").style.display = 'none';
	document.getElementById("ul_form").style.display = 'block';

	document.getElementById("fam").removeAttribute('required');
	document.getElementById("name").removeAttribute('required');
	document.getElementById("otch").removeAttribute('required');
	document.getElementById("grazhd").removeAttribute('required');
	document.getElementById("inn").removeAttribute('required');
	document.getElementById("ogrnip").removeAttribute('required');
	document.getElementById("snils").removeAttribute('required');
	document.getElementById("phone").removeAttribute('required');
	document.getElementById("email").removeAttribute('required');
	document.getElementById("passp").removeAttribute('required');
	document.getElementById("uraddr").removeAttribute('required');
	document.getElementById("kor_addr").removeAttribute('required');
	
	document.getElementById("ul_name").setAttribute('required','required');
	document.getElementById("uraddr2").setAttribute('required','required');
	document.getElementById("kor_addr2").setAttribute('required','required');
	document.getElementById("inn2").setAttribute('required','required');
	document.getElementById("ogrn").setAttribute('required','required');
	document.getElementById("phone2").setAttribute('required','required');
	document.getElementById("email2").setAttribute('required','required');
	document.getElementById("name_ruk_org").setAttribute('required','required');
	document.getElementById("fio_ruk").setAttribute('required','required');
  }
}
</script>
