<x-guest-layout>
	<div class="">
	<br>
		<div class="max-w-full mx-auto text-center">
			<h1 class="text-2xl font-bold" data-config-id="header" style="font-size: xx-large;">Блог</h1>
		</div>
    </div>
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
						<p class="created">{{ $blog->created }}</p>
						<div class="blog-description-text">
						{{ $blog->content }} ... <a href="/blog/{{$blog->id}}" class="order_call more">Подробнее</a>
                        </div>
                        </div>
					</span>
				@endforeach
				{!! $blogs->appends(\Request::except('page'))->render() !!}
				</div>
			</div>
		</div>
	</div>
</x-guest-layout>
