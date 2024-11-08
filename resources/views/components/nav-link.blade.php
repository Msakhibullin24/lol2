@props(['active'])

@php
$classes = ($active ?? false)
            ? 'inline-flex items-center px-1'
            : 'inline-flex items-center px-1';
@endphp

<a {{ $attributes->merge(['class' => $classes]) }} style="padding-left:25px; padding-right:25px; font-size:16px;">
    {{ $slot }}
</a>
