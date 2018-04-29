@extends('adminlte::page')

@section('title', 'Profile Password')

@section('content_header')
    <h1>Profile <small>CHANGE YOUR PASSWORD</small></h1>
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
            <h3 class="box-title">Change password</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->

        {!! Form::model($user, ['method' => 'PUT', 'action'=>['ProfilePasswordController@update', $user->id], 'class'=>'form-horizontal']) !!}


        <div class="box-body">

            <div class="form-group">
                {!! Form::label('password', 'New Password: ', ['class'=>'col-sm-2 control-label']) !!}

                <div class="col-sm-10">
                    {!! Form::password('password', ['class'=>'form-control']) !!}
                </div>
            </div>



            <div class="form-group">
                {!! Form::label('password_confirmation', 'Confirm Password: ', ['class'=>'col-sm-2 control-label']) !!}

                <div class="col-sm-10">
                    {!! Form::password('password_confirmation', ['class'=>'form-control']) !!}
                </div>
            </div>

            <div class="box-footer">
                {!! Form::submit('Change Password', ['class'=>'btn btn-primary pull-left']) !!}
            </div>

        </div>
        {!! Form::close() !!}

    </div>
@stop
