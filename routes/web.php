<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use App\Photo;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;




Auth::routes();

Route::get('/logout', function(){

    Auth::logout();

    return redirect('/');

});

Route::group(['middleware' => ['auth','admin']], function () {

    Route::get('/admin', function(){

        $items = \App\Item::all();
        $categories = \App\Category::all();
        $users = \App\User::all();

        return view('admin.index', compact('items','categories', 'users'));

    });

    Route::resource('/admin/profile', 'ProfileController');

    Route::resource('/admin/password', 'ProfilePasswordController');

    Route::resource('/admin/users', 'UsersController');

    Route::post('/admin/photo/delete/{id}', function($id){


        $photo = Photo::findOrFail($id);

        unlink(public_path(). '/images/' . $photo->name);

        $photo->delete();

        return $id;

    });

    Route::post('/admin/category/reorder','CategoryController@reorder')->name('category.reorder');
    Route::get('/admin/category/sort','CategoryController@sort')->name('category.sort');
    Route::resource('/admin/category', 'CategoryController');

    Route::post('/admin/item/reorder','ItemController@reorder')->name('item.reorder');
    Route::get('/admin/item/sort/{id}','ItemController@sort')->name('item.sort');
    Route::resource('/admin/item', 'ItemController');


	Route::get('/admin/syncmenu','SyncMenuController@index')->name('syncmenu.index');

	Route::get('/admin/syncmenu/setdate', function () {

		\App\SyncMenu::truncate();

		\App\SyncMenu::create();


	});


    /*
    Route::get('/admin/migrate/prices', function() {

        $collections= \App\Item::all();

        foreach ($collections as $collection) {



            $item = \App\Item::FindOrFail($collection->id);

            $array_price = array($item->price, null, null);
            $array_description = array(null, null, null);

            $item->prices()->create(['price'=>serialize($array_price), 'description'=>serialize($array_description)]);
        }


    });
    */

});

Route::get('/', function () {

    $categories = \App\Category::whereParentId(0)->where('status', '1')->orderBy('position', 'asc')->get();

    return view('welcome', compact('categories'));


});

Route::get('/{locale}', function ($locale) {

    App::setLocale($locale);

    $categories = \App\Category::whereParentId(0)->where('status', '1')->orderBy('position', 'asc')->get();

    return view('welcome', compact('categories'));

});




Route::get('/{locale}/cat/{id}', function ($locale, $id) {

    App::setLocale($locale);


    $category = \App\Category::findorfail($id);


	if ($category->status > 0) {

		if ( count( $category->childs ) > 0 ) {

			$categories = \App\Category::findorfail( $id )->childs()->where('status','1')->orderBy( 'position', 'asc' )->get();


			return view( 'subcategory', compact( 'categories', 'category' ) );

		} else {


			if ($category->status>0) {

				$items = \App\Item::where( 'category_id', '=', $id )->orderBy( 'position', 'asc' )->get();


				return view( 'category', compact( 'items', 'category' ) );
			}
			else {
				$category = [];
				$items = [];
				return view( 'category', compact( 'items', 'category' ) );

			}

		}
	}
	else {

		$categories = [];
		$items = [];
		return view( 'category', compact('items', 'categories'));
	}

});





