@extends('adminlte::page')

@section('title', 'Edit Category')

@section('content_header')
    <h1>Categories <small>EDIT CATEGORY</small></h1>
@stop

@section('content')

    @include('layouts.session')


    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-8">
            <div class="box">
                {!! Form::model($category, ['method'=>'PUT', 'action'=>['CategoryController@update', $category->id], 'files'=>true]) !!}
                <div class="nav-tabs-custom">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#az" data-toggle="tab" aria-expanded="true"><img src="/images/admin/az.png" align="left"> &nbsp; AZ</a></li>
                        <li class=""><a href="#en" data-toggle="tab" aria-expanded="false"><img src="/images/admin/en.png" align="left"> &nbsp;EN</a></li>
                        <li class=""><a href="#ru" data-toggle="tab" aria-expanded="false"><img src="/images/admin/ru.png" align="left"> &nbsp;RU</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="az">
                            <div class="form-group {{ $errors->first('name') ? 'has-error' : '' }}">
                                {!! Form::label('name', 'Name: ') !!}
                                {!! Form::text('name', null, ['class'=>'form-control']) !!}
                            </div>
                        </div>

                        <div class="tab-pane" id="en">
                            <div class="form-group {{ $errors->first('name_en') ? 'has-error' : '' }}">
                                {!! Form::label('name_en', 'Name: ') !!}
                                {!! Form::text('name_en', null, ['class'=>'form-control']) !!}
                            </div>
                        </div>

                        <div class="tab-pane" id="ru">
                            <div class="form-group {{ $errors->first('name_ru') ? 'has-error' : '' }}">
                                {!! Form::label('name_ru', 'Name: ') !!}
                                {!! Form::text('name_ru', null, ['class'=>'form-control']) !!}
                            </div>
                        </div>

                    </div>
                    <!-- /.tab-content -->
                </div>
            </div>
        </div>

        <div class="col-xs-4">

            <div class="row col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Images</h3>
                    </div>
                    <div class="box-body">

                        @foreach($category->images as $image)

                            <div class="col-xs-3 containerdiv" id="img_{{$image->id}}" onclick="delete_image({{$image->id}})">

                                <img src="/images/{{$image->name}}" alt="" class="img img-responsive img-rounded border border-primary" width="64" height="64">
                                <img class="cornerimage" border="0" src="/images/admin/remove.png" alt="">
                            </div>




                        @endforeach
                    </div>
                </div>
            </div>


            <div class="row col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Upload Images</h3>
                    </div>
                    <div class="box-body input-files">

                        <div class="form-group">
                            <input type="file" name="path[]" id="images">
                        </div>

                        <div class="form-group preview-area"></div>

                    </div>
                </div>
            </div>

            <div class="row col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Property</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group {{ $errors->first('parent_id') ? 'has-error' : '' }}">
                            {!! Form::label('parent_id', 'Parent Category: ') !!}
                            {!! Form::select('parent_id', array('0'=>'-- This is main category --') + $categories, null, ['class'=>'form-control']) !!}
                        </div>

                        <div class="form-group {{ $errors->first('status') ? 'has-error' : '' }}">
                            {!! Form::label('status', 'Status: ') !!}
                            {!! Form::select('status', array('0'=>'Disabled', '1'=>'Active'), null, ['class'=>'form-control']) !!}
                        </div>
                    </div>
                </div>
            </div>

            <div class="row col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Action</h3>
                    </div>
                    <div class="box-body">
                        {!! Form::submit('Update', ['class'=>'btn btn-primary']) !!}
                    </div>
                </div>
            </div>


        </div>
        {!! Form::close() !!}
    </div>
@stop

@section('js')
    <script>

        function delete_image($id)
        {
            var status = confirm("Are you sure you want to delete ?");

            if (status === true) {

                $.ajax({
                    type: "post",
                    data: {_token : "{{ csrf_token() }}"},
                    url: '/admin/photo/delete/' + $id,

                    success: function (data) {
                        console.log("Photo with id " + data + " has been deleted");
                        $("#img_" + $id).remove();
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });

            }

        }

        var inputLocalFont = document.getElementById("images");
        inputLocalFont.addEventListener("change",previewImages,false); //bind the function to the input

        function previewImages(){


            $(".preview-area img").remove();

            var fileList = this.files;

            var anyWindow = window.URL || window.webkitURL;

            for(var i = 0; i < fileList.length; i++){
                //get a blob to play with
                var objectUrl = anyWindow.createObjectURL(fileList[i]);
                // for the next line to work, you need something class="preview-area" in your html
                $('.preview-area').append('<div class="col-xs-4"><img src="' + objectUrl + '" class="img img-responsive img-rounded" width="48"/></div>');
                // get rid of the blob
                window.URL.revokeObjectURL(fileList[i]);
            }


        }

    </script>
@stop

@section('css')
    <style>
        .containerdiv { float: left; position: relative; z-index:10; }
        .cornerimage { position: absolute; top: 0; right: 15px; }
    </style>
@stop