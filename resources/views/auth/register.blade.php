<x-guest-layout>
<div class="auth_box">
<h2 class="block font-medium text-xl text-white-700 dark:text-gray-300 py-4  ">Регистрация</h2>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div>
			<div class="form-container">
					<x-input-label for="name" :value="__('Фамилия')"  class="required-field" />
					<x-text-input id="name" class="block mt-1 w-full  " type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
					<x-input-error :messages="$errors->get('name')" class="mt-2" />
					
					<x-input-label for="name" :value="__('Имя')" class="required-field"  />
					<x-text-input id="name" class="block mt-1 w-full  " type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
					<x-input-error :messages="$errors->get('name')" class="mt-2" />
					
					<x-input-label for="name" :value="__('Отчество')" class="required-field"  />
					<x-text-input id="name" class="block mt-1 w-full  " type="text" name="name" :value="old('name')" required autofocus autocomplete="name" />
					<x-input-error :messages="$errors->get('name')" class="mt-2" />
			</div>
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('E-mail')"  class="required-field" />
            <x-text-input id="email" class="block mt-1 w-full  " type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div> 

        <!-- Password -->
        <div class="mt-4">
            <x-input-label for="password" :value="__('Пароль')"  class="required-field" />

            <x-text-input id="password" class="block mt-1 w-full  "
                            type="password"
                            name="password"
                            required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mt-4">
            <x-input-label for="password_confirmation" :value="__('Подтверждение пароля')"  class="required-field" />

            <x-text-input id="password_confirmation" class="block mt-1 w-full  "
                            type="password"
                            name="password_confirmation" required autocomplete="new-password" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

        <div class=" items-center justify-end mt-4">

            <a class="underline text-sm   rounded-md   " href="{{ url('/') }}">
                    {{ __('Отмена') }}
                </a><br>
            <a class="underline text-sm   rounded-md   " href="{{ route('login') }}">
                {{ __('Уже зарегистрированы?') }}
            </a>
			&nbsp&nbsp&nbsp
			

            <x-primary-button class="ml-4" style="float:right">
                {{ __('Регистрация') }}
            </x-primary-button>
        </div>
    </form>
</div>
</x-guest-layout>
