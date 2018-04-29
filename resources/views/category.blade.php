@extends('layouts.master')


@section('container')




    @if (count($items) > 0)

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

        @foreach($items->chunk(2) as $data)
            <div class="row">
                @foreach($data as $item)

                    @php



                        if ( $locale == "az" ) {
                                $item_name = $item->name;
                                $warnings = (empty($item->warning)) ? false : explode(',',$item->warning);
                            }
                        else if ( $locale == "ru" ){
                                $item_name = $item->name_ru;
                                $warnings = (empty($item->warning_ru)) ? false : explode(',',$item->warning_ru);
                            }
                         else if ( $locale == "en" ) {
                                $item_name = $item->name_en;
                                $warnings = (empty($item->warning_en)) ? false : explode(',',$item->warning_en);
                        }


                    @endphp

                    <div class="col-md-1"></div>

                    <div class="col-md-4" style="background-clip: padding-box; border: 10px solid transparent;">
                        <img class="img img-fluid img-responsive img-thumbnail" src="/images/{{isset($item->images->first()->name) ? ($item->images->first()->name) : ''}}">

                            <div class="row">

                                <div class="col-md-12">

                                    <div class="row">
                                        <div class="col-md-2">
                                        </div>

                                        <div class="col-md-8" style="padding-top:10px;">

                                            @if ($warnings!=false)


                                                @foreach($warnings as $warning)

                                                    <span class="warning label-danger">{{$warning}}</span>

                                                @endforeach

                                            @endif

                                        </div>

                                        <div class="col-md-2"></div>
                                    </div>


                                </div>


                                <div class="col-md-12" style="text-align: center">

                                            <p class="item-title">
                                                {{$item_name}}
                                            </p>




                                    <p class="item-description">
                                        @php

                                            if ( $locale == "az" )
                                                echo $item->description;
                                            else if ( $locale == "ru" )
                                                echo $item->description_ru;
                                             else if ( $locale == "en" )
                                                echo $item->description_en;

                                        @endphp
                                    </p>


                                    <div class="row">


                                        @php

                                            $array_price_description = isset($item->prices->first()->description) ? unserialize($item->prices->first()->description) : '';
                                            $array_price = isset($item->prices->first()->price) ? unserialize($item->prices->first()->price) : '';

                                            if (is_array($array_price)) {

                                                $colmd = 12 / count(array_filter($array_price));



                                                for ($i=0; $i<3; $i++) {


                                                if ($array_price[$i] != null)

                                                echo <<<HTML
                                                <div class="col-md-$colmd">
                                                    <p class="item-price">
                                                        <span class="label">$array_price_description[$i]</span>
                                                        <span class="label label-price">$array_price[$i] <span class="valyuta">M</span></span>
                                                    </p>
                                                </div>
HTML;

                                                }
                                        }

                                        @endphp

                                    </div>


                                </div>

                            </div>



                    </div>
                    <div class="col-md-1"></div>
                @endforeach
            </div>
        @endforeach



    @else


        <div class="row">
            <div class="col-md-12">
                <h2 style="font-weight: 400;">
                    {{__('strings.empty_items')}}
                </h2>
            </div>
        </div>


    @endif


@endsection