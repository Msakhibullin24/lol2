<x-administrator-app-layout>
<div>
	<div class="content-header">
		<div class="container-fluid">
			<div class="row mb-2">
				<div class="col-sm-6">
					<h1 class="m-0">Редактировать преимущество</h1>
				</div>
				<div class="col-sm-6">
					<ol class="breadcrumb float-sm-right">
						<li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
						<li class="breadcrumb-item"><a href="/administrator/options/">Настройки</a></li>
						<li class="breadcrumb-item active">Наши преимущества</li>
					</ol>
				</div>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-12">
					<div class="card card-primary">
						<div class="card-body">
							<div class="row">
								<form method="post" action="{{ route('administrator.advantage_save') }}" style="display: contents;">
								<input type="hidden" class="form-control" id="id" name="id" value="{{$advantage->id}}">
									@csrf
									<div class="col-md-9 col-sm-12">
										<label class="col-form-label" for="title">Заголовок</label>
										<input type="text" class="form-control" id="title" name="title" value="{{$advantage->title}}">
									</div>
									<div class="col-md-10 col-sm-12">
										<label class="col-form-label" for="descriptions">Текст</label>
										<textarea class="advantage_descriptions" id="descriptions" name="descriptions">{{$advantage->descriptions}}</textarea>
									</div>
									<div class="col-md-2 col-sm-12">
										<input type="submit" class="form-control btn btn-primary" value="Сохранить" style="margin-top: 38px;">
										<br>
										<br>
										<a class="form-control btn btn-primary" href="/administrator/options/advantages">Отмена</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</x-administrator-app-layout>