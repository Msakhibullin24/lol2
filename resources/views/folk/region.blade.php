<x-guest-layout>
	<div class="">
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<br>
		<div class="max-w-full mx-auto text-center">
			<h1 class="text-2xl font-bold right" data-config-id="header" style="font-size: xx-large;">Культура Республики Татарстан</h1>
		</div>
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
		<x-ta-district></x-ta-district>
		<div class="region_box">
		<h1>О регионе</h1><br>
		
				<div class="container" style="justify-content: left;">
						<div class="flex items-center">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/28/Flag_of_Tatarstan.svg/160px-Flag_of_Tatarstan.svg.png"><div class="symbols" style="
    position: absolute;
    top: 80px;
">Флаг</div>
                        </div>
						&nbsp&nbsp&nbsp&nbsp
						<div class="flex items-center">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Coat_of_arms_of_Tatarstan.svg/90px-Coat_of_arms_of_Tatarstan.svg.png"><div class="symbols" style="
    position: absolute;
    top: 80px;
">Герб</div>
                        </div>
				</div>
				<br>	
				<br>
		Столица — город Казань.<br>
				<br>	
				<br>
		
<div class="flex items-center">
                            <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Rustam_Minnikhanov_official_photo_06_%28cropped%29.jpg/200px-Rustam_Minnikhanov_official_photo_06_%28cropped%29.jpg">
							
							
                        </div>
		<br>
		Раис — Рустам Нургалиевич Минниханов.
		<br>
		<br>
		<br>

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
		$('#polygon3424-1').attr('fill','#fff');
		$('#polygon3426-7').attr('fill','#fff');
		$('#polygon3428-4').attr('fill','#fff');
		$('#polygon3430-0').attr('fill','#fff');
		$('#polygon3432-9').attr('fill','#fff');
		$('#polygon3434-4').attr('fill','#fff');
		$('#polygon3436-8').attr('fill','#fff');
		$('#polygon3438-8').attr('fill','#fff');
		$('#path3440').attr('fill','#fff');
		$('#AMU').attr('fill','#fff');
		$('#YEV').attr('fill','#fff');
		$('#MAG').attr('fill','#fff');
		$('#Sakhalin_island').attr('fill','#fff');
		$('#polygon3612').attr('fill','#fff');
		$('#polygon3614').attr('fill','#fff');
		$('#polygon3616').attr('fill','#fff');
		$('#polygon3618').attr('fill','#fff');
		$('#polygon3620').attr('fill','#fff');
		$('#polygon3622').attr('fill','#fff');
		$('#path3625').attr('fill','#fff');
		$('#polygon3627').attr('fill','#fff');
		$('#polygon3629').attr('fill','#fff');
		$('#polygon3631').attr('fill','#fff');
		$('#polygon3633').attr('fill','#fff');
		$('#polygon3635').attr('fill','#fff');
		$('#path3638').attr('fill','#fff');
		$('#polygon3640').attr('fill','#fff');
		$('#polygon3668').attr('fill','#fff');
		$('#path3670').attr('fill','#fff');
		$('#KC').attr('fill','#fff');
		$('#IN').attr('fill','#fff');
		$('#DA').attr('fill','#fff');
		$('#STA').attr('fill','#fff');
		$('#CE').attr('fill','#fff');
		$('#KB').attr('fill','#fff');
		$('#AD').attr('fill','#fff');
		$('#KL').attr('fill','#fff');
		$('#path23925-7').attr('fill','#fff');
		$('#KDA').attr('fill','#fff');
		$('#VGG').attr('fill','#fff');
		$('#ROS').attr('fill','#fff');
		$('#AST').attr('fill','#fff');
		$('#YAR').attr('fill','#fff');
		$('#KOS').attr('fill','#fff');
		$('#IVA').attr('fill','#fff');
		$('#VLA').attr('fill','#fff');
		$('#TVE').attr('fill','#fff');
		$('#MOS').attr('fill','#fff');
		$('#MOW').attr('fill','#fff');
		$('#KLU').attr('fill','#fff');
		$('#ORL').attr('fill','#fff');
		$('#LIP').attr('fill','#fff');
		$('#TUL').attr('fill','#fff');
		$('#RYA').attr('fill','#fff');
		$('#TAM').attr('fill','#fff');
		$('#SMO').attr('fill','#fff');
		$('#BRY').attr('fill','#fff');
		$('#KRS').attr('fill','#fff');
		$('#BEL').attr('fill','#fff');
		$('#VOR').attr('fill','#fff');
		$('#ORE').attr('fill','#fff');
		$('#BA').attr('fill','#fff');
		$('#PER').attr('fill','#fff');
		$('#NIZ').attr('fill','#fff');
		$('#CU').attr('fill','#fff');
		$('#KIR').attr('fill','#fff');
		$('#ME').attr('fill','#fff');
		$('#TA').attr('fill','#fff');
		$('#UD').attr('fill','#fff');
		$('#MO').attr('fill','#fff');
		$('#PNZ').attr('fill','#fff');
		$('#SAR').attr('fill','#fff');
		$('#ULY').attr('fill','#fff');
		$('#SAM').attr('fill','#fff');
		$('#KGN').attr('fill','#fff');
		$('#CHE').attr('fill','#fff');
		$('#TYU').attr('fill','#fff');
		$('#SVE').attr('fill','#fff');
		$('#KHM').attr('fill','#fff');
		$('#polygon3659').attr('fill','#fff');
		$('#polygon3661').attr('fill','#fff');
		$('#polygon3663').attr('fill','#fff');
		$('#path3665').attr('fill','#fff');
		$('#BU').attr('fill','#fff');
		$('#Zabaykalsky').attr('fill','#fff');
		$('#polygon3707').attr('fill','#fff');
		$('#OMS').attr('fill','#fff');
		$('#NVS').attr('fill','#fff');
		$('#ALT').attr('fill','#fff');
		$('#AL').attr('fill','#fff');
		$('#TY').attr('fill','#fff');
		$('#polygon3715').attr('fill','#fff');
		$('#polygon3717').attr('fill','#fff');
		$('#polygon3719').attr('fill','#fff');
		$('#path3721').attr('fill','#fff');
		$('#polygon3723').attr('fill','#fff');
		$('#polygon3725').attr('fill','#fff');
		$('#path3727').attr('fill','#fff');
		$('#polygon3729').attr('fill','#fff');
		$('#polygon3731').attr('fill','#fff');
		$('#polygon3733').attr('fill','#fff');
		$('#polygon3735').attr('fill','#fff');
		$('#polygon3737').attr('fill','#fff');
		$('#polygon3739').attr('fill','#fff');
		$('#polygon3741').attr('fill','#fff');
		$('#polygon3743').attr('fill','#fff');
		$('#polygon3745').attr('fill','#fff');
		$('#path3747').attr('fill','#fff');
		$('#TOM').attr('fill','#fff');
		$('#KEM').attr('fill','#fff');
		$('#KK').attr('fill','#fff');
		$('#KO').attr('fill','#fff');
		$('#VLG').attr('fill','#fff');
		$('#NGR').attr('fill','#fff');
		$('#LEN').attr('fill','#fff');
		$('#KR').attr('fill','#fff');
		$('#polygon3597').attr('fill','#fff');
		$('#polygon3595').attr('fill','#fff');
		$('#polygon3599').attr('fill','#fff');
		$('#polygon3601').attr('fill','#fff');
		$('#polygon3603').attr('fill','#fff');
		$('#polygon3605').attr('fill','#fff');
		$('#polygon3607').attr('fill','#fff');
		$('#polygon3569').attr('fill','#fff');
		$('#polygon3571').attr('fill','#fff');
		$('#polygon3573').attr('fill','#fff');
		$('#polygon3575').attr('fill','#fff');
		$('#polygon3577').attr('fill','#fff');
		$('#polygon3579').attr('fill','#fff');
		$('#polygon3581').attr('fill','#fff');
		$('#polygon3583').attr('fill','#fff');
		$('#polygon3585').attr('fill','#fff');
		$('#polygon3587').attr('fill','#fff');
		$('#polygon3589').attr('fill','#fff');
		$('#polygon3593').attr('fill','#fff');
		$('#polygon3591').attr('fill','#fff');
		$('#polygon3559').attr('fill','#fff');
		$('#polygon3561').attr('fill','#fff');
		$('#polygon3563').attr('fill','#fff');
		$('#polygon3565').attr('fill','#fff');
		$('#polygon3567').attr('fill','#fff');
		$('#KGD').attr('fill','#fff');
		$('#polygon3650').attr('fill','#fff');
		$('#polygon3652').attr('fill','#fff');
		$('#path3654').attr('fill','#fff');
		$('#MUR').attr('fill','#fff');
		$('#PSK').attr('fill','#fff');

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
