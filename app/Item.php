<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
	// start select the filleds that required
    protected $fillable = ['title', 'price', 'description', 'status', 'img', 'user_id', 'menu_id'];

    public function user()
    {
      return $this->belongsTo('App\User');
    }
    public function menu()
    {
      return $this->belongsTo('App\Menu');
    }
}
