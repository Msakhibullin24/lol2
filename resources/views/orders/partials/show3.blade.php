<section>
    <h2 class="text-lg font-medium ">
        <img src="/img/3.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация товарного знака') }}
		<div class="" style="    display: block;    position: relative;    float: inline-end;">
            <a type="button" class=" close_order" href="/orders">Закрыть</a>
		</div>
    </h2>
	<div class="form_column">
		<form method="post" action="{{ route('orders.update') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
			@csrf
			<input type="hidden" name="type_order" value="3">
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
						<x-input-label for="per_tov" :value="__('Перечень товаров и/или услуг')" />
						<textarea id="per_tov" name="per_tov" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->per_tov}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="slov_oboz" :value="__('Словесное обозначение')" />
						<textarea id="slov_oboz" name="slov_oboz" rows="5" cols="74" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->slov_oboz}}</textarea>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						@if ($order->izo_oboz!='')
							<a href="/storage/{{$order->izo_oboz}}" target="_blank">{{$order->izo_oboz}}</a>&nbsp&nbsp<input type="button" value="Удалить" onclick="del_izo_oboz()" class=" px-4 py-2 b transition ease-in-out duration-150">
							<input type="hidden" id="o_izo_oboz" value="{{$order->izo_oboz}}">
						@else
						<x-input-label for="izo_oboz" :value="__('Изобразительное обозначение (формат JPG)')" />
						<x-text-input id="izo_oboz" name="izo_oboz" type="file" class="mt-1 block w-full" autocomplete="izo_oboz" />
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
	  "filename": document.getElementById("o_izo_oboz").value,
	  "order_id": document.getElementById("id").value,
	  "field": 'izo_oboz',
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