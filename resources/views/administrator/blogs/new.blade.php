<x-administrator-app-layout>
<div>
<div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Добавить запись</h1>
        </div>
        <div class="col-sm-6">
			<ol class="breadcrumb float-sm-right">
				<li class="breadcrumb-item"><a href="/administrator/dashboard">Главная</a></li>
				<li class="breadcrumb-item"><a href="/administrator/blogs">Блог</a></li>
				<li class="breadcrumb-item active">Добавить запись</li>
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
								<form method="post" action="{{ route('administrator.blog_store') }}" style="display: contents;">
									@csrf
									<div class="col-md-9 col-sm-12">
										<label class="col-form-label" for="name">Заголовок</label>
										<input type="text" class="form-control" id="name" name="name" value="">
									</div>
									<div class="col-md-3 col-sm-12">
										<div class="form-group">
											<span style="margin-bottom: 7px;display: block;">Статус</span>
											<div class="custom-control custom-radio">
												<input class="custom-control-input" type="radio" id="customRadio2" name="status" checked="" value="0" >
												<label for="customRadio2" class="custom-control-label form-check-label">Неактивна</label>
											</div>
											<div class="custom-control custom-radio">
												<input class="custom-control-input" type="radio" id="customRadio1" name="status" value="1" >
												<label for="customRadio1" class="custom-control-label form-check-label">Активна</label>
											</div>
										</div>
									</div>
									<div class="col-md-10 col-sm-12">
										<label class="col-form-label" for="content">Текст</label>
										<div class="blog_content" id="content" name="content0"></div>
										<div id="description_tmp" style="display:none"></div>
									</div>
									<div class="col-md-2 col-sm-12">
										<input type="submit" class="form-control btn btn-primary" value="Сохранить" style="margin-top: 38px;">
										<br>
										<br>
										<a class="form-control btn btn-primary" href="/administrator/blogs">Отмена</a>
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