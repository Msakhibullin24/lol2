@props(['align' => 'left', 'width' => '52', 'contentClasses' => 'py-1 '])

@php
switch ($align) {
    case 'left':
        $alignmentClasses = 'origin-top-left left-0';
        break;
    case 'top':
        $alignmentClasses = 'origin-top';
        break;
    case 'right':
    default:
        $alignmentClasses = 'origin-top-right right-0';
        break;
}

switch ($width) {
    case '48':
        $width = 'w-48';
        break;
    case '52':
        $width = 'w-52';
        break;
}
@endphp

<div class="relative" x-data="{ open: false }" @click.away="open = false" @close.stop="open = false" style="z-index: 999999; margin-right:20px">
    <div @click="open = ! open">
        {{ $trigger }}
    </div>

    <div x-show="open"
            x-transition:enter="transition ease-out duration-200"
            x-transition:enter-start="transform opacity-0 scale-95"
            x-transition:enter-end="transform opacity-100 scale-100"
            x-transition:leave="transition ease-in duration-75"
            x-transition:leave-start="transform opacity-100 scale-100"
            x-transition:leave-end="transform opacity-0 scale-95"
            class="absolute z-50 mt-2 w-52  rounded-md shadow-lg {{ $alignmentClasses }}"
            style="display: none; margin-right:20px"
            @click="open = false">
        <div class="rounded-md ring-1 ring-opacity-5 {{ $contentClasses }} text-left dropmenu">
            {{ $content }}
        </div>
    </div>
</div>
