@extends('adminlte::page')

@section('title', 'Sort Items')

@section('content_header')
    <h1>Items <small>SORT, EDIT, DELETE MENU ITEMS</small></h1>
    <br>
    <div class="row">
        <div class="col-xs-12">




        </div>
    </div>
@stop

@section('content')


    @include('layouts.session')

    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-8">
            <div class="box">

                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">

                        <tr>
                            <th></th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Price</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        <tbody id="sortable">
                        @if(count($items)>0)

                            @foreach($items as $item)
                                <tr style="cursor:move;" id="{{$item->id}}">
                                    <td><span class="fa fa-sort"></span></td>
                                    <td>{{$item->name}}</td>
                                    <td><span class="label label-danger">{{$item->category->name}}</span></td>
                                    <td>
                                        @foreach(array_filter(unserialize($item->prices()->first()->price)) as $price)
                                            {{$price}} ‎₼ <br>
                                        @endforeach
                                    </td>


                                    <td>{{$item->created_at->diffforHumans()}}</td>
                                    <td>{{$item->updated_at->diffforHumans()}}</td>
                                    <td>
                                        <div class="btn-group">

                                            <div class="col-xs-6">
                                                <a href="{{route('item.edit', $item->id)}}" class="btn btn-sm btn-default"><i class="fa fa-edit"></i> </a>

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
                                                    <i class="fa fa-remove"></i>
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

        <div class="row col-xs-4">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Sort Items</h3>
                </div>
                <div class="box-body">
                    {!! Form::open(['method'=>'POST', 'action'=>'ItemController@reorder']) !!}

                    <input type="hidden" name="items" id="array_sort" >


                    <button type="submit" class="btn btn-sm btn-primary"><i class="fa fa-reorder"></i> Re-Order
                    </button>

                    {!! Form::close() !!}
                </div>
            </div>
        </div>

    </div>
@stop

@section('js')
    <script src="/vendor/adminlte/js/jquery-ui.js"></script>
    <script>
        $( function() {
            $( "#sortable" ).sortable();
            $( "#sortable" ).disableSelection();
        } );

        $(document).ready(function () {
            $('#sortable').sortable({
                helper: fixWidthHelper,
                axis: 'y',
                stop: function (event, ui) {
                    var data = $(this).sortable('toArray');
                    $('#array_sort').val(data);
                    /*$.ajax({
                            data: oData,
                        type: 'POST',
                        url: '/your/url/here'
                    });*/
                }
            });

            setTimeout(function() {
                $('.alert-dismissible').remove();
            },2000);
        });

        function fixWidthHelper(e, ui) {
            ui.children().each(function() {
                $(this).width($(this).width());
            });
            return ui;
        }

    </script>
@stop

@section('css')
    <link rel="stylesheet" href="/vendor/adminlte/css/jquery-ui.css">
    <style>
        #sortable { list-style-type: none; margin: 0; padding: 0; width: 60%; }

    </style>
@stop