<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Meal extends Model
{
    //
    protected $fillable = ['title', 'price', 'description', 'status', 'img', 'user_id'];

    public function user()
    {
      return $this->belongsTo('App\User');
    }
}
