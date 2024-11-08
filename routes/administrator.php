<?php

use App\Http\Controllers\Administrator\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Administrator\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Administrator\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Administrator\Auth\EmailVerificationPromptController;
use App\Http\Controllers\Administrator\Auth\NewPasswordController;
use App\Http\Controllers\Administrator\Auth\PasswordResetLinkController;
use App\Http\Controllers\Administrator\Auth\RegisteredUserController;
use App\Http\Controllers\Administrator\Auth\VerifyEmailController;
use App\Http\Controllers\Administrator\DashboardController;
use Illuminate\Support\Facades\Route;


Route::post('/chd', [DashboardController::class, 'chd'])
        ->name('chd');

Route::post('/cvk', [DashboardController::class, 'cvk'])
        ->name('cvk');

Route::prefix('administrator')->name('administrator.')->group(function () {

    Route::get('/', [DashboardController::class, 'index'])
        ->middleware('auth:administrator');

    Route::post('/sendmessage', [DashboardController::class, 'sendmessage'])
        ->middleware('auth:administrator')
        ->name('sendmessage');

    Route::post('/gnm', [DashboardController::class, 'gnm'])
        ->middleware('auth:administrator')
        ->name('gnm');

    Route::get('/dashboard', [DashboardController::class, 'index'])
        ->middleware('auth:administrator')
        ->name('dashboard');

    Route::get('/chats', [DashboardController::class, 'chats'])
        ->middleware('auth:administrator')
        ->name('chats');

    Route::get('/blogs', [DashboardController::class, 'blogs'])
        ->middleware('auth:administrator')
        ->name('blogs');

    Route::get('/blog/{id}', [DashboardController::class, 'blog'])
        ->middleware('auth:administrator')
        ->name('blog');

    Route::get('/blogs/new', [DashboardController::class, 'newblog'])
        ->middleware('auth:administrator')
        ->name('newblog');

    Route::post('/blog_store', [DashboardController::class, 'blog_store'])
        ->middleware('auth:administrator')
        ->name('blog_store');

    Route::post('/blog_save', [DashboardController::class, 'blog_save'])
        ->middleware('auth:administrator')
        ->name('blog_save');

    Route::get('/chat/{id}', [DashboardController::class, 'chat'])
        ->middleware('auth:administrator')
        ->name('chat');

    Route::get('/logs', [DashboardController::class, 'logs'])
        ->middleware('auth:administrator')
        ->name('logs');

    Route::get('/payments', [DashboardController::class, 'payments'])
        ->middleware('auth:administrator')
        ->name('payments');
	
    Route::get('/ourservices', [DashboardController::class, 'ourservices'])
        ->middleware('auth:administrator')
        ->name('ourservices');
	
    Route::get('/payments', [DashboardController::class, 'payments'])
        ->middleware('auth:administrator')
        ->name('payments');

    Route::get('/reestr', [DashboardController::class, 'reestr'])
        ->middleware('auth:administrator')
        ->name('reestr');


    Route::get('/options', [DashboardController::class, 'options'])
        ->middleware('auth:administrator')
        ->name('options');

    Route::get('/options/advantages', [DashboardController::class, 'advantages'])
        ->middleware('auth:administrator')
        ->name('advantages');

    Route::get('/options/advantage/{id}', [DashboardController::class, 'advantage'])
        ->middleware('auth:administrator')
        ->name('advantage');

    Route::post('/advantage_save', [DashboardController::class, 'advantage_save'])
        ->middleware('auth:administrator')
        ->name('advantage_save');
		

    Route::get('/options/textblock/{id}', [DashboardController::class, 'textblock'])
        ->middleware('auth:administrator')
        ->name('textblock');

    Route::post('/textblock_save', [DashboardController::class, 'textblock_save'])
        ->middleware('auth:administrator')
        ->name('textblock_save');


    Route::get('/rights', [DashboardController::class, 'rights'])
        ->middleware('auth:administrator')
        ->name('rights');

    Route::get('/inform', [DashboardController::class, 'inform'])
        ->middleware('auth:administrator')
        ->name('inform');

    Route::get('/rights/new', [DashboardController::class, 'newrights'])
        ->middleware('auth:administrator')
        ->name('newrights');

    Route::post('/right_store', [DashboardController::class, 'right_store'])
        ->middleware('auth:administrator')
        ->name('right_store');

    Route::post('/right_save', [DashboardController::class, 'right_save'])
        ->middleware('auth:administrator')
        ->name('right_save');

    Route::get('/right/{id}', [DashboardController::class, 'right'])
        ->middleware('auth:administrator')
        ->name('right');


    Route::get('/users', [DashboardController::class, 'users'])
        ->middleware('auth:administrator')
        ->name('users');

    Route::post('/user_save', [DashboardController::class, 'user_save'])
        ->middleware('auth:administrator')
        ->name('user_save');

    Route::post('/order_save', [DashboardController::class, 'order_save'])
        ->middleware('auth:administrator')
        ->name('order_save');

    Route::get('/user/{id}', [DashboardController::class, 'user'])
        ->middleware('auth:administrator')
        ->name('user');


    Route::get('/order/{id}', [DashboardController::class, 'order'])
        ->middleware('auth:administrator')
        ->name('order');

    Route::get('/register', [RegisteredUserController::class, 'create'])
        ->middleware('guest:administrator')
        ->name('register');

    Route::post('/register', [RegisteredUserController::class, 'store'])
        ->middleware('guest:administrator');

    Route::get('/login', [AuthenticatedSessionController::class, 'create'])
        ->middleware('guest:administrator')
        ->name('login');

    Route::post('/login', [AuthenticatedSessionController::class, 'store'])
        ->middleware('guest:administrator');

    Route::get('/forgot-password', [PasswordResetLinkController::class, 'create'])
        ->middleware('guest:administrator')
        ->name('password.request');

    Route::post('/forgot-password', [PasswordResetLinkController::class, 'store'])
        ->middleware('guest:administrator')
        ->name('password.email');

    Route::get('/reset-password/{token}', [NewPasswordController::class, 'create'])
        ->middleware('guest:administrator')
        ->name('password.reset');

    Route::post('/reset-password', [NewPasswordController::class, 'store'])
        ->middleware('guest:administrator')
        ->name('password.update');

    Route::get('/verify-email', [EmailVerificationPromptController::class, '__invoke'])
        ->middleware('auth:administrator')
        ->name('verification.notice');

    Route::get('/verify-email/{id}/{hash}', [VerifyEmailController::class, '__invoke'])
        ->middleware(['auth:administrator', 'signed', 'throttle:6,1'])
        ->name('verification.verify');

    Route::post('/email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
        ->middleware(['auth:administrator', 'throttle:6,1'])
        ->name('verification.send');

    Route::get('/confirm-password', [ConfirmablePasswordController::class, 'show'])
        ->middleware('auth:administrator')
        ->name('password.confirm');

    Route::post('/confirm-password', [ConfirmablePasswordController::class, 'store'])
        ->middleware('auth:administrator');

    Route::get('/logout', [AuthenticatedSessionController::class, 'destroy'])
        ->middleware('auth:administrator')
        ->name('logout');
});
