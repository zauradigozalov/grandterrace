<?php

namespace App\Http\Middleware;

use App\SyncMenu;
use Carbon\Carbon;
use Closure;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Config;

class Admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (Auth::check()) {

            if (Auth::user()->isAdmin()) {

                $user = Auth::user();


                session([
                    'userloggedin_name'=>$user->name,
                    'userloggedin_email'=>$user->email,
                    'userloggedin_date'=>$user->created_at->diffForHumans(),
                    'userloggedin_lastsyncdate'=>SyncMenu::orderBy('id','desc')->first()->created_at->diffForHumans()

                ]);



                return $next($request);
            }

        }

        return redirect('/');
    }
}
