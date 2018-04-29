@extends('adminlte::page')

@section('title', 'Create User')

@section('content_header')
    <h1>Users <small>CREANE NEW USER</small></h1>
@stop

@section('content')


    @include('layouts.session')


    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-12">
            <div class="box">
            {!! Form::open(['method'=>'POST', 'action'=>'UsersController@store']) !!}
            <div class="box-body">


                <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
                    {!! Form::label('name', 'Name: ') !!}
                    {!! Form::text('name', null, ['class'=>'form-control']) !!}
                </div>

                <div class="form-group {{ $errors->first('password') ? 'has-error' : '' }}">
                    {!! Form::label('password', 'Password: ') !!}
                    {!! Form::password('password', ['class'=>'form-control']) !!}
                </div>

                <div class="form-group {{ $errors->first('email') ? 'has-error' : '' }}">
                    {!! Form::label('email', 'Email: ') !!}
                    {!! Form::text('email', null, ['class'=>'form-control']) !!}
                </div>

                <div class="form-group {{ $errors->first('role_id') ? 'has-error' : '' }}">
                    {!! Form::label('role_id', 'Role: ') !!}
                    {!! Form::select('role_id', $roles, null, ['class'=>'form-control select2']) !!}
                </div>

                <div class="box-footer">
                    {!! Form::submit('Create User', ['class'=>'btn btn-primary']) !!}
                </div>
            </div>
            {!! Form::close() !!}
        </div>
        </div>
    </div>
@stop
