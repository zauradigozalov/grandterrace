<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Price extends Model
{
    protected $fillable = ['price', 'priceable_id', 'priceable_type', 'description'];

    public function priceable() {

        return $this->MorphTo();

    }
}
