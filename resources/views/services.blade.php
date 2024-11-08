<x-guest-layout>
	<div class="py-4 text-center">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<br>
			<h1>Наши услуги</h1>
			<br>
			<br>
			<div class="text-gray-900 dark:text-gray-100">
				<div class="container">
					<a class="service" href="/orders/create/book">
						<div class="flex items-center">
                            <img src="/img/0.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация авторского права на произведение</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/po">
						<div class="flex items-center">
                            <img src="/img/1.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация программы для ЭВМ</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/prom">
						<div class="flex items-center">
                            <img src="/img/2.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация промышленного образца</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/tz">
						<div class="flex items-center">
                            <img src="/img/3.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация товарного знака</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/izo">
						<div class="flex items-center">
                            <img src="/img/4.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация изобретения</span>
							</div>
                        </div>
					</a>
					<a class="service" href="/orders/create/pm">
						<div class="flex items-center">
                            <img src="/img/4.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация полезной модели</span>
							</div>
                        </div>
					</a>
				</div>
			</div>
		</div>
	</div>


			<br>
			<div style="text-align:center">
			<h1>Полезные статьи</h1>
			</div>
			<br>
			<br>
	<div class="py-4 part2">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="p-6">
				<div class="container" >
				@foreach ($blogs as $blog)
					<span class="blog">
						<div class="blog-title">
						<h3><a href="/blog/{{$blog->id}}" class="title_more">{{ $blog->name }}</a></h3>
                        </div>
						<div class="blog-description">
						{{ $blog->content }} ... <a href="/blog/{{$blog->id}}" class="order_call more">Подробнее</a>
                        </div>
					</span>
				@endforeach
				</div>
			</div>
		</div>
	</div>
	
</x-guest-layout>
