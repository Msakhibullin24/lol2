<x-guest-layout>
	<div class="">
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<br>
    </div>
	<br>
	<div class="py-4">
	
<div class="content0">
	<div class="left-menu">
		<ul>
			<li class="">
				<a href="/folk/TA" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">О регионе</div>
				</a>
			</li>
		<ul>
		<h1>Объекты инфраструктуры </h1>
		<ul>
			<li class="@if ($link== '0'): active @endif">
				<a href="/folk/TA/0" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Культурные центры</div>
				</a>
			</li>
			<li class="@if ($link== '1'): active @endif ">
				<a href="/folk/TA/1" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Театры</div>
				</a>
			</li>
			<li class=" @if ($link== '2'): active @endif ">
				<a href="/folk/TA/2" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Кинотеатры</div>
				</a>
			</li>
			<li class=" @if ($link== '3'): active @endif ">
				<a href="/folk/TA/3" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Кружки</div>
				</a>
			</li>
			<li class=" @if ($link== '4'): active @endif ">
				<a href="/folk/TA/4" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Экскурсии</div>
				</a>
			</li>
			<li class=" @if ($link== '5'): active @endif ">
				<a href="/folk/TA/5" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Досуг</div>
				</a>
			</li>
			<li class=" @if ($link== '6'): active @endif ">
				<a href="/folk/TA/6" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Спорт</div>
				</a>
			</li>
			<li class=" @if ($link== '7'): active @endif">
				<a href="/folk/TA/7" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Образование</div>
				</a>
			</li>
		</ul>
		<br>
		<h1>Культурное достояние</h1>
		<ul>
			<li class=" @if ($link== '8'): active @endif ">
				<a href="/folk/TA/8" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Песни</div>
				</a>
			</li>
			<li class=" @if ($link== '9'): active @endif ">
				<a href="/folk/TA/9" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Танцы</div>
				</a>
			</li>
			<li class=" @if ($link== '10'): active @endif ">
				<a href="/folk/TA/10" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Костюмы</div>
				</a>
			</li>
			<li class=" @if ($link== '11'): active @endif ">
				<a href="/folk/TA/11" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Поэзия</div>
				</a>
			</li>
			<li  class=" @if ($link== '12'): active @endif ">
				<a href="/folk/TA/12" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Проза</div>
				</a>
			</li>
			<li class=" @if ($link== '13'): active @endif ">
				<a href="/folk/TA/13" class="okrug-1 map-tab-link" data-color="#fff">
					<div class="caption">Архитектура</div>
				</a>
			</li>
		</ul>
	</div>
	<div class="map-region">
	<h1 style="top:-35px;">
	@if ($link== '0') Культурные центры
	@elseif ($link== '1')  Театры
	@elseif ($link== '2')  Кинотеатры
	@elseif ($link== '3')  Кружки
	@elseif ($link== '4')  Экскурсии
	@elseif ($link== '5')  Досуг
	@elseif ($link== '6')  Спорт
	@elseif ($link== '7')  Образование
	@elseif ($link== '8')  Песни
	@elseif ($link== '9')  Танцы
	@elseif ($link== '10')  Костюмы
	@elseif ($link== '11')  Поэзия 
	@elseif ($link== '12')  Проза
	@elseif ($link== '12')  Архитектура
	@endif
	</h1>
		<x-ta-district></x-ta-district>
	
		<div class="region_box">
		
	@if ($link== '0') <x-ta-0></x-ta-0>
	@elseif ($link== '1')  <x-ta-1></x-ta-1>
	@elseif ($link== '2')  <x-ta-2></x-ta-2>
	@elseif ($link== '3')  <x-ta-3></x-ta-3>
	@elseif ($link== '4')  <x-ta-4></x-ta-4>
	@elseif ($link== '5')  <x-ta-5></x-ta-5>
	@elseif ($link== '6')  <x-ta-6></x-ta-6>
	@elseif ($link== '7')  <x-ta-7></x-ta-7>
	@elseif ($link== '8')  <x-ta-8></x-ta-8>
	@elseif ($link== '9')  <x-ta-9></x-ta-9>
	@elseif ($link== '10')  <x-ta-10></x-ta-10>
	@elseif ($link== '11')  <x-ta-11></x-ta-11> 
	@elseif ($link== '12')  <x-ta-12></x-ta-12>
	@elseif ($link== '12')  <x-ta-13></x-ta-13>
	@endif
		
		
		
	</div>
	</div>
</div>
	
	
	
	
	
	<script>

	$('.dropdown').click(function () {
        $(this).attr('tabindex', 1).focus();
        $(this).toggleClass('active');
        $(this).find('.dropdown-menu').slideToggle(300);
    });

    $('.dropdown').focusout(function () {
        $(this).removeClass('active');
        $(this).find('.dropdown-menu').slideUp(300);
    });

    $('.dropdown .dropdown-menu li').click(function () {
		$('#polygon3424-1').attr('fill','#16304ae8');
		$('#polygon3426-7').attr('fill','#16304ae8');
		$('#polygon3428-4').attr('fill','#16304ae8');
		$('#polygon3430-0').attr('fill','#16304ae8');
		$('#polygon3432-9').attr('fill','#16304ae8');
		$('#polygon3434-4').attr('fill','#16304ae8');
		$('#polygon3436-8').attr('fill','#16304ae8');
		$('#polygon3438-8').attr('fill','#16304ae8');
		$('#path3440').attr('fill','#16304ae8');
		$('#AMU').attr('fill','#16304ae8');
		$('#YEV').attr('fill','#16304ae8');
		$('#MAG').attr('fill','#16304ae8');
		$('#Sakhalin_island').attr('fill','#16304ae8');
		$('#polygon3612').attr('fill','#16304ae8');
		$('#polygon3614').attr('fill','#16304ae8');
		$('#polygon3616').attr('fill','#16304ae8');
		$('#polygon3618').attr('fill','#16304ae8');
		$('#polygon3620').attr('fill','#16304ae8');
		$('#polygon3622').attr('fill','#16304ae8');
		$('#path3625').attr('fill','#16304ae8');
		$('#polygon3627').attr('fill','#16304ae8');
		$('#polygon3629').attr('fill','#16304ae8');
		$('#polygon3631').attr('fill','#16304ae8');
		$('#polygon3633').attr('fill','#16304ae8');
		$('#polygon3635').attr('fill','#16304ae8');
		$('#path3638').attr('fill','#16304ae8');
		$('#polygon3640').attr('fill','#16304ae8');
		$('#polygon3668').attr('fill','#16304ae8');
		$('#path3670').attr('fill','#16304ae8');
		$('#KC').attr('fill','#16304ae8');
		$('#IN').attr('fill','#16304ae8');
		$('#DA').attr('fill','#16304ae8');
		$('#STA').attr('fill','#16304ae8');
		$('#CE').attr('fill','#16304ae8');
		$('#KB').attr('fill','#16304ae8');
		$('#AD').attr('fill','#16304ae8');
		$('#KL').attr('fill','#16304ae8');
		$('#path23925-7').attr('fill','#16304ae8');
		$('#KDA').attr('fill','#16304ae8');
		$('#VGG').attr('fill','#16304ae8');
		$('#ROS').attr('fill','#16304ae8');
		$('#AST').attr('fill','#16304ae8');
		$('#YAR').attr('fill','#16304ae8');
		$('#KOS').attr('fill','#16304ae8');
		$('#IVA').attr('fill','#16304ae8');
		$('#VLA').attr('fill','#16304ae8');
		$('#TVE').attr('fill','#16304ae8');
		$('#MOS').attr('fill','#16304ae8');
		$('#MOW').attr('fill','#16304ae8');
		$('#KLU').attr('fill','#16304ae8');
		$('#ORL').attr('fill','#16304ae8');
		$('#LIP').attr('fill','#16304ae8');
		$('#TUL').attr('fill','#16304ae8');
		$('#RYA').attr('fill','#16304ae8');
		$('#TAM').attr('fill','#16304ae8');
		$('#SMO').attr('fill','#16304ae8');
		$('#BRY').attr('fill','#16304ae8');
		$('#KRS').attr('fill','#16304ae8');
		$('#BEL').attr('fill','#16304ae8');
		$('#VOR').attr('fill','#16304ae8');
		$('#ORE').attr('fill','#16304ae8');
		$('#BA').attr('fill','#16304ae8');
		$('#PER').attr('fill','#16304ae8');
		$('#NIZ').attr('fill','#16304ae8');
		$('#CU').attr('fill','#16304ae8');
		$('#KIR').attr('fill','#16304ae8');
		$('#ME').attr('fill','#16304ae8');
		$('#TA').attr('fill','#16304ae8');
		$('#UD').attr('fill','#16304ae8');
		$('#MO').attr('fill','#16304ae8');
		$('#PNZ').attr('fill','#16304ae8');
		$('#SAR').attr('fill','#16304ae8');
		$('#ULY').attr('fill','#16304ae8');
		$('#SAM').attr('fill','#16304ae8');
		$('#KGN').attr('fill','#16304ae8');
		$('#CHE').attr('fill','#16304ae8');
		$('#TYU').attr('fill','#16304ae8');
		$('#SVE').attr('fill','#16304ae8');
		$('#KHM').attr('fill','#16304ae8');
		$('#polygon3659').attr('fill','#16304ae8');
		$('#polygon3661').attr('fill','#16304ae8');
		$('#polygon3663').attr('fill','#16304ae8');
		$('#path3665').attr('fill','#16304ae8');
		$('#BU').attr('fill','#16304ae8');
		$('#Zabaykalsky').attr('fill','#16304ae8');
		$('#polygon3707').attr('fill','#16304ae8');
		$('#OMS').attr('fill','#16304ae8');
		$('#NVS').attr('fill','#16304ae8');
		$('#ALT').attr('fill','#16304ae8');
		$('#AL').attr('fill','#16304ae8');
		$('#TY').attr('fill','#16304ae8');
		$('#polygon3715').attr('fill','#16304ae8');
		$('#polygon3717').attr('fill','#16304ae8');
		$('#polygon3719').attr('fill','#16304ae8');
		$('#path3721').attr('fill','#16304ae8');
		$('#polygon3723').attr('fill','#16304ae8');
		$('#polygon3725').attr('fill','#16304ae8');
		$('#path3727').attr('fill','#16304ae8');
		$('#polygon3729').attr('fill','#16304ae8');
		$('#polygon3731').attr('fill','#16304ae8');
		$('#polygon3733').attr('fill','#16304ae8');
		$('#polygon3735').attr('fill','#16304ae8');
		$('#polygon3737').attr('fill','#16304ae8');
		$('#polygon3739').attr('fill','#16304ae8');
		$('#polygon3741').attr('fill','#16304ae8');
		$('#polygon3743').attr('fill','#16304ae8');
		$('#polygon3745').attr('fill','#16304ae8');
		$('#path3747').attr('fill','#16304ae8');
		$('#TOM').attr('fill','#16304ae8');
		$('#KEM').attr('fill','#16304ae8');
		$('#KK').attr('fill','#16304ae8');
		$('#KO').attr('fill','#16304ae8');
		$('#VLG').attr('fill','#16304ae8');
		$('#NGR').attr('fill','#16304ae8');
		$('#LEN').attr('fill','#16304ae8');
		$('#KR').attr('fill','#16304ae8');
		$('#polygon3597').attr('fill','#16304ae8');
		$('#polygon3595').attr('fill','#16304ae8');
		$('#polygon3599').attr('fill','#16304ae8');
		$('#polygon3601').attr('fill','#16304ae8');
		$('#polygon3603').attr('fill','#16304ae8');
		$('#polygon3605').attr('fill','#16304ae8');
		$('#polygon3607').attr('fill','#16304ae8');
		$('#polygon3569').attr('fill','#16304ae8');
		$('#polygon3571').attr('fill','#16304ae8');
		$('#polygon3573').attr('fill','#16304ae8');
		$('#polygon3575').attr('fill','#16304ae8');
		$('#polygon3577').attr('fill','#16304ae8');
		$('#polygon3579').attr('fill','#16304ae8');
		$('#polygon3581').attr('fill','#16304ae8');
		$('#polygon3583').attr('fill','#16304ae8');
		$('#polygon3585').attr('fill','#16304ae8');
		$('#polygon3587').attr('fill','#16304ae8');
		$('#polygon3589').attr('fill','#16304ae8');
		$('#polygon3593').attr('fill','#16304ae8');
		$('#polygon3591').attr('fill','#16304ae8');
		$('#polygon3559').attr('fill','#16304ae8');
		$('#polygon3561').attr('fill','#16304ae8');
		$('#polygon3563').attr('fill','#16304ae8');
		$('#polygon3565').attr('fill','#16304ae8');
		$('#polygon3567').attr('fill','#16304ae8');
		$('#KGD').attr('fill','#16304ae8');
		$('#polygon3650').attr('fill','#16304ae8');
		$('#polygon3652').attr('fill','#16304ae8');
		$('#path3654').attr('fill','#16304ae8');
		$('#MUR').attr('fill','#16304ae8');
		$('#PSK').attr('fill','#16304ae8');

        $(this).parents('.dropdown').find('span').text($(this).text());
        $(this).parents('.dropdown').find('input').attr('value', $(this).attr('id'));
		console.log($('.dropdown .dropdown-menu li').attr('data-ID-region'));
		$('#'+$('.dropdown .dropdown-menu li').attr('data-ID-region')).attr('fill','#598eea');
		$('#polygon3424-1').attr('fill','#598eea');
		setTimeout(function() {
			window.location.href = "/folk/"+$('.dropdown .dropdown-menu li').attr('data-ID-region');
		}, (1000));

    });

	$('.dropdown-menu li').click(function () {
	  var input = '<strong>' + $(this).parents('.dropdown').find('input').val() + '</strong>', msg = '<span class="msg">Hidden input value: ';
	  $('.msg').html(msg + input + '</span>');
	});

	/*
	function addOnWheel(elem, handler) {
	  if (elem.addEventListener) {
		if ('onwheel' in document) {
		  elem.addEventListener("wheel", handler);
		} else if ('onmousewheel' in document) {
		  elem.addEventListener("mousewheel", handler);
		} else {
		  elem.addEventListener("MozMousePixelScroll", handler);
		}
	  } else {
		text.attachEvent("onmousewheel", handler);
	  }
	}

	var scale = 1;

	addOnWheel(text, function(e) {
	  var delta = e.deltaY || e.detail || e.wheelDelta;
	  if (delta > 0) scale -= 0.05;
	  else scale = Math.max(scale+0.05, 0.1);

	  text.style.transform = text.style.WebkitTransform = text.style.MsTransform = 'scale(' + scale + ')';
	  e.preventDefault();
	});
	*/

	</script>
	</div>
</x-guest-layout>
