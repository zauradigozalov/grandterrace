@extends('adminlte::page')

@section('title', 'Items')

@section('content_header')
    <h1>Sync <small>SYNC MENU TO WEB SITE</small></h1>
    <br>

@stop

@section('content')


    @include('layouts.session')

    @include('layouts.form_errors')


    <div class="row">






        <div class="col-xs-12">
            <div class="box">

                <div class="box-body">

                    <div class="row" style="text-align: center;">

                    <button type="button" id="syncbutton" class="btn bg-maroon btn-flat margin" onclick="UploadResult()" >
                        <i class="fa fa-refresh" id="button_spin"></i>
                        Sync menu data to web site
                    </button>

                    <p class="text-green" id="upload_status"></p>

                    </div>

                    <textarea id = "data_az" cols="120" rows="20" style="display:none">

                    @foreach($categories->chunk(2) as $categoryAll)
                    <div class="row az">

                    @foreach($categoryAll as $category)

                            <div class="small-12 large-6 columns">

                                <div class="food-menu-items">
                                    <div class="food-menu-cat-header" data-id="32" data-slug="spirits">
                                        <h2 class="header-color">{{$category->name}}</h2>
                                        <div class="food-menu-subtitle"></div>
                                    </div>

                            @foreach($category->items as $item)

                                @php

                                $array_price_description = isset($item->prices->first()->description) ? unserialize($item->prices->first()->description) : '';
                                $array_price = isset($item->prices->first()->price) ? unserialize($item->prices->first()->price) : '';

                                if (is_array($array_price)) {


                                    for ($i=0; $i<3; $i++) {


                                      if ($array_price[$i] != null) {

                                        if ($array_price_description[$i] != null){

                                            $price_desc = "(" . $array_price_description[$i] . ")";
                                        }

                                        else
                                        {
                                            $price_desc = "";

                                        }

                                        if ($item->description != ''){

                                            $item_desc = $item->description . " &nbsp;";
                                        }

                                        else
                                        {
                                            $item_desc = "";

                                        }


                                        echo <<<HTML
                                        <div class="food-menu-item ">
                                        <div class="food-menu-item-header pseudo-accent-color food-menu-featured">
                                            <div class="food-menu-title header-color ">{$item->name}</div>
                                            <div class="food-menu-price header-color">{$array_price[$i]} AZN</div>
                                        </div>
                                        <div class="food-menu-desc text-color">{$item_desc} {$price_desc}</div>
                                        </div>
HTML;

                                      }
                                    }
                            }

                            @endphp

                            @endforeach

                                </div>

                            </div>

                    @endforeach
                        </div>
                    @endforeach

                    </textarea>



                    <textarea id = "data_en" cols="120" rows="20" style="display:none">

                    @foreach($categories->chunk(2) as $categoryAllEN)
                            <div class="row en">

                    @foreach($categoryAllEN as $category)

                                    <div class="small-12 large-6 columns">

                                <div class="food-menu-items">
                                    <div class="food-menu-cat-header" data-id="32" data-slug="spirits">
                                        <h2 class="header-color">{{$category->name_en}}</h2>
                                        <div class="food-menu-subtitle"></div>
                                    </div>

                                    @foreach($category->items as $item)

                                        @php

                                            $array_price_description = isset($item->prices->first()->description) ? unserialize($item->prices->first()->description) : '';
                                            $array_price_en = isset($item->prices->first()->price) ? unserialize($item->prices->first()->price) : '';

                                            if (is_array($array_price)) {


                                                for ($i=0; $i<3; $i++) {


                                                  if ($array_price_en[$i] != null) {

                                                    if ($array_price_description[$i] != null){

                                                        $price_desc = "(" . $array_price_description[$i] . ")";
                                                    }

                                                    else
                                                    {
                                                        $price_desc = "";

                                                    }

                                                    if ($item->description != ''){

                                                        $item_desc = $item->description . " &nbsp;";
                                                    }

                                                    else
                                                    {
                                                        $item_desc = "";

                                                    }


                                                    echo <<<HTML
                                                    <div class="food-menu-item ">
                                                    <div class="food-menu-item-header pseudo-accent-color food-menu-featured">
                                                        <div class="food-menu-title header-color ">{$item->name_en}</div>
                                                        <div class="food-menu-price header-color">{$array_price_en[$i]} AZN</div>
                                                    </div>
                                                    <div class="food-menu-desc text-color">{$item_desc} {$price_desc}</div>
                                                    </div>
HTML;

                                                  }
                                                }
                                        }

                                        @endphp

                                    @endforeach

                                </div>

                            </div>

                                @endforeach
                        </div>
                        @endforeach

                    </textarea>
                </div>


            </div>

        </div>

    </div>

@stop

@section('js')

    <script>

        function UploadResult()
        {
            $.ajax({
                type: "POST",
                url: "http://grandterrace.test/wp-syncmenu.php",
                data: {"data_az":$("#data_az").val(), "data_en":$("#data_en").val()},
                crossDomain:true,
                beforeSend: function() {
                    $("#syncbutton").attr("disabled", "disabled");
                    $("#button_spin").addClass("fa-spin");
                    $("#upload_status").empty();
                    $("#upload_status").removeAttr('class');
                },
                error: function(xhr) { // if error occured
                    $("#upload_status").addClass("lead text-red");
                    $("#upload_status").html("There was an error during sync");
                },
                complete: function() {
                    $("#syncbutton").removeAttr('disabled');
                    $("#button_spin").removeClass("fa-spin");
                },
                success: function(msg){

                    $.ajax({
                        type: "GET",
                        url: "/admin/syncmenu/setdate"
                    });

                    $("#upload_status").addClass("lead text-muted");
                    $("#upload_status").html(msg);
                }
            });


        }

    </script>

@stop
