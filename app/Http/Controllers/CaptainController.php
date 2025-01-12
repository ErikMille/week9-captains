<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Captain;
use App\Assignment;
class CaptainController extends Controller
{
    //
    public function show($captain_slug)
    {
        $captain = \App\Captain::where('slug', $captain_slug)->first();

        if (!$captain) {
            abort(404, 'Captain not found');
        }

        $view = view('captain/show');
        $view->captain = $captain;
        return $view;
    }
    public function index()
    {
        $captains=Captain::orderBy('name','asc')->get();
        return view('captain/index',compact('captains'));
    }
    public function assign(Request $request,$captain_id)
    {   
        
        $assign=new Assignment;
        $assign->captain_id=$captain_id;
        $assign->user_id=\Auth::user()->id;
        $assign->subject=$request->subject;
        $assign->description=$request->description;
        $assign->save();
        return redirect('/captain');
    }
}
