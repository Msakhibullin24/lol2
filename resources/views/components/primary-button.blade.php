<button {{ $attributes->merge(['type' => 'submit', 'class' => ' text-black px-4 py-2  transition ease-in-out duration-150 button_close']) }}>
    {{ $slot }}
</button>
