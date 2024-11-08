<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Редактировать услугу</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
            <li class="breadcrumb-item"><a href="/administrator/rights">Услуги</a></li>
            <li class="breadcrumb-item active">Редактировать услугу</li>
          </ol>
        </div>
      </div>
    </div>
  </div>
  <!-- Main content -->
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-9 col-sm-12">
					<div class="card card-primary">
						<div class="card-body">
							<div class="row">
								<form method="post" action="{{ route('administrator.right_save') }}" style="display: contents;">
									@csrf
									<input type="hidden" name="id" value="{{$right->id}}">
									<div class="col-md-6 col-sm-12">
										<label class="col-form-label" for="name">Объект интеллектуальной собственности</label>
										<input type="text" class="form-control" id="name" name="name" value="{{$right->name}}">
									</div>
									<div class="col-md-2 col-sm-12">
										<label class="col-form-label" for="price">Стоимость услуги (руб)</label>
										<input type="number" class="form-control" id="price" name="price" value="{{$right->price}}">
									</div>
									<div class="col-md-1 col-sm-12">
										<label class="col-form-label" for="term">Срок (дней)</label>
										<input type="number" class="form-control" id="term" name="term" value="{{$right->term}}">
									</div>
									<div class="col-md-3 col-sm-12">
										<div class="form-group">
											<span style="margin-bottom: 7px;display: block;">Статус</span>
											<div class="custom-control custom-radio">
												<input class="custom-control-input" type="radio" id="customRadio2" name="status" value="0" @if ($right->status == 0) checked @endif>
												<label for="customRadio2" class="custom-control-label form-check-label">Неактивна</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input" type="radio" id="customRadio1" name="status" value="1" @if ($right->status == 1) checked @endif>
												<label for="customRadio1" class="custom-control-label form-check-label">Активна</label>
											</div>
										</div>
									</div>
									<div class="col-md-10 col-sm-12">
										<label class="col-form-label" for="description">Описание</label>
										<textarea class="form-control" id="description" name="description" cols="10" rows="15">{{$right->description}}</textarea>
									</div>
									<div class="col-md-2 col-sm-12">
										<input type="submit" class="form-control btn btn-primary" value="Сохранить" style="margin-top: 38px;">
										<br>
										<br>
										<a class="form-control btn btn-primary" href="/administrator/rights">Отмена</a>
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