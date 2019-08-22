<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Categori;

class Artikel extends Model
{
    protected $table="table_artikels";
    protected $guarded=['id'];

    public function Kategori()
    {
        return $this->belongsTo(\App\categori::class,'categoris_id','id');
    }

    public function getRouteKeyName()
    {
        return 'judul';
    }
}
