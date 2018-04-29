@extends('adminlte::page')

@section('title', 'Edit User')

@section('content_header')
    <h1>Users <small>EDIT USER</small></h1>
@stop

@section('content')

    @include('layouts.session')


    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                {!! Form::model($user, ['method'=>'PUT', 'action'=>['UsersController@update', $user->id]]) !!}
                <div class="box-body">


                    <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
                        {!! Form::label('name', 'Name: ') !!}
                        {!! Form::text('name', null, ['class'=>'form-control']) !!}
                    </div>

                    <div class="form-group {{ $errors->first('email') ? 'has-error' : '' }}">
                        {!! Form::label('email', 'Email: ') !!}
                        {!! Form::text('email', null, ['class'=>'form-control']) !!}
                    </div>

                    <div class="form-group {{ $errors->first('role_id') ? 'has-error' : '' }}">
                        {!! Form::label('role_id', 'Role: ') !!}
                        {!! Form::select('role_id', $roles, null, ['class'=>'form-control select2']) !!}
                    </div>

                    <div class="form-group {{ $errors->first('password') ? 'has-error' : '' }}">
                        <label class="control-label" for="inputWarning"><i class="fa fa-lock"></i> Reset Password</label>
                        {!! Form::password('password', ['class'=>'form-control']) !!}
                        <span class="help-block">Leave empty if you don't want to reset password</span>
                    </div>


                    <div class="box-footer">
                        {!! Form::submit('Update User', ['class'=>'btn btn-primary']) !!}
                    </div>
                </div>
                {!! Form::close() !!}
            </div>
        </div>
    </div>
@stop
