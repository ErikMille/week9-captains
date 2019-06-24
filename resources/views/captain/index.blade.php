@extends('common/layout')

@section('content')
<h1>The captain roster</h1>
    @foreach($captains as $captain)
        <h2><a href="{{action('CaptainController@show',$captain->slug)}}">{{$captain->name}}</a></h2>
    @endforeach

@endsection
