@extends('adminlte::page')

@section('title', 'Profile')

@section('content_header')
    <h1>Profile <small>Welcome to your profile</small></h1>
@stop

@section('content')


    @if(Session::has('updated_user'))

        <div class="alert alert-success alert-dismissible">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <h4><i class="icon fa fa-check"></i> Alert!</h4>
            {{session('updated_user')}}
        </div>

    @endif


    @include('layouts.form_errors')



    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Change Profile</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->

        {!! Form::model($user, ['method'=>'PUT', 'action'=>['ProfileController@update', $user->id]]) !!}
        <div class="box-body">


            <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
                {!! Form::label('name', 'Name: ') !!}
                {!! Form::text('name', null, ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('email', 'Email: ') !!}
                {!! Form::text('email', null, ['class'=>'form-control']) !!}
            </div>

            <div class="form-group">
                {!! Form::label('role_id', 'Role: ') !!}
                {!! Form::select('role_id', $roles, null, ['class'=>'form-control select2']) !!}
            </div>

            <div class="box-footer">
            {!! Form::submit('Update', ['class'=>'btn btn-primary']) !!}
            </div>
        </div>
        {!! Form::close() !!}

    </div>
@stop
