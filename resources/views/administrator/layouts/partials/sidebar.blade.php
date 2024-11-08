<aside class="main-sidebar sidebar-light-primary elevation-4">
    <a href="" class="brand-link">
		<img src="/logo-dark.png" class="mx-auto brand-logo"><br>
		<span class="brand-text">Администратор</span>
    </a>
		<br>
		<span class="danger">@if ($danger=='true') <span class="danger_true">штатный режим </span> @else <span class="danger_false">аварийный режим </span>@endif</span>
    <div class="sidebar">
		<nav class="mt-2">
			<ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
				<li class="nav-item">
					<a href="{{ route('administrator.dashboard') }}" class="nav-link {{ request()->is('administrator/dashboard') ? 'active' : '' }}">
					<i class="nav-icon fa fa-tasks" aria-hidden="true"></i>
					<p>Заявки </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.reestr') }}" class="nav-link {{ request()->is('administrator/reestr') ? 'active' : '' }}">
						<i class="nav-icon fa fa-archive"></i>
						<p>Реестр прав </p>
					</a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.users') }}" class="nav-link {{ request()->is('administrator/users') ? 'active' : '' }}">
					<i class="nav-icon fa fa-users"></i>
					<p>Пользователи </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.chats') }}" class="nav-link">
					<i class="nav-icon fa fa-envelope"></i>
					<p>Чат-боты <span class="badge badge-danger navbar-badge" id="count_new_massages_2" style="display:none"></span></p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.blogs') }}" class="nav-link">
					<i class="nav-icon fa fa-blog"></i>
					<p>Блог </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.logs') }}" class="nav-link">
					<i class="nav-icon fa fa-book"></i>
					<p>Журналы </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.payments') }}" class="nav-link">
					<i class="nav-icon fa fa-credit-card" aria-hidden="true"></i>
					<p>Платежи </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.rights') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Услуги </p></a>
				</li>
				<!--
				<li class="nav-item">
					<a href="{{ route('administrator.ourservices') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Внешние сервисы </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.payments') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Платежный шлюз </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.dashboard') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Операторы </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.dashboard') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Журналы </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.dashboard') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Внешние сервисы </p></a>
				</li>
				-->
				<li class="nav-item">
					<a href="{{ route('administrator.options') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Настройки </p></a>
				</li>
				<li class="nav-item">
					<a href="{{ route('administrator.logout') }}" class="nav-link">
					<i class="nav-icon fas fa-th"></i>
					<p>Выход </p></a>
				</li>
				<li class="nav-item">
				<br>
					<div class="form-group">
						<div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
							  <input type="checkbox" class="custom-control-input" id="customSwitch3" @if ($danger=='true') checked @endif onchange="danger()">
							  <label class="custom-control-label" for="customSwitch3">Режим работы</label>
						</div>
					</div>
				</li>
			</ul>
		</nav>
    </div>
	<script>
	</script>
</aside>