<nav x-data="{ open: false }" class="fixed w-full">
    <div class="fixed w-full p-4 primary-navigation">
        <div class="flex  justify-between  mt-3 mb-4">
            <div class="flex nav-1">
                <div class="shrink-0 flex items-center logo">
					<span id="demo">Внимание! Платформа работает в тестовом режиме!</span>
                    <a href="/">
                        <img src="/img/logo_kazan.png">
                    </a>
                </div>
            </div>
            <div class="flex nav-2">
                <div class="flex mt-2 mb-2">
					<div class="hidden sm:flex">
						<x-nav-link :href="route('orders.reestr')" :active="request()->routeIs('orders.reestr')">
							{{ __('Реестр РИД') }}
						</x-nav-link>
					</div>
					<div class="hidden sm:flex">
						<x-nav-link :href="route('orders.folks')" :active="request()->routeIs('orders.folk')">
							{{ __('Культура регионов') }}
						</x-nav-link>
					</div>
					<div class="hidden sm:flex" style="border: 1px solid #162d47bf; border-radius: 10px;">
						<x-nav-link :href="route('orders.blogs')" :active="request()->routeIs('orders.blogs')">
							{{ __('Блог') }}
						</x-nav-link>
					</div>
					<div class="hidden sm:flex" >
						<x-nav-link :href="route('orders.theoda')" :active="request()->routeIs('orders.theoda')">
							{{ __('Услуги') }}
						</x-nav-link>
					</div>
                </div>
            </div>
            <div class="flex nav-21">
                <div class="flex mt-2 mb-2">
					<div class="hidden sm:flex mt-1">
						<a href="tel:+78432775836">8 (843) 277-58-36</a>
					</div>
					<div class="hidden sm:flex" style="border: 1px solid #162d47bf; border-radius: 10px;">
						<x-nav-link :href="route('orders.blogs')" :active="request()->routeIs('orders.blogs')">
							{{ __('Позвонить') }}
						</x-nav-link>
					</div>
                </div>
            </div>
            <div class="flex nav-3">
			
				<!-- <img src="/img/pp/2024.png" style="width: 115px;position: absolute;top: 10px;margin-left: -35px;"> -->
				<div style="margin-left: auto; margin-top: 5px;">
				@auth
                <x-dropdown align="right" width="48" class="hidden">
                    <x-slot name="trigger">
						@auth
                        <button class="hidden sm:flex inline-flex ">
                            <div style="background: url(/img/icon-login_black.png); background-position-x: 0px; padding-left: 40px; background-repeat: no-repeat; padding-top: 7px; padding-bottom: 7px; color: #162d47bf;">{{ Auth::user()->name }} {{ Auth::user()->name_name }} {{ Auth::user()->name_otch }}</div>
                            <div class="ml-1" style="margin-top:10px">
                                <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20">
                                    <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd" />
                                </svg>
                            </div>
                        </button>
						@endauth
                    </x-slot>

                    <x-slot name="content" class="hidden">
						<x-dropdown-link :href="route('orders.rights')">
                            {{ __('Мои РИД') }}
                        </x-dropdown-link>
                        <x-dropdown-link :href="route('profiles.index')">
                            {{ __('Профили заявителя') }}
                        </x-dropdown-link>
						<x-dropdown-link :href="route('orders.payments')">
                            {{ __('Счета на оплату') }}
                        </x-dropdown-link>
						<x-dropdown-link :href="route('profile.edit')">
                            {{ __('Аккаунт') }}
                        </x-dropdown-link>
                        <form method="POST" action="{{ route('logout') }}">
                            @csrf
                            <x-dropdown-link :href="route('logout')"
                                    onclick="event.preventDefault();
                                                this.closest('form').submit();">
                                {{ __('Выход') }}
                            </x-dropdown-link>
                        </form> 
                    </x-slot>
                </x-dropdown>
				
				@else
				<a href="/login" class=" sm:flex sm:items-right" style="background: url(/img/icon-login_black.png); background-position-x: 0px;    padding-left: 40px; background-repeat: no-repeat; padding-top: 8px;">Вход</a>
				@endauth
				
				</div>
            </div>
			@auth
            <div class="-mr-2 flex items-center sm:hidden">
                <button @click="open = ! open" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 dark:text-gray-500 hover:text-gray-500 dark:hover:text-gray-400 hover:bg-gray-100 dark:hover:bg-gray-900 focus:outline-none focus:bg-gray-100 dark:focus:bg-gray-900 focus:text-gray-500 dark:focus:text-gray-400 transition duration-150 ease-in-out">
                    <svg class="h-6 w-6" stroke="currentColor" fill="none" viewBox="0 0 24 24">
                        <path :class="{'hidden': open, 'inline-flex': ! open }" class="inline-flex" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
                        <path :class="{'hidden': ! open, 'inline-flex': open }" class="hidden" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
                    </svg>
                </button>
            </div>
			@endauth
        </div>
    </div>

    <div :class="{'block': open, 'hidden': ! open}" class="hidden sm:hidden pt-90">
        <div class="pt-4 pb-1 border-t border-gray-200 dark:border-gray-600 mob_menu">
			@auth
            <div class="px-4">
                <div class="font-medium text-base text-gray-800 dark:text-gray-200">{{ Auth::user()->name }} {{ Auth::user()->name_name }} {{ Auth::user()->name_otch }}</div>
                <div class="font-medium text-sm text-gray-500">{{ Auth::user()->email }}</div>
            </div>
            <div class="mt-3 space-y-1">
				<x-responsive-nav-link :href="route('orders.rights')" :active="request()->routeIs('orders.rights')">
					{{ __('Мои РИД') }}
				</x-responsive-nav-link>
				<x-responsive-nav-link :href="route('profiles.index')" :active="request()->routeIs('orders.rights')">
					{{ __('Профили') }}
				</x-responsive-nav-link>
				<x-responsive-nav-link :href="route('orders.payments')" :active="request()->routeIs('orders.payments')">
					{{ __('Счета на оплату') }}
				</x-responsive-nav-link>
                <x-responsive-nav-link :href="route('profile.edit')">
                    {{ __('Аккаунт') }}
                </x-responsive-nav-link>
                <form method="POST" action="{{ route('logout') }}">
                    @csrf
                    <x-responsive-nav-link :href="route('logout')" onclick="event.preventDefault(); this.closest('form').submit();">
                        {{ __('Выход') }}
                    </x-responsive-nav-link>
                </form>
            </div>
			@endauth
        </div>
    </div>
</nav>

<div class="chat-site">
	<div class="card-chat card-primary card-outline direct-chat direct-chat-primary">
        <div class="card-header">
            <h3 class="card-title"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">Чат с поддержкой</font></font></h3>
            <div class="card-tools">
				<input type="button" onclick="growDiv()" value="+ Развернуть" id="more-button">
            </div>
        </div>
        <div id="grow">
			<div class='measuringWrapper'>
				<div class="card-body" style="display: block;">
					<div class="direct-chat-messages" id="direct-chat-messages">
					</div>
				</div>
				<div class="card-footer" style="display: block;">
				@auth 
					<input type="hidden" value="{{Auth::user()->id}}" id="auth_id"  name="auth_id" >
					<input type="hidden" value="{{Auth::user()->chat_id_support}}" id="chat_id_support"  name="chat_id_support" >
				@else
					<input type="hidden" value="0" id="auth_id"  name="auth_id" >
					<input type="hidden" value="0" id="chat_id_support"  name="chat_id_support" >
				@endif
					<div class="input-group">
						<textarea name="new_message" id="new_message" placeholder="Введите сообщение..." class="form-control" rows="3" cols="10" style="font-size: smaller;"  onenter="sendMessage()"></textarea>
						<span class="input-group-append2">
							<button type="button" class="btn btn-send-chat" onclick="sendMessage()" id="send">
								
							</button>
						</span>
					</div>
				</div>
            </div>
        </div>
    </div>
</div>

<script>

load_chat_support()

	function load_chat_support() {
		var chat_id_support = getCookie('chat_id_support');
		if(!chat_id_support){
			const data = {
			  "auth_id": document.getElementById("auth_id").value,
			  "chat_id_support": 0,
			  "_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
			};
			const Http = new XMLHttpRequest();
			const url='/lcs';
			Http.onreadystatechange = function() {
				if (Http.readyState == XMLHttpRequest.DONE) {
					var obj = JSON.parse(Http.responseText);
					setCookie('chat_id_support',obj.id,1);
				}
			}
			Http.open("POST", url);
			Http.setRequestHeader("Content-Type", "application/json");
			Http.send(JSON.stringify(data));
		}
		
		document.getElementById("chat_id_support").value = getCookie('chat_id_support');

		const data = {
			"auth_id": document.getElementById("auth_id").value,
			"chat_id_support": chat_id_support,
			"_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
		};
		const Http = new XMLHttpRequest();
		const url='/load_chat';
		Http.onreadystatechange = function() {
			if (Http.readyState == XMLHttpRequest.DONE) {
				var chat = JSON.parse(Http.responseText);
				//console.log(chat.messages.length);
				var chat_body = '';
				for(var i=0; i<chat.messages.length; i++){
					if(chat.messages[i].operator_id != 0){
						chat_body = chat_body +  
						'<div class="direct-chat-msg">'+
							'<div class="direct-chat-infos clearfix">'+
								'<span class="direct-chat-name float-left"><font style="vertical-align: inherit;">Оператор</font></span>'+
								'<span class="direct-chat-timestamp float-right"><font style="vertical-align: inherit;">23 января 14:00</font></span>'+
							'</div>'+
							'<div class="direct-chat-text">'+
								'<font style="vertical-align: inherit;">'+chat.messages[i].text+'</font>'+
							'</div>'+
						'</div>';
					} else  {
						chat_body = chat_body +  
						'<div class="direct-chat-msg right">'+
							'<div class="direct-chat-infos clearfix">'+
							'<span class="direct-chat-name float-right"><font style="vertical-align: inherit;">Вы</font></span>'+
							'<span class="direct-chat-timestamp float-left"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">23 янв 14:05</font></font></span>'+
							'</div>'+
							'<div class="direct-chat-text">'+
							'	<font style="vertical-align: inherit;">'+chat.messages[i].text+'</font>'+
							'</div>'+
						'</div>';
					}
				}
				document.getElementById("direct-chat-messages").innerHTML = chat_body;
				objDiv = document.getElementById("direct-chat-messages");
				objDiv.scrollTop = objDiv.scrollHeight;
			}
		}
		Http.open("POST", url);
		Http.setRequestHeader("Content-Type", "application/json");
		Http.send(JSON.stringify(data));
	}
	
	let timer2 = setInterval(() => load_chat_support(), 10000);
	

	function sendMessage(){
		const data = {
		  "message": document.getElementById("new_message").value,
		  "msg_type": "support",
		  "chat_id": document.getElementById("chat_id_support").value,
		  "_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
		};
		const Http = new XMLHttpRequest();
		const url='/sendmessage';
		Http.onreadystatechange = function() {
			if (Http.readyState == XMLHttpRequest.DONE) {
				document.getElementById("new_message").value = '';
				load_chat_support();
			}
		}
		Http.open("POST", url);
		Http.setRequestHeader("Content-Type", "application/json");
		Http.send(JSON.stringify(data));
		//location.reload();
	}

	function growDiv() {
		var growDiv = document.getElementById('grow');
		var cchat = document.querySelector('.chat-site');
		if (growDiv.clientHeight) {
			growDiv.style.height = 0;
			cchat.style.height = "55px";
			cchat.style.bottom = "-5px";
		} else {
			var wrapper = document.querySelector('.measuringWrapper');
			growDiv.style.height = "500px";
			cchat.style.height = "472px";
			cchat.style.bottom = "20px";
		}
		document.getElementById("more-button").value = document.getElementById("more-button").value == '+ Развернуть' ? '- Свернуть' : '+ Развернуть';
	}
	
	function setCookie(name,value,days) {
		var expires = "";
		if (days) {
			var date = new Date();
			date.setTime(date.getTime() + (days*24*60*60*1000));
			expires = "; expires=" + date.toUTCString();
		}
		document.cookie = name + "=" + (value || "")  + expires + "; path=/";
	}
	function getCookie(name) {
		var nameEQ = name + "=";
		var ca = document.cookie.split(';');
		for(var i=0;i < ca.length;i++) {
			var c = ca[i];
			while (c.charAt(0)==' ') c = c.substring(1,c.length);
			if (c.indexOf(nameEQ) == 0) return c.substring(nameEQ.length,c.length);
		}
		return null;
	}
	
	
</script>