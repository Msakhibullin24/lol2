<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'ОДА') }}</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
		<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.1.2/tailwind.min.css" />-->
		<link rel="stylesheet" href="{{ asset('css/style2.css') }}">
		<link rel="stylesheet" href="{{ asset('css/style.css') }}">

    </head>
    <body class="font-sans antialiased" onload="load_chat_support()">
        <div class="min-h-screen flex flex-col sm:justify-top items-center pt-6 sm:pt-0 bg-gray-100 dark:bg-gray-900 pt-60 main">
		@if(request()->routeIs('login') or request()->routeIs('register') or request()->routeIs('password.request') or request()->routeIs('password.reset') or request()->routeIs('verification.notice'))
			<div class="w-full sm:max-w-md mt-6 px-6 py-4  overflow-hidden sm:rounded-lg" style="z-index: 999;">
                {{ $slot }}
            </div>
		@else
            <div class="w-full max-w-7xl mt-6 px-6 py-4   overflow-hidden sm:rounded-lg" style="z-index: 999;">
                {{ $slot }}
            </div>
				<!--
            <div class="w-full max-w-7xl mt-6 px-6 py-4  shadow-md overflow-hidden sm:rounded-lg" style="z-index: 999;">
                @include('components.faq-block')
            </div>
			-->
		@endauth
        </div>
		<div class="area">
			<ul class="circles primary-navigation-2">
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
				<li></li>
			</ul>
		</div>
	@include('layouts.footer')
    </body>
</html>
