<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class GuestUser
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        if(!$request->session()->has('user_id'))
        {
            return redirect('/sign-in');
        } 
        return $next($request);
    }
}
