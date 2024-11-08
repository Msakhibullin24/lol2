<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xlleading-tight">
            {{ __('Регистрация заявки') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8 space-y-6">
            <div class="p-4 sm:p-8 order_box shadow sm:rounded-lg">
                <div class="">
					@if ($order->type_order=='0')
						@include('orders.partials.show0')
					@elseif ($order->type_order=='1')
						@include('orders.partials.show1')
					@elseif ($order->type_order=='2')
						@include('orders.partials.show2')
					@elseif ($order->type_order=='3')
						@include('orders.partials.show3')
					@elseif ($order->type_order=='4')
						@include('orders.partials.show4')
					@endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>