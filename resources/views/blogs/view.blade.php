<x-guest-layout>
				<br>
				<div class="max-w-full mx-auto text-left">
					<h1 class="text-2xl font-bold" data-config-id="header" style="font-size: xx-large;">{{$blog->name}}</h1>
				</div>
	<div class="grid grid-cols-10 gap-3">
		<div class="col-span-10 sm:col-span-8 md:col-span-8">
			<br>
			<div class="py-4 blog-content">
				<div class="max-w-7xl mx-auto sm:px-6 lg:px-8"><p class="created">{{ $blog->created }}</p>
					<div id="description_tmp" style="display:none">{{$blog->content}}</div>
					<div class="p-6 text-gray-900 content" id="content">
					</div>
				</div>
			</div>
		</div>
		<div class="hidden sm:col-span-2 md:col-span-2 sm:block">
			<br>
			<div class="py-4 blog-content">
				<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
				
				<span style="color: #0c1922; font-size: 20px; position: relative; display: block;">Другие записи</span>
				
				@foreach ($blogs as $blog)
					<br>
					<span class="blog">
						<a href="/blog/{{$blog->id}}" class="title_more2">{{ $blog->name }}</a>
					</span>
					<br>
					<hr>
				@endforeach
				</div>
			</div>
		</div>
	</div>
<script>
	var description_tmp = document.getElementById('description_tmp').innerHTML;
	var description = new DOMParser().parseFromString(description_tmp, "text/html");
	document.getElementById('content').innerHTML = description.body.textContent;
</script>
	
</x-guest-layout>