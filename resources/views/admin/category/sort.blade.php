@extends('adminlte::page')

@section('title', 'Sort Categories')

@section('content_header')
    <h1>Categories <small>SORT CATEGORIES</small></h1>
    <br>

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
                            <th>Created at</th>
                            <th>Updated at</th>

                        </tr>
                        <tbody id="sortable">
                        @if(count($categories)>0)

                            @foreach($categories as $category)
                                <tr style="cursor:move;" id="{{$category->id}}">
                                    <td><span class="fa fa-sort"></span></td>
                                    <td>{{$category->name}}</td>
                                    <td>{{$category->created_at->diffforHumans()}}</td>
                                    <td>{{$category->updated_at->diffforHumans()}}</td>

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
                    {!! Form::open(['method'=>'POST', 'action'=>'CategoryController@reorder']) !!}

                    <input type="hidden" name="categories" id="array_sort" >


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
            },5000);
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