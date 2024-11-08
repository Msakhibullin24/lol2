<section>
    <h2 class="text-lg font-medium ">
        <img src="/img/0.png" style="float: inline-start; margin-right: 10px;">{{ __('Регистрация авторского права на произведение') }}<div class="" style="    display: block;    position: relative;    float: inline-end;">
        <a type="button" class=" text-black px-4 py-2  transition ease-in-out duration-150 button_close" href="/rights">Отмена</a></div>
    </h2>
	<div class="form_column">
		<form method="post" action="{{ route('orders.store') }}" class="mt-6 space-y-6" enctype="multipart/form-data">
			@csrf
			<input type="hidden" name="type_order" value="0">
			<div class="form-container">
				<div class="form-field w3" style="display: block;">
					<label class="block font-medium text-sm " for="profile_id">Заявитель</label>
					<select class=" rounded-md shadow-sm mt-1 block w-full" name="profile_id" id="profile_id">
						@foreach  ($profiles as $profile)
						<option value="{{ $profile->id }}">{{ $profile->fio_name }}</option>
						@endforeach 
					</select>
				</div>
				<div class="form-field" style="display: block;padding-top: 19px;">
					<br>
					<a href="/profiles/create?redirect=book">Добавить профиль</a>
				</div>
			</div>
			<hr>
			<div class="form-container">
				<div class="form-field  w2">
					<div>
						<x-input-label for="vidp" :value="__('Вид произведения')"  class="required-field"/>
						<select name="vidp" class=" rounded-md shadow-sm mt-1 block w-full" id="vidp" required>
							<option value="" >Выберите из списка</option>
							<option value="1" >Музыкальное произведение</option>
							<option value="2" >Аудиовизуальное произведение</option>
							<option value="3" >Художественное произведение</option>
							<option value="4" >Фотографическое произведение</option>
							<option value="5" >Текстовое произведение</option>
						</select>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="descr" :value="__('Описание произведения')"  class="required-field"/>
						<textarea id="descr" name="descr" rows="5" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full" required></textarea>
					</div>
				</div>	
			</div>
			<hr>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="date_s" :value="__('Дата создания')"  class="required-field"/>
						<x-text-input id="date_s" name="date_s" type="date" class="mt-1 block w-full" autocomplete="date_s" required/>
					</div>
				</div>
						
				<div class="form-field" >
					<div>
						<x-input-label for="date_p" :value="__('Дата публикации')"  class="required-field"/>
						<x-text-input id="date_p" name="date_p" type="date" class="mt-1 block w-full" autocomplete="date_p" required/>
					</div>
				</div>
			</div>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="mesto_p" :value="__('Место публикации')"  class="required-field"/>
						<textarea id="mesto_p" name="mesto_p" rows="2" cols="75" onkeypress="" class="@error('mesto_p') is-invalid @enderror rounded-md shadow-sm mt-1 block w-full" required></textarea>
					</div>
				</div>	
			</div>
			<hr>
			<div class="form-container">
				<div class="form-field">
					<div>
						<x-input-label for="soavt" :value="__('Автор / Соавторы')"  class="required-field"/>
						<textarea id="soavt" name="soavt" rows="3" cols="75" onkeypress="" class=" rounded-md shadow-sm mt-1 block w-full"></textarea>
					</div>
				</div>	
			</div>
			<div class="form-container">
				<div class="form-field w2">
					<div>
						<x-input-label for="file_book" :value="__('Прикрепить файл произведения')"  class="required-field" />
						<x-text-input id="file_book" name="file_book" type="file" class="mt-1 block w-full" autocomplete="file_book" />
					</div>
				</div>
			</div>
			<div class="items-right gap-4" style="float: right;">
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