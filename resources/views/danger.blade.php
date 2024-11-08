<x-danger-layout>
	<br>
	<div class="">
		<div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
			<div class="max-w-full mx-auto text-center"><h1 class="text-2xl font-bold" data-config-id="header" style="font-size: xx-large;">
                <a href="/">
                    <img src="/img/new-logo-dark.png" style="margin: 0 auto;">
                </a>
				<br>
				Технический перерыв</h1>
			</div>
		</div>
	</div>
	<script>
		var description_tmp = document.getElementById('description_tmp').innerHTML;
		var description = new DOMParser().parseFromString(description_tmp, "text/html");
		document.getElementById('content').innerHTML = description.body.textContent;
	</script>
	
</x-danger-layout>