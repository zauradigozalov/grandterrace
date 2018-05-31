<?php

namespace App\Http\Controllers;

use App\Category;
use App\Item;
use Illuminate\Http\Request;

class SyncMenuController extends Controller
{
	public function index()
	{



		$categories = Category::where('parent_id', '>', 0)->orderBy('position', 'desc')->orderBy('parent_id')->get();

		$items = Item::OrderBy('position')->get();


		return view('admin.syncmenu.index', compact('categories','items'));
	}


	public function showItem($category_id) {


		$items = Item::Where('category_id', $category_id)->OrderBy('position');


		return view('admin.syncmenu.index', compact('items'));

	}
}
