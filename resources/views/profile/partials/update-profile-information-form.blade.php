<section>
        <h2 class="text-lg font-medium text-gray-900 dark:text-gray-100">
            {{ __('Информация аккаунта') }}
        </h2>

        <p class="mt-1 text-sm text-gray-600 dark:text-gray-400">
            {{ __("Обновите информацию вашей учетной записи и адрес электронной почты.") }}
        </p>

    <form id="send-verification" method="post" action="{{ route('verification.send') }}">
        @csrf
    </form>

    <form method="post" action="{{ route('profile.update') }}" class="mt-6 space-y-6">
        @csrf
        @method('patch')

        <div>
			<div class="form-container">
				<div class="form-field-3">
					<x-input-label for="name" :value="__('Фамилия')"  class="required-field" />
					<x-text-input id="name" name="name" type="text" class="mt-1 block " :value="old('name', $user->name)" required autofocus autocomplete="name" />
					<x-input-error class="mt-2" :messages="$errors->get('name')" />
				</div>
				<div class="form-field-3">
					<x-input-label for="name_name" :value="__('Имя')"  class="required-field" />
					<x-text-input id="name_name" name="name_name" type="text" class="mt-1 block" :value="old('name_name', $user->name_name)" required autofocus autocomplete="name_name" />
					<x-input-error class="mt-2" :messages="$errors->get('name_name')" />
				</div>
				<div class="form-field-3">
					<x-input-label for="name_otch" :value="__('Отчество')"  class="required-field" />
					<x-text-input id="name_otch" name="name_otch" type="text" class="mt-1 block" :value="old('name_otch', $user->name_otch)" required autofocus autocomplete="name_otch" />
					<x-input-error class="mt-2" :messages="$errors->get('name_otch')" />
				</div>
			</div>
        </div>

        <div>
            <x-input-label for="email" :value="__('Адрес электронной почты')"  class="required-field" />
            <x-text-input id="email" name="email" type="email" class="mt-1 block w-full" :value="old('email', $user->email)" required autocomplete="username" />
            <x-input-error class="mt-2" :messages="$errors->get('email')" />

            @if ($user instanceof \Illuminate\Contracts\Auth\MustVerifyEmail && ! $user->hasVerifiedEmail())
                <div>
                    <p class="text-sm mt-2 text-gray-800 dark:text-gray-200">
                        {{ __('Ваш адрес электронной почты не подтвержден.') }}

                        <button form="send-verification" class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800">
                            {{ __('Нажмите здесь, чтобы повторно отправить электронное письмо с подтверждением.') }}
                        </button>
                    </p>

                    @if (session('status') === 'verification-link-sent')
                        <p class="mt-2 font-medium text-sm text-green-600 dark:text-green-400">
                            {{ __('На ваш адрес электронной почты была отправлена новая ссылка для подтверждения.') }}
                        </p>
                    @endif
                </div>
            @endif
        </div>
        <div>
            <x-input-label for="telegram" :value="__('Telegram')" />
            <x-text-input id="telegram" name="telegram" type="text" class="mt-1 block w-full" :value="old('telegram', $user->telegram)"  autofocus autocomplete="telegram" />
            <x-input-error class="mt-2" :messages="$errors->get('telegram')" />
        </div>

        <div class="flex items-center gap-4">
            <x-primary-button>{{ __('Сохранить') }}</x-primary-button>

            @if (session('status') === 'profile-updated')
                <p
                    x-data="{ show: true }"
                    x-show="show"
                    x-transition
                    x-init="setTimeout(() => show = false, 2000)"
                    class="text-sm text-gray-600 dark:text-gray-400"
                >{{ __('Сохранено.') }}</p>
            @endif
        </div>
    </form>
</section>
