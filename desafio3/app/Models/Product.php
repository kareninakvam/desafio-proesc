<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'name',
        'slug',
        'description',
        'price',
        'category_id',
    ];
    protected $table = 'products';

    //Método adicionado para definir a relação entre as classes.
    public function category()
    {
    return $this->belongsTo(Category::class);
    }

}


