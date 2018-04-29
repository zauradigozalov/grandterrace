@extends('layouts.master')


@section('container')


        @if (count($categories) > 0)

            @php
                $locale = Illuminate\Support\Facades\App::getLocale();
            @endphp

            <div class="row">
                <div class="col-md-12">
                    <h1 style="font-weight: 400;">

                        @php

                            if ( $locale == "az" )
                                echo $category->name;
                            else if ( $locale == "ru" )
                                echo $category->name_ru;
                             else if ( $locale == "en" )
                                echo $category->name_en;

                        @endphp

                    </h1>
                </div>
            </div>

            @foreach($categories->chunk(3) as $items)
                <div class="row">
                    @foreach($items as $category)
                        <div class="col-md-4" style="background-clip: padding-box; border: 10px solid transparent;">
                            <a href="/{{$locale}}/cat/{{$category->id}}">
                                <p class="lead">
                                    @php

                                        if ( $locale == "az" )
                                            echo $category->name;
                                        else if ( $locale == "ru" )
                                            echo $category->name_ru;
                                         else if ( $locale == "en" )
                                            echo $category->name_en;

                                    @endphp
                                </p>
                                <img class="img img-fluid img-responsive img-thumbnail" src="/images/{{isset($category->images->first()->name) ? $category->images->first()->name : ''}}">
                            </a>
                        </div>
                    @endforeach
                </div>
            @endforeach


        @endif


@endsection