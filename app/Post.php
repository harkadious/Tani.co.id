<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $with = ['author'];

    public function author()
    {
        return $this->belongsTo(User::class, 'author');
    }

    public function path()
    {
        return "/post/{$this->slug}";
    }

}
