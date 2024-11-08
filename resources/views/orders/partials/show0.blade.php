<section>
    <h2 class="text-lg font-medium ">
		<img src="/img/0.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация авторского права на произведение') }}
		<div class="" style="    display: block;    position: relative;    float: inline-end;">
            <a type="button" class="close_order" href="/orders">Закрыть</a>
		</div>
    </h2>
	<div class="form_column">
		<form action="{{ route('orders.update') }}" method="post" enctype="multipart/form-data">
			@csrf
			<input type="hidden" name="type_order" value="0">
			<input type="hidden" name="id" value="{{ $order->id }}" id="id">
			<div class="form-container">
				<div class="form-field w3" style="    display: block;">
					<label class="block font-medium text-sm " for="profile_id">Заявитель</label>
					<select class=" rounded-md shadow-sm mt-1 block w-full" name="profile_id" id="profile_id" disabled>
						@foreach  ($profiles as $profile)
						<option value="{{ $profile->id }}">{{ $profile->fio_name }}</option>
						@endforeach 
					</select>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field  w2">
					<div>
						<x-input-label for="vidp" :value="__('Вид произведения')" />

						<select name="vidp" class=" rounded-md shadow-sm mt-1 block w-full" id="vidp" required>
							<option value="" >Выберите из списка</option>
							<option value="1" @if ($order->vidp=="1") selected @endif >Музыкальное произведение</option>
							<option value="2" @if ($order->vidp=="2") selected @endif >Аудиовизуальное произведение</option>
							<option value="3" @if ($order->vidp=="3") selected @endif >Художественное произведение</option>
							<option value="4" @if ($order->vidp=="4") selected @endif >Фотографическое произведение</option>
							<option value="5" @if ($order->vidp=="5") selected @endif >Текстовое произведение</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="descr" :value="__('Описание произведения')" />
						<textarea id="descr" name="descr" rows="5" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->descr}}</textarea>
					</div>
				</div>	
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="date_s" :value="__('Дата создания')" />
						<x-text-input id="date_s" name="date_s" type="date" class="mt-1 block w-full" autocomplete="date_s" required value="{{$order->date_s}}" />
					</div>
				</div>
						
				<div class="form-field" >
					<div>
						<x-input-label for="date_p" :value="__('Дата публикации')" />
						<x-text-input id="date_p" name="date_p" type="date" class="mt-1 block w-full" autocomplete="date_p" required value="{{$order->date_p}}"/>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="mesto_p" :value="__('Место публикации')" />
						<textarea id="mesto_p" name="mesto_p" rows="2" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required>{{$order->mesto_p}}</textarea>
					</div>
				</div>	
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="soavt" :value="__('Соавторы')" />
						<textarea id="soavt" name="soavt" rows="3" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" >{{$order->soavt}}</textarea>
					</div>
				</div>	
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						@if ($order->file_book!='')
							<a href="/storage/{{$order->file_book}}" target="_blank">{{$order->file_book}}</a>&nbsp&nbsp<input type="button" value="Удалить" onclick="del_file_book()" class=" px-4 py-2 b transition ease-in-out duration-150">
							<input type="hidden" id="o_file_book" value="{{$order->file_book}}">
						@else
						<x-input-label for="file_book" :value="__('Файл произведения')" />
						<x-text-input id="file_book" name="file_book" type="file" class="mt-1 block w-full" autocomplete="file_book" />
						@endif
					</div>
				</div>
			</div>
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
			<br>
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

function del_file_book(){
	const data = {
	  "filename": document.getElementById("o_file_book").value,
	  "order_id": document.getElementById("id").value,
	  "field": 'file_book',
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