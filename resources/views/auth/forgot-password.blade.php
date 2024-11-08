<x-guest-layout>

<div class="auth_box">
	<h2 class="block font-medium text-xl  " >Восстановление доступа</h2>
    <div class="mb-4 text-sm">
        {{ __('Забыли свой пароль? Просто сообщите нам свой адрес электронной почты, и мы вышлем вам по электронной почте ссылку для сброса пароля, которая позволит вам выбрать новый.') }}
    </div>

    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('password.email') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('E-mail')" />
            <x-text-input id="email" class="block mt-1 w-full " type="email" name="email" :value="old('email')" required autofocus />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <div class="flex items-center justify-end mt-4">
			<a class="underline text-sm " href="{{ url('/') }}"> {{ __('Отмена') }} </a>
			&nbsp&nbsp&nbsp
            <x-primary-button>
                {{ __('Сбросить пароль') }}
            </x-primary-button>
        </div>
    </form>
</div>
</x-guest-layout>
