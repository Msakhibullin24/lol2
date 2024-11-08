<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>{{ config('app.name', 'ОДА') }}</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.2/tailwind.min.css" />
        @vite(['resources/css/app.css', 'resources/js/app.js'])
		<link rel="stylesheet" href="{{ asset('css/style2.css?1') }}">
		<link rel="stylesheet" href="{{ asset('css/style3.css?1') }}">
    </head>
    <body class="font-sans antialiased" style="z-index: 999;">
        @include('layouts.navigation')
        <div class="min-h-screen  main">
            @if (isset($header))
			<header class="pt-90">
				<div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8 page_title">
				{{ $header }}
				</div>
			</header>
            @endif
            <main>
				@if(Auth::user()->status == 1)
				<div class="mx-auto text-center py-6"><br>
					<font color="white" text-align="center">Профиль блокирован</font>
					<br>
					<br>
					<br>
					<font color="silver" text-align="center">Техническая поддержка: +7 999 999 99 99</font>
				</div>
				@else
				<div style=" z-index: 999;" class=" ">
                {{ $slot }}
				</div>
				@endif
            </main>
        </div>
	@include('layouts.footer')
    </body>
</html>
