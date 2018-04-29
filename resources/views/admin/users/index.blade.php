@extends('adminlte::page')

@section('title', 'Users')

@section('content_header')
    <h1>Users <small>ALL USERS</small></h1>
    <br>
    <div class="row">
        <div class="col-xs-12">

            <a href="{{route('users.create')}}" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Add</a>

        </div>
    </div>
@stop

@section('content')


    @include('layouts.session')


    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-12">
            <div class="box">

                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">
                        <tbody>
                        <tr>
                            <th>ID</th>
                            <th>User</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>

                        @if(count($users)>0)

                            @foreach($users as $user)
                                <tr>
                                    <td>{{$user->id}}</td>
                                    <td>{{$user->name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>
                                        @php
                                            $user->isAdmin() ? $class = 'label-danger' : $class = 'label-info';
                                        @endphp

                                        <span class="label {{$class}}">
                                        {{$user->role ? $user->role->name : 'no-role'}}
                                        </span>
                                    </td>
                                    <td>{{$user->created_at->diffforHumans()}}</td>
                                    <td>{{$user->updated_at->diffforHumans()}}</td>
                                    <td>
                                        <div class="btn-group">



                                            <div class="col-xs-6">
                                                <a href="{{route('users.edit', $user->id)}}" class="btn btn-sm btn-default"><i class="fa fa-edit"></i> Edit</a>

                                            </div>
                                            <div class="col-xs-6">

                                                @php
                                                    if ($ownUser != $user) {
                                                @endphp

                                                {!! Form::model($user, ['method'=>'DELETE', 'action'=>['UsersController@destroy', $user->id]]) !!}

                                                {!! Form::button('<i class="fa fa-remove"></i> Delete', array('class'=>'btn btn-sm btn-danger', 'type'=>'submit')) !!}

                                                {!! Form::close() !!}

                                                @php
                                                    }
                                                @endphp

                                            </div>

                                        </div>

                                    </td>
                                </tr>
                            @endforeach
                        @endif

                        </tbody></table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
    </div>
@stop
