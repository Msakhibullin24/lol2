<?php

use App\Http\Controllers\Operator\Auth\AuthenticatedSessionController;
use App\Http\Controllers\Operator\Auth\ConfirmablePasswordController;
use App\Http\Controllers\Operator\Auth\EmailVerificationNotificationController;
use App\Http\Controllers\Operator\Auth\EmailVerificationPromptController;
use App\Http\Controllers\Operator\Auth\NewPasswordController;
use App\Http\Controllers\Operator\Auth\PasswordResetLinkController;
use App\Http\Controllers\Operator\Auth\RegisteredUserController;
use App\Http\Controllers\Operator\Auth\VerifyEmailController;
use App\Http\Controllers\Operator\DashboardController;
use Illuminate\Support\Facades\Route;

Route::prefix('operator')->name('operator.')->group(function () {

    Route::get('/', [DashboardController::class, 'index'])
        ->middleware('auth:operator');

    Route::get('/dashboard', [DashboardController::class, 'index'])
        ->middleware('auth:operator')
        ->name('dashboard');

    Route::get('/register', [RegisteredUserController::class, 'create'])
        ->middleware('guest:operator')
        ->name('register');

    Route::post('/register', [RegisteredUserController::class, 'store'])
        ->middleware('guest:operator');

    Route::get('/login', [AuthenticatedSessionController::class, 'create'])
        ->middleware('guest:operator')
        ->name('login');

    Route::post('/login', [AuthenticatedSessionController::class, 'store'])
        ->middleware('guest:operator');

    Route::get('/forgot-password', [PasswordResetLinkController::class, 'create'])
        ->middleware('guest:operator')
        ->name('password.request');

    Route::post('/forgot-password', [PasswordResetLinkController::class, 'store'])
        ->middleware('guest:operator')
        ->name('password.email');

    Route::get('/reset-password/{token}', [NewPasswordController::class, 'create'])
        ->middleware('guest:operator')
        ->name('password.reset');

    Route::post('/reset-password', [NewPasswordController::class, 'store'])
        ->middleware('guest:operator')
        ->name('password.update');

    Route::get('/verify-email', [EmailVerificationPromptController::class, '__invoke'])
        ->middleware('auth:operator')
        ->name('verification.notice');

    Route::get('/verify-email/{id}/{hash}', [VerifyEmailController::class, '__invoke'])
        ->middleware(['auth:operator', 'signed', 'throttle:6,1'])
        ->name('verification.verify');

    Route::post('/email/verification-notification', [EmailVerificationNotificationController::class, 'store'])
        ->middleware(['auth:operator', 'throttle:6,1'])
        ->name('verification.send');

    Route::get('/confirm-password', [ConfirmablePasswordController::class, 'show'])
        ->middleware('auth:operator')
        ->name('password.confirm');

    Route::post('/confirm-password', [ConfirmablePasswordController::class, 'store'])
        ->middleware('auth:operator');

    Route::post('/logout', [AuthenticatedSessionController::class, 'destroy'])
        ->middleware('auth:operator')
        ->name('logout');
});
