<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;

class Category extends Model
{
    //
    protected $fillable = ['name', 'name_en', 'name_ru', 'position', 'parent_id', 'status'];

    public function images() {

        return $this->MorphMany('App\Photo', 'imageable');

    }

    public function childs() {
        return $this->hasMany('App\Category','parent_id','id') ;
    }

    public function parents() {
        return $this->hasMany('App\Category','id','parent_id') ;
    }

    public function items() {
        return $this->hasMany('App\Item','category_id','id') ;
    }

    private function mb_ucfirst($string) {
        $string = mb_strtoupper(mb_substr($string, 0, 1)) . mb_substr($string, 1);
        return $string;
    }


    public function setNameAttribute($value) {
        $this->attributes['name'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setNameEnAttribute($value) {
        $this->attributes['name_en'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setNameRuAttribute($value) {
        $this->attributes['name_ru'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function status() {
    	if ($this->status > 0) {
    		return "<span class=\"label label-info\">ACTIVE</span>";
	    }
	    else {
		    return "<span class=\"label label-danger\">DISABLED</span>";
	    }
    }

}
