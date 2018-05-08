<?php

namespace App\Http\Controllers;

use App\Category;
use App\Item;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class ItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $items = Item::OrderBy('position')->get();

        return view('admin.item.index', compact('items'));
    }

    public function sort($id)
    {
        //
        $items = Item::where('category_id', $id)->OrderBy('position')->get();

        return view('admin.item.sort', compact('items'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $categories = Category::pluck('name','id')->all();
        //
        return view('admin.item.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //




        $array_price_description = serialize($request->price_description);
        $array_price = serialize($request->price);




        $request->validate([
            'name' => 'required|max:255','name_en' => 'required|max:255','name_ru' => 'required|max:255',
            'category_id'=>'required',
            'path' => 'required',
            'path.*' => 'image|mimes:jpg,jpeg,png,gif|max:2000', //|dimensions:ratio=1/1
            'price.0' => 'required|numeric',
        ]);




        $item = Item::create([
            'name'=>$request->name, 'name_en'=>$request->name_en, 'name_ru'=>$request->name_ru,
            'description'=>$request->description, 'description_en'=>$request->description_en, 'description_ru'=>$request->description_ru,
            'category_id'=>$request->category_id,
            'warning'=>$request->warning, 'warning_en'=>$request->warning_en, 'warning_ru'=>$request->warning_ru,
            'composition'=>$request->composition, 'composition_en'=>$request->composition_en, 'composition_ru'=>$request->composition_ru
        ]);

        $item->prices()->create(['price'=>$array_price, 'description'=>$array_price_description]);

        if($request->hasfile('path'))
        {
            foreach($request->file('path') as $file)
            {
                $name = time() . '_' . $file->getClientOriginalName();

                $file->move(public_path().'/images/', $name);

                $item->images()->create(['name'=>$name]);
            }
        }

        Session::flash('notification', 'Created !');

        return redirect(route('item.index'));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $item = Item::findorfail($id);
        $categories = Category::pluck('name','id')->all();

        return view('admin.item.edit', compact('item','categories'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //


        $array_price_description = serialize($request->price_description);
        $array_price = serialize($request->price);

        $request->validate([
            'name' => 'required|max:255','name_en' => 'required|max:255','name_ru' => 'required|max:255',
            'category_id'=>'required',
            'price.0' => 'required|numeric',
            'path.*' => 'image|mimes:jpg,jpeg,png,gif|max:2000' //|dimensions:ratio=1/1
        ]);

        $item = Item::findorfail($id);

        $item->update([
            'name'=>$request->name, 'name_en'=>$request->name_en, 'name_ru'=>$request->name_ru,
            'description'=>$request->description, 'description_en'=>$request->description_en, 'description_ru'=>$request->description_ru,
            'category_id'=>$request->category_id,
            'warning'=>$request->warning, 'warning_en'=>$request->warning_en, 'warning_ru'=>$request->warning_ru,
            'composition'=>$request->composition, 'composition_en'=>$request->composition_en, 'composition_ru'=>$request->composition_ru

        ]);

        $item->prices()->update(['price'=>$array_price, 'description'=>$array_price_description]);

        if($request->hasfile('path'))
        {
            foreach($request->file('path') as $file)
            {
                $name = time() . '_' . $file->getClientOriginalName();

                $file->move(public_path().'/images/', $name);

                $item->images()->create(['name'=>$name]);
            }
        }

        Session::flash('notification', 'Updated !');

        return redirect()->back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $item = Item::find($id);



        foreach ($item->images as $image) {

        $image_path = public_path(). '/images/' . $image->name;

        if (file_exists($image_path)) {
            unlink($image_path);
        }
    }

        $item->images()->delete();
        $item->prices()->delete();

        $item->delete();

        Session::flash('notification', 'Deleted !');

        return redirect(route('item.index'));
    }

    public function reorder(Request $request) {

        $i = 1;

        if (($request->items) && (!empty($request->items))) {



            $items = explode(',', $request->items);

            //return $categories;

            foreach ($items as $id) {

                Item::find($id)->update(['position' => $i]);

                $i++;

            }

            Session::flash('notification', 'Categories are sorted successful');
        }

        return redirect()->back();
    }
}
