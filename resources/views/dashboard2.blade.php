<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl  leading-tight">
            {{ __('Мои права') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="order_box overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6">
                    {{ __("Перечень прав") }}
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
