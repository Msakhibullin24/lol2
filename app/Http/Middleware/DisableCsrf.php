<?php

namespace AppHttpMiddleware;

use Closure;

class DisableCsrf
{
    /**
     * Отключение проверки CSRF
     *
     * @param  IlluminateHttpRequest  $request
     * @param  Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        return $next($request);
    }
}