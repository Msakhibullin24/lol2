<x-guest-layout>
	<br>
	<br>
	<div class="">
		<div class="max-w-full mx-auto text-center">
			<h1 class="text-2xl" data-config-id="header" >Уникальное решение для управления <br>вашей интеллектуальной собственностью</h1>
		</div>
    </div>
	<div class="py-4 text-center">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="p-6 text-gray-900 dark:text-gray-100">
				<div class="container" style="justify-content: center;">
					<div class="h1_2">Начните с простого – ознакомьтесь с реестром РИД или перейдите к регистрации</div>
					<a class="service" href="/reestr">
						<div class="flex items-center">
                            <img src="/img/0.png">
                            <div class="ml-4 text-md text-left">
								<span>Реестр РИД </span>
							</div>
                        </div>
					</a>
					<a class="service" href="/rights">
						<div class="flex items-center">
                            <img src="/img/1.png">
                            <div class="ml-4 text-md text-left">
								<span>Регистрация прав</span>
							</div>
                        </div>
					</a>
				</div>
			</div>
		</div>
	</div>

	<div class=" text-center">
		<div class="max-w-7xl mx-auto ">
			<div class="text-gray-900 dark:text-gray-100">
				<h1>{{ $textblock[0]->title }}</h1>
				<br>
				<div class="container textblock">
					{{ $textblock[0]->descriptions }}
				</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<div class=" text-center">
		<div class="max-w-7xl mx-auto ">
			<div class="text-gray-900 dark:text-gray-100">
				<h1>Наши преимущества</h1>
				<br>
				<div class="container">
				
				@foreach ($advantages as $advantage)
					<span class="adv-item">
						<div class="">
                            <img src="/img/adv/{{ $advantage->id }}.png" >
                            <div class="">
								<span>{{ $advantage->title }}</span>
							</div>
							{{ $advantage->descriptions }}
                        </div>
					</span>
				@endforeach
				</div>
			</div>
		</div>
	</div>
	<!--
	
	<div class="py-4 part2">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="p-6">
				<div class="container" >
				@foreach ($blogs as $blog)
					<span class="blog">
						<div class=" ">
						<h3><a href="/blog/{{$blog->id}}" class="title_more">{{ $blog->name }}</a></h3>
						{{ $blog->content }} ... <a href="/blog/{{$blog->id}}" class="order_call more">Подробнее</a>
                        </div>
					</span>
				@endforeach
				</div>
			</div>
		</div>
	</div>
	-->
	<div class="py-4 text-center part">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="p-6 ">
				<h2>При поддержке</h2>
				<div class="container" style="justify-content: center;">
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/1.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/2.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/7.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/8.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/9.png">
                        </div>
					</span>
				</div>
				
				<h2>Партнеры</h2>
				<div class="container" style="justify-content: center;">
				
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/10.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/6.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/11.png">
                        </div>
					</span>
					<span class="service">
						<div class="flex items-center">
                            <img src="/img/pp/12.png">
                        </div>
					</span>
				</div>
			</div>
		</div>
	</div>
	
</x-guest-layout>
