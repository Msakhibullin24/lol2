@props(['value'])
@props(['required'])

<label {{ $attributes->merge(['class' => 'block font-medium text-sm ']) }}>
    {{ $value ?? $slot }}
    {{ $required ?? $slot }}
</label>
