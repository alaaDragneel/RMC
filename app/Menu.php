<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    // start select the filleds that required
    protected $fillable = ['title', 'type', 'description', 'status', 'img', 'user_id'];

    public function user()
    {
      return $this->belongsTo('App\User');
    }

    public function items()
    {
    	return $this->hasMany("App\Item");
    }
}
