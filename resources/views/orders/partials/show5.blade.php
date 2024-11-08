<section>
	<h2 class="text-lg font-medium ">
        <img src="/img/4.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация изобретения/полезной модели') }}
		<div class="" style="    display: block;    position: relative;    float: inline-end;">
			<a type="button" class=" close_order" href="/orders">Закрыть</a>
		</div>
	</h2>
	<div class="form_column">
		<form method="post" action="{{ route('orders.update') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
			@csrf
			<input type="hidden" name="type_order" value="4">
			<input type="hidden" name="id" value="{{ $order->id }}" id="id">
			<div class="form-container">
				<div class="form-field w3" style="display: block;">
					<label class="block font-medium text-sm " for="profile_id">Заявитель</label>
					<select class=" rounded-md shadow-sm mt-1 block w-full" name="profile_id" id="profile_id" disabled>
						@foreach  ($profiles as $profile)
						<option value="{{ $profile->id }}">{{ $profile->fio_name }}</option>
						@endforeach 
					</select>
				</div>
			</div>
			<hr>
			<br>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="name_izopm" :value="__('Название изобретения/полезной модели')" />
						<x-text-input id="name_izopm" name="name_izopm" type="text" class="mt-1 block w-full" autocomplete="name_izopm" required value="{{$order->name_izopm}}"/>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="slov_oboz" :value="__('Область техники, к которой относится заявляемое техническое решение. Укажите, к какой области техники относится патентуемое решение или где/для чего может быть использовано')" />
						<textarea id="izopm_1" name="izopm_1" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->izopm_1}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="izopm_2" :value="__('Известные аналоги. Какими недостатками они обладают по сравнению с предлагаемым к заявляемому техническому решению')" />
						<textarea id="izopm_2" name="izopm_2" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->izopm_2}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="izopm_3" :value="__('Укажите решаемую техническую проблему с помощью патентуемого объекта, которая существует в данной области техники на сегодняшний день. Технический результат (эффект, свойство, явление) проявляющийся при изготовлении или использовании технического решения. Сформулируйте технический эффект, который объективно проявляется при создании или использовании патентуемого объекта, например, снижение силы трения, повышение прочности конструкции, снижение материалоемкости при сохранении показателей прочности и т.п.')" />
						<textarea id="izopm_3" name="izopm_3" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->izopm_3}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="izopm_4" :value="__('Сущность созданного технического решения')" />
						<textarea id="izopm_4" name="izopm_4" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->izopm_4}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="izopm_6" :value="__('Принцип работы (описать коротко каким образом функционирует заявляемое техническое решение или способ осуществления процесса) ')" />
						<textarea id="izopm_6" name="izopm_6" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->izopm_6}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						@if ($order->izopm_5!='')
							<a href="/storage/{{$order->izopm_5}}" target="_blank">{{$order->izopm_5}}</a>&nbsp&nbsp<input type="button" value="Удалить" onclick="del_izo_oboz()" class=" px-4 py-2 b transition ease-in-out duration-150">
							<input type="hidden" id="izopm_5" value="{{$order->izopm_5}}">
						@else
						<x-input-label for="izopm_5" :value="__('Фигуры чертежей')" />
						<x-text-input id="izopm_5" name="izopm_5" type="file" class="mt-1 block w-full" autocomplete="izopm_5" />
						@endif
					</div>
				</div>
			</div>
			<hr>
			<div class="form-container">
				<div class="form-field">
					<div>
						@if ($order->doverka!='')
							<a href="/storage/{{$order->doverka}}" target="_blank">{{$order->doverka}}</a>&nbsp&nbsp<input type="button" value="Удалить" onclick="del_doverka()" class=" px-4 py-2 b transition ease-in-out duration-150">
							<input type="hidden" id="o_doverka" value="{{$order->doverka}}">
						@else
						<x-input-label for="doverka" :value="__('Доверенность')" />
						<x-text-input id="doverka" name="doverka" type="file" class="mt-1 block w-full" autocomplete="doverka" />
						@endif
					</div>
				</div>
			</div>
			<hr>
			<div class="flex items-center gap-4">
				<x-primary-button>{{ __('Сохранить') }}</x-primary-button>
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
		<h2>Информация о услуге</h2>
		<div class="price_column">
			Стоимость услуги: {{ $service->price }} р
		</div>
		<br>
		<div class="price_column">
			{{ $service->description }}
		</div>
	</div>
</section>
<script>

function del_izo_oboz(){
	const data = {
	  "filename": document.getElementById("izopm_5").value,
	  "order_id": document.getElementById("id").value,
	  "field": 'izopm_5',
	  "_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
	};
	const Http = new XMLHttpRequest();
	const url='/orders/del_img';
	Http.open("POST", url);
	Http.setRequestHeader("Content-Type", "application/json");
	Http.send(JSON.stringify(data));
	location.reload();
}

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