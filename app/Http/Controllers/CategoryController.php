<?php

namespace App\Http\Controllers;

use App\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //

        $categories = Category::OrderBy('position', 'asc')->paginate(10);

        return view('admin.category.index', compact('categories'));
    }

    public function sort()
    {
        //

        $categories = Category::OrderBy('position')->get();

        return view('admin.category.sort', compact('categories'));
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

        return view('admin.category.create', compact('categories'));
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



        $request->validate([
            'name' => 'required|max:255',
            'name_en' => 'required|max:255',
            'name_ru' => 'required|max:255',
            'path' => 'required',
            'path.*' => 'image|mimes:jpg,jpeg,png,gif|max:2000' //|dimensions:ratio=1/1
        ]);

        $category = Category::create([
           'name'=>$request->name,
            'name_en'=>$request->name_en,
            'name_ru'=>$request->name_ru,
            'parent_id'=>$request->parent_id
        ]);

        if($request->hasfile('path'))
        {
            foreach($request->file('path') as $file)
            {
                $name = time() . '_' . $file->getClientOriginalName();

                $file->move(public_path().'/images/', $name);

                $category->images()->create(['name'=>$name]);
            }
        }

        Session::flash('notification', 'Created !');

        return redirect(route('category.index'));
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
        //
        $category = Category::find($id);
        $categories = Category::where('id', '<>', $id)->pluck('name','id')->all();

        return view('admin.category.edit', compact('category', 'categories'));
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


        $request->validate([
            'name' => 'required|max:255',
            'name_en' => 'required|max:255',
            'name_ru' => 'required|max:255',
            'path.*' => 'image|mimes:jpg,jpeg,png,gif|max:2000' //|dimensions:ratio=1/1
        ]);



        $category = Category::find($id);

        $category->update([
            'name'=>$request->name,
            'name_en'=>$request->name_en,
            'name_ru'=>$request->name_ru,
            'parent_id'=>$request->parent_id
        ]);

        if($request->hasfile('path'))
        {

            foreach ($category->images as $image) {
                unlink(public_path(). '/images/' . $image->name);
            }

            $category->images()->delete();

            foreach($request->file('path') as $file)
            {
                $name = time() . '_' . $file->getClientOriginalName();

                $file->move(public_path().'/images/', $name);

                $category->images()->create(['name'=>$name]);
            }
        }

        Session::flash('notification', 'Updated !');

        return redirect(route('category.index'));
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
        $category = Category::findorfail($id);

        if ((count($category->items)<1) && (count($category->childs)<1)) {

            foreach ($category->images as $image) {
                unlink(public_path() . '/images/' . $image->name);
            }

            $category->images()->delete();

            $category->delete();

            Session::flash('notification', 'Deleted !');
        }
        else {
            Session::flash('notification_danger', 'There are items or child categories related to this category. You can delete only empty categories !');
        }

        return redirect(route('category.index'));
    }

    public function reorder(Request $request) {

        $i = 1;

        if ($request->categories) {

            $categories = explode(',', $request->categories);

            //return $categories;

            foreach ($categories as $id) {

                Category::find($id)->update(['position' => $i]);

                $i++;

            }

            Session::flash('notification', 'Categories are sorted successful');
        }

        return redirect(route('category.sort'));
    }

}
