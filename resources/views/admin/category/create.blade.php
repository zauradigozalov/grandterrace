@extends('adminlte::page')

@section('title', 'Create Category')

@section('content_header')
    <h1>Categories <small>CREATE CATEGORY</small></h1>
@stop

@section('content')


    @include('layouts.session')


    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-8">

                {!! Form::open(['method'=>'POST', 'action'=>'CategoryController@store', 'files'=>true]) !!}


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



        <div class="col-xs-4">

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
                        <h3 class="box-title">Parent Category</h3>
                    </div>
                    <div class="box-body">
                        <div class="form-group {{ $errors->first('parent_id') ? 'has-error' : '' }}">
                            {!! Form::label('parent_id', 'Parent Category: ') !!}
                            {!! Form::select('parent_id', array('0'=>'-- This is main category --') + $categories, null, ['class'=>'form-control']) !!}
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
                        {!! Form::submit('Create', ['class'=>'btn btn-primary']) !!}
                    </div>
                </div>
            </div>

        </div>
    </div>
@stop

@section('js')

    <script>

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
                $('.preview-area').append('<div class="col-xs-12"><img src="' + objectUrl + '" class="img img-responsive img-rounded" width="128"/></div>');
                // get rid of the blob
                window.URL.revokeObjectURL(fileList[i]);
            }
        }

    </script>

@stop
