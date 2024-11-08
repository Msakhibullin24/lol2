<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<title>ОДА | Панель управления</title>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<link rel="stylesheet" href="{{ asset('backend/plugins/fontawesome-free/css/all.min.css')}}">
	<link rel="stylesheet" href="{{ asset('backend/dist/css/adminlte.css')}}">
	<link rel="stylesheet" href="{{ asset('backend/dist/css/style.css')}}">
	<link rel="stylesheet" href="{{ asset('backend/plugins/summernote/summernote.css')}}">
<style>

.user-block .username, .user-block .description, .user-block .comment {
    display: block;
    margin-left: 10px;
}
.card-comments .comment-text {
    color: #0b3054;
    margin-left: 10px;
}

.card-footer.card-comments.u-comment {
    background: #cedff1;
}

.btn-primary {
    color: #fff;
    background-color: #0165bf;
    border-color: #8cb9e2;
    box-shadow: none;
}

.btn-primary:hover {
    color: #fff;
    background-color: #0165bf;
    border-color: #8cb9e2;
}


.danger_true{
    margin: 0 auto;
    width: max-content;
    text-align: inherit;
    display: block;
    color: #fff;
    background: #0165bf;
    padding: 10px;
    position: relative;
    top: -25px;
}

.danger_false{
    margin: 0 auto;
    width: max-content;
    text-align: inherit;
    display: block;
    color: #fff;
    background: #f87a1d;
    padding: 10px;
    position: relative;
    top: -25px;
}
.table {
    width: 100%;
    margin-bottom: 1rem;
    color: #212529;
    background-color: white;
}

</style>

	@yield('css')
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		@include('administrator.layouts.partials.navbar')
		@include('administrator.layouts.partials.sidebar')
		<div class="content-wrapper">
			{{ $slot }}
		</div>
		@include('administrator.layouts.partials.footer')
	</div>
	<script src="{{ asset('backend/plugins/jquery/jquery.min.js')}}"></script>
	<script src="{{ asset('backend/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
	<script src="{{ asset('backend/dist/js/adminlte.min.js')}}"></script>
	<script src="{{ asset('backend/plugins/summernote/summernote.js')}}"></script>
	<script>
		$(document).ready(function() {
			url = document.baseURI;
			if(url.indexOf('/blogs/new')!=-1){
				$('.blog_content').summernote({height: 500});
				$('.note-codable').attr('name','content');
				$('.note-editable').on('keydown keypress keyup', function(e) {
					$('.note-codable').text($('.note-editable').html());
				});
			}
			
			if(url.indexOf('/blog/')!=-1){
				$('.blog_content').summernote({height: 500});
				$('.note-codable').attr('name','content');
				$('.note-editable').on('keydown keypress keyup', function(e) {
					$('.note-codable').text($('.note-editable').html());
				});
				var description_tmp = document.getElementById('description_tmp').innerHTML;
				var description = new DOMParser().parseFromString(description_tmp, "text/html");
				$('.note-editable').html(description.body.textContent);
				//$('#content').html(description.body.textContent);
			}
		});
	</script>
	@yield('js')
	<script>
	
	

	function danger(){
		if (document.getElementById('customSwitch3').checked){
			var danger = "true";
		} else {
			var danger = "false";
		}
		const data = {
			"_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
			"danger": danger
		};
		const Http = new XMLHttpRequest();
		const url='/chd';
	
		Http.onreadystatechange = function() {
			if (Http.readyState == XMLHttpRequest.DONE) {
				location.reload();
			}
		}
		Http.open("POST", url);
		Http.setRequestHeader("Content-Type", "application/json");
		Http.send(JSON.stringify(data));
	}
	
	
	
	
function get_new_messages(){
	var cnm = document.getElementById('count_new_massages');
	var cnm2 = document.getElementById('count_new_massages_2');
	var nm = document.getElementById('new_massages');
	
	const data = {
	  "_token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
	};
	const Http = new XMLHttpRequest();
	const url='/administrator/gnm';
	
	Http.onreadystatechange = function() {
		if (Http.readyState == XMLHttpRequest.DONE) {
			var obj = JSON.parse(Http.responseText);
			var res = [];
			var res_id = [];
			var chats_list_table = document.getElementById("chats_list");
			if(obj.length>0){
				for(var i in obj)
					res.push(obj[i]);
					res_id.push(obj[i].id);
			}
			if(res.length>0){
				nm.innerHTML = '';
				if(res.length<=8){
					for(var i=0;i<res.length;i++){
						if(res[i].name==null){
							res[i].name = 'Незарегистрованный пользователь';
						}
						const a = document.createElement('a');
						a.classList.add('dropdown-item');
						a.href='/administrator/chat/'+res[i].id;

						const div = document.createElement('div');
						div.classList.add('media');
						a.append(div);

						const div2 = document.createElement('div');
						div2.classList.add('media-body');
						a.append(div2);

						const h3 = document.createElement('h3');
						h3.classList.add('dropdown-item-title');
						h3.innerHTML = res[i].name+'';
						a.append(h3);

						const divider = document.createElement('div');
						divider.classList.add('dropdown-divider');
						a.append(divider);

						const p = document.createElement('p');
						p.classList.add('text-sm');
						p.classList.add('text-muted');
						p.innerHTML = '<i class="far fa-clock mr-1"></i>'+res[i].mdate;
						a.append(p);
						nm.append(a);
					}
					const a2 = document.createElement('a');
					a2.classList.add('dropdown-item');
					a2.classList.add('dropdown-footer');
					a2.href='/administrator/chats';
					a2.innerHTML='Смотреть все сообщения';
					nm.append(a2);
				} else {
					for(var i=0;i<8;i++){
						nm.append(res[i]);
						//console.log(res[i]);
					}
				}
				cnm.innerHTML = res.length;
				cnm.style.display='block';
				cnm2.innerHTML = res.length;
				cnm2.style.display='block';

				if (chats_list_table!=null){
					for (var i = 0, row; row = chats_list_table.rows[i]; i++) {
						for (var j = 0, col; col = row.cells[j]; j++) {
							change_status_green = '<span class="badge badge-success">Дан ответ </span>';
							change_status_red = '<span class="badge badge-danger"> Вопрос </span>';
							flag = 0;
							row_id = 0;
							if (j==1 && i>0){
								//cleanText = row.cells[j];
								//cleanText = cleanText.replace(/<\/?[^>]+(>|$)/g, "");
								//console.log(row.cells[j].innerHTML);
								var id = row.cells[j].innerHTML;
								var sid = parseInt(id);
								if (res_id.includes(sid)) {
									row.cells[4].innerHTML = change_status_red;
								} else {
								}
							}
						}
					}
				}

			} else {
				cnm.innerHTML = '0';
				cnm.style.display='none';
				cnm2.innerHTML = '0';
				cnm2.style.display='none';
			}
		}
	}
	
	Http.open("POST", url);
	Http.setRequestHeader("Content-Type", "application/json");
	Http.send(JSON.stringify(data));
	//location.reload();
}
get_new_messages();
let timerId = setInterval(() => get_new_messages(), 5000);
</script>
</body>
</html>