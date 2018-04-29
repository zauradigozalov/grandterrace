@extends('adminlte::page')

@section('title', 'Create Item')

@section('content_header')
    <h1>Items <small>CREATE ITEM</small></h1>
@stop

@section('content')


    @include('layouts.session')


    @include('layouts.form_errors')


    <div class="row">
        <div class="col-xs-7">

                {!! Form::open(['method'=>'POST', 'action'=>'ItemController@store', 'files'=>true, 'id'=>'formdata']) !!}

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

                            <div class="form-group {{ $errors->first('description') ? 'has-error' : '' }}">
                                {!! Form::label('description', 'Description: ') !!}
                                {!! Form::textarea('description', null, ['class'=>'form-control']) !!}
                            </div>

                            {{--<div class="form-group {{ $errors->first('composition') ? 'has-error' : '' }}">--}}
                                {{--{!! Form::label('composition', 'Composition: ') !!}--}}
                                {{--{!! Form::textarea('composition', null, ['class'=>'form-control']) !!}--}}
                            {{--</div>--}}

                            <div class="form-group {{ $errors->first('warning') ? 'has-error' : '' }}">
                                {!! Form::label('warning', 'Warning words: ') !!}
                                {!! Form::text('warning', null, ['class'=>'form-control']) !!}
                                <span class="help-block">Hot, Spicy, Chilly</span>
                            </div>
                        </div>

                        <div class="tab-pane" id="en">
                            <div class="form-group {{ $errors->first('name_en') ? 'has-error' : '' }}">
                                {!! Form::label('name_en', 'Name: ') !!}
                                {!! Form::text('name_en', null, ['class'=>'form-control']) !!}
                            </div>

                            <div class="form-group {{ $errors->first('description_en') ? 'has-error' : '' }}">
                                {!! Form::label('description_en', 'Description: ') !!}
                                {!! Form::textarea('description_en', null, ['class'=>'form-control']) !!}
                            </div>

                            {{--<div class="form-group {{ $errors->first('composition_en') ? 'has-error' : '' }}">--}}
                                {{--{!! Form::label('composition_en', 'Composition: ') !!}--}}
                                {{--{!! Form::textarea('composition_en', null, ['class'=>'form-control']) !!}--}}
                            {{--</div>--}}

                            <div class="form-group {{ $errors->first('warning_en') ? 'has-error' : '' }}">
                                {!! Form::label('warning_en', 'Warning words: ') !!}
                                {!! Form::text('warning_en', null, ['class'=>'form-control']) !!}
                                <span class="help-block">Hot, Spicy, Chilly</span>
                            </div>
                        </div>

                        <div class="tab-pane" id="ru">
                            <div class="form-group {{ $errors->first('name_ru') ? 'has-error' : '' }}">
                                {!! Form::label('name_ru', 'Name: ') !!}
                                {!! Form::text('name_ru', null, ['class'=>'form-control']) !!}
                            </div>

                            <div class="form-group {{ $errors->first('description_ru') ? 'has-error' : '' }}">
                                {!! Form::label('description_ru', 'Description: ') !!}
                                {!! Form::textarea('description_ru', null, ['class'=>'form-control']) !!}
                            </div>

                            {{--<div class="form-group {{ $errors->first('composition_ru') ? 'has-error' : '' }}">--}}
                                {{--{!! Form::label('composition_ru', 'Composition: ') !!}--}}
                                {{--{!! Form::textarea('composition_ru', null, ['class'=>'form-control']) !!}--}}
                            {{--</div>--}}

                            <div class="form-group {{ $errors->first('warning_ru') ? 'has-error' : '' }}">
                                {!! Form::label('warning_ru', 'Warning words: ') !!}
                                {!! Form::text('warning_ru', null, ['class'=>'form-control']) !!}
                                <span class="help-block">Hot, Spicy, Chilly</span>
                            </div>
                        </div>

                    </div>
                </div>


        </div>

        <div class="col-xs-5">

            <div class="row col-xs-12">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Upload Images</h3>
                    </div>
                    <div class="box-body input-files">

                        <div class="form-group {{ $errors->first('path') ? 'has-error' : '' }}">

                            <input type="file" name="path[]" id="images" multiple="multiple">

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
                        <div class="form-group">
                            {!! Form::label('price', 'Price: ') !!}

                                @for($i=0; $i<3; $i++)

                                    @php

                                    $haserror = ($errors->first('price.0') && ($i==0))? 'has-error' : ''

                                    @endphp

                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="row">

                                            <div class="col-md-6 {{$haserror}}">
                                                <div class="input-group">
                                                    <span class="input-group-addon" title="Price">₼</span>
                                                    {!! Form::number('price[]', null, ['class'=>'form-control', 'step'=>'0.01']) !!}
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="input-group">
                                                    <span class="input-group-addon" title="Description"><i class="fa fa-thumb-tack"></i></span>
                                                    {!! Form::text('price_description[]', null, ['class'=>'form-control', 'maxlength'=>'6']) !!}
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                                @endfor
                        </div>

                        <div class="form-group {{ $errors->first('category_id') ? 'has-error' : '' }}">
                            {!! Form::label('category_id', 'Category: ') !!}
                            {!! Form::select('category_id', array(''=>'-- Choose category --') + $categories, null, ['class'=>'form-control']) !!}
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
                $('.preview-area').append('<div class="col-xs-4"><img src="' + objectUrl + '" class="img img-responsive img-rounded" width="48"/></div>');
                // get rid of the blob
                window.URL.revokeObjectURL(fileList[i]);
            }
        }

    </script>

@stop
