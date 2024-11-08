<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>{{ config('app.name', 'ОДА') }}</title>
        @vite(['resources/css/app.css', 'resources/js/app.js'])
		<link rel="stylesheet" href="{{ asset('css/style2.css') }}">
		<link rel="stylesheet" href="{{ asset('css/style.css') }}">
    </head>
	
	
	
    <body class="font-sans antialiased" style="z-index: 999;">
		@include('layouts.navigation')
        <div class="min-h-screen flex flex-col sm:justify-top items-center pt-6 sm:pt-0 pt-60 main bg-gray-800 dark:bg-gray-800 ">
		@if(request()->routeIs('login') or request()->routeIs('register') or request()->routeIs('password.request') or request()->routeIs('password.reset') or request()->routeIs('verification.notice'))
			<div class="w-full mt-6 px-6 py-4  overflow-hidden sm:rounded-lg" >
                {{ $slot }}
            </div>
		@else
            <div class="w-full @if(request()->routeIs('orders.folk_link') or request()->routeIs('orders.folk')) 'test' @else max-w-7xl @endif mt-6 px-6 py-4   overflow-hidden sm:rounded-lg" >
                {{ $slot }}
            </div>
		@endauth
        </div>
	@include('layouts.footer')
    </body>
</html>