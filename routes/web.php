<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\ProfilesController;
use App\Http\Controllers\OrderController;
use App\Http\Controllers\PostController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

require __DIR__.'/auth.php';
require __DIR__.'/administrator.php';
require __DIR__.'/operator.php';

Route::get('/dashboard2', function () {
    return view('dashboard2');
})->middleware(['auth', 'verified'])->name('dashboard2');

Route::get('/send_order', function () {
    return view('send_order');
})->middleware(['auth', 'verified'])->name('send_order');
/*
Route::get('/', function () {
    return view('welcome');
});
*/
Route::get('/', [OrderController::class, 'welcome'])->name('orders.welcome');
Route::get('/reestr', [OrderController::class, 'reestr'])->name('orders.reestr');

Route::get('/privacy', [OrderController::class, 'privacy'])->name('orders.privacy');
Route::get('/legal_information', [OrderController::class, 'legal_information'])->name('orders.legal_information');
Route::get('/agreement', [OrderController::class, 'agreement'])->name('orders.agreement');
Route::get('/theoda', [OrderController::class, 'theoda'])->name('orders.theoda');

Route::get('/blogs', [OrderController::class, 'blogs'])->name('orders.blogs');
Route::get('/blog/{id}', [OrderController::class, 'blog'])->name('orders.blog');
Route::post('/lcs', [OrderController::class, 'lcs'])->name('lcs');
Route::post('/load_chat', [OrderController::class, 'load_chat'])->name('load_chat');
Route::post('/sendmessage', [OrderController::class, 'sendmessage'])->name('sendmessage');
Route::post('/rest/inner/notify', [OrderController::class, 'notify'])->name('notify');
Route::get('/folks', [OrderController::class, 'folks'])->name('orders.folks');
Route::get('/folk/{id}', [OrderController::class, 'folk'])->name('orders.folk');
Route::get('/folk/{id}/{link}', [OrderController::class, 'folk_link'])->name('orders.folk_link');

Route::middleware(['auth', 'verified'])->group(function () {

	//Route::resource('/dashboard', OrderController::class);
	Route::resource('/orders', OrderController::class);
	Route::resource('/profiles', ProfilesController::class);

	//Route::get('/dashboard', [OrderController::class, 'index'])->name('dashboard.index');

	Route::get('/rights', [OrderController::class, 'rights'])->name('orders.rights');

	Route::get('/orders/create/book', [OrderController::class, 'book'])->name('orders.create.book');
	Route::get('/orders/create/po', [OrderController::class, 'po'])->name('orders.create.po');
	Route::get('/orders/create/prom', [OrderController::class, 'prom'])->name('orders.create.prom');
	Route::get('/orders/create/tz', [OrderController::class, 'tz'])->name('orders.create.tz');
	Route::get('/orders/create/tz2', [OrderController::class, 'tz2'])->name('orders.create.tz2');
	Route::get('/orders/create/izo', [OrderController::class, 'izo'])->name('orders.create.izo');
	Route::get('/orders/create/pm', [OrderController::class, 'pm'])->name('orders.create.pm');
	Route::get('/payments', [OrderController::class, 'payments'])->name('orders.payments');

	Route::patch('/orders', [OrderController::class, 'update'])->name('orders.update');

    Route::post('/orders/del_img', [OrderController::class, 'del_img'])->name('orders.del_img');
    Route::post('/orders/update', [OrderController::class, 'update'])->name('orders.update');

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::post('/profiles/update', [ProfilesController::class, 'update'])->name('profiles.update');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');

});