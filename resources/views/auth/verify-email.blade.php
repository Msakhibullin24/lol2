<x-guest-layout>
<div class="auth_box">
	<h2 class="block font-medium text-xl text-white-700 dark:text-gray-300 py-4 text-gray-300 " >Подтверждение регистрации</h2>
	
    <div class="mb-4 text-sm text-gray-600 dark:text-gray-400">
        {{ __('Спасибо за регистрацию! Прежде чем приступить к работе, не могли бы вы подтвердить свой адрес электронной почты, перейдя по ссылке, которую мы только что отправили вам по электронной почте? Если вы не получили электронное письмо, мы с радостью отправим вам другое.') }}
    </div>

    @if (session('status') == 'verification-link-sent')
        <div class="mb-4 font-medium text-sm text-green-600 dark:text-green-400">
            {{ __('На адрес электронной почты, который вы указали при регистрации, была отправлена новая ссылка для подтверждения.') }}
        </div>
    @endif

    <div class="mt-4 flex items-center justify-between">
        <form method="POST" action="{{ route('verification.send') }}">
            @csrf

            <div>
                <x-primary-button>
                    {{ __('Повторно отправьте электронное письмо с подтверждением') }}
                </x-primary-button>
            </div>
        </form>
    </div>
	
    <div class="mt-4 flex items-center justify-center">
		<form method="POST" action="{{ route('logout') }}">
			@csrf

			<button type="submit" class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800">
				{{ __('Выйти') }}
			</button>
		</form>
    </div>
</div>
	
</x-guest-layout>
