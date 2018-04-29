@extends('adminlte::page')

@section('title', 'Categories')

@section('content_header')
    <h1>Categories <small>CATEGORIES OF ITEMS</small></h1>
    <br>
    <div class="row">
        <div class="col-xs-12">


            <a href="{{route('category.create')}}" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Add</a>

            <a href="{{route('category.sort')}}" class="btn btn-sm btn-primary"><i class="fa fa-reorder"></i> Sort Categories</a>




        </div>
    </div>
@stop

@section('content')


    @include('layouts.session')

    @include('layouts.session_danger')

    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-12">
            <div class="box">

                <!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                    <table class="table table-hover">

                        <tr>
                            <th>Sort items</th>
                            <th>Name</th>
                            <th>Created at</th>
                            <th>Updated at</th>
                            <th>Actions</th>
                        </tr>
                        <tbody>
                        @if(count($categories)>0)

                            @foreach($categories as $category)
                                <tr>

                                    <td width="48px">

                                        <a href="{{route('item.sort', $category->id)}}" title="Sort items related to this category" class="text-light-blue"><i class="fa fa-reorder"></i></a>


                                    </td>
                                    <td>{!! ($category->parent_id>0) ? $category->parents->first()->name . ' <i class="fa fa-long-arrow-right"></i> ' . $category->name : $category->name !!}</td>
                                    <td>{{$category->created_at->diffforHumans()}}</td>
                                    <td>{{$category->updated_at->diffforHumans()}}</td>
                                    <td>
                                        <div class="btn-group">

                                            <div class="col-xs-6">
                                                <a href="{{route('category.edit', $category->id)}}" class="btn btn-sm btn-default"><i class="fa fa-edit"></i> Edit</a>

                                            </div>
                                            <div class="col-xs-6">

                                                {!! Form::model($category, ['method'=>'DELETE', 'action'=>['CategoryController@destroy', $category->id]]) !!}
                                                <!-- Modal -->
                                                <div class="modal fade" id="modalId{{$category->id}}" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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

                                                <button type="button" class="btn btn-sm btn-danger" data-toggle="modal" data-target="#modalId{{$category->id}}">
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


    {{ $categories->links() }}

@stop


@section('js')

    <script>

        $(document).ready(function () {
            setTimeout(function() {
                $('.alert-dismissible').remove();
            },5000);
        });


    </script>
@stop
