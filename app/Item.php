<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    //
    protected $fillable = [
        'name',
        'name_en',
        'name_ru',
        'category_id',
        'description',
        'description_en',
        'description_ru',
        'price',
        'warning',
        'warning_en',
        'warning_ru',
        'composition',
        'composition_en',
        'composition_ru',
        'position',

    ];

    public function category() {

        return $this->BelongsTo('App\Category');
    }

    public function images() {

        return $this->MorphMany('App\Photo', 'imageable');

    }

    public function prices() {

        return $this->MorphMany('App\Price', 'priceable');

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


    public function setDescriptionAttribute($value)
    {
        $this->attributes['description'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setDescriptionEnAttribute($value) {
        $this->attributes['description_en'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setDescriptionRuAttribute($value) {
        $this->attributes['description_ru'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setCompositionAttribute($value) {
        $this->attributes['composition'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setCompositionEnAttribute($value) {
        $this->attributes['composition_en'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setCompositionRuAttribute($value)
    {
        $this->attributes['composition_ru'] = trim($this->mb_ucfirst(mb_strtolower($value)));
    }

    public function setWarningAttribute($value) {
        $this->attributes['warning'] = trim(mb_strtoupper($value));
    }

    public function setWarningEnAttribute($value) {
        $this->attributes['warning_en'] = trim(mb_strtoupper($value));
    }

    public function setWarningRuAttribute($value) {
        $this->attributes['warning_ru'] = trim(mb_strtoupper($value));
    }

}
