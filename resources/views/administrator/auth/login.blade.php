<x-administrator-guest-layout>
	<div class="login-box">
		<div class="card">
			<div class="card-body login-card-body">
			  <p class="login-box-msg">Авторизация</p>
				<x-auth-session-status class="mb-4" :status="session('status')" />
				<x-auth-validation-errors class="mb-4" :errors="$errors" />
				<form method="POST" action="{{ route('administrator.login') }}">
				@csrf
					<div class="input-group mb-3">
						<input type="email" class="form-control" placeholder="E-mail" name="email" >
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-envelope"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" name="password" class="form-control" placeholder="Пароль">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="remember_me" name="remember">
								<label for="remember_me">
									Запомнить
								</label>
							</div>
						</div>
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Вход</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</x-administrator-guest-layout>