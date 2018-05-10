@extends('adminlte::page')

@section('title', 'Items')

@section('content_header')
    <h1>Items <small>MENU ITEMS</small></h1>
    <br>
    <div class="row">
        <div class="col-xs-12">


            <a href="{{route('item.create')}}" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Add</a>


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
                <div class="box-body">
                    <table class="dataTables_wrapper form-inline dt-bootstrap" id="table_id">
                        <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Warnings</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        @if(count($items)>0)

                            @foreach($items as $item)
                                <tr>
                                    <td>{{$item->id}}</td>
                                    <td>{{$item->name}}</td>
                                    <td><a href="{{route('item.sort', $item->category->id)}}"><span class="label label-danger">{{$item->category->name}}</span></a></td>
                                    <td>
                                        @foreach(array_filter(unserialize($item->prices()->first()->price)) as $price)
                                        {{$price}} ‎₼ <br>
                                        @endforeach
                                        </td>
                                    <td>
                                        @php
                                            $warnings=explode(',',$item->warning);
                                           foreach($warnings as $warning)
                                            {
                                                echo '<span class="label label-primary">'.$warning.'</span> ';
                                            }

                                        @endphp


                                    </td>
                                    <td>{{$item->created_at->diffforHumans()}}</td>
                                    <td>{{$item->updated_at->diffforHumans()}}</td>
                                    <td>
                                        <div class="btn-group">

                                            <div class="col-xs-6">
                                                <a href="{{route('item.edit', $item->id)}}" class="btn btn-sm btn-default"><i class="fa fa-edit"></i> Edit</a>

                                            </div>
                                            <div class="col-xs-6">

                                                {!! Form::model($item, ['method'=>'DELETE', 'action'=>['ItemController@destroy', $item->id]]) !!}
                                                <!-- Modal -->
                                                <div class="modal fade" id="modalId{{$item->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">

                                                            <div class="modal-header">
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                <h4 class="modal-title" id="myModalLabel">Delete notification</h4>
                                                            </div>
                                                            <div class="modal-body">

                                                                Are you sure to delete?

                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                {!! Form::button('Delete', array('class'=>'btn btn-sm btn-danger', 'type'=>'submit')) !!}
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- Modal End -->
                                                {!! Form::close() !!}

                                                <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modalId{{$item->id}}">
                                                    <i class="fa fa-remove"></i> Delete
                                                </button>

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

@section('js')

    <script>

        $(document).ready( function () {
            $('#table_id').DataTable({
                'paging'      : true,
                'lengthChange': false,
                'searching'   : true,
                'ordering'    : false,
                'info'        : true,
                'autoWidth'   : false
            });
        } );

        $(document).ready(function () {
            setTimeout(function() {
                $('.alert-dismissible').remove();
            },5000);
        });


    </script>
@stop
