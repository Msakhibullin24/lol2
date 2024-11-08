<x-guest-layout>
<div class="auth_box">
<h2 class="block font-medium text-xl py-4 " >Авторизация</h2>
    <!-- Session Status -->
    <x-auth-session-status class="mb-4" :status="session('status')" />

    <form method="POST" action="{{ route('login') }}">
        @csrf

        <!-- Email Address -->
        <div>
            <x-input-label for="email" :value="__('E-mail')" />
            <x-text-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Пароль')" />

            <x-text-input id="password" class="block mt-1 w-full "
                            type="password"
                            name="password"
                            required autocomplete="current-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Remember Me -->
        <div class="block mt-4">
            <label for="remember_me" class="inline-flex items-center">
                <input id="remember_me" type="checkbox" class="rounded shadow-sm f" name="remember">
                <span class="ml-2 text-sm ">{{ __('Запомнить') }}</span>
            </label>
        </div>

        <div class="flex items-center justify-end ">
                <a class="underline text-sm  rounded-md " href="{{ url('/') }}">
                    {{ __('Отмена') }}
                </a>

            <x-primary-button class="ml-3">
                {{ __('Войти') }}
            </x-primary-button>
        </div>
        <div class="flex items-center justify-center mt-4">
			<span class="block justify-right font-medium text-sm "><a class="underline text-sm  rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ url('/register') }}">{{ __('Регистрация') }}</a>&nbsp&nbsp&nbsp<a class="underline text-sm rounded-md focus:outline-none" href="{{ route('password.request') }}">
                    {{ __('Восстановление доступа') }}
                </a></span>
		</div>
    </form>
</div>
</x-guest-layout>
