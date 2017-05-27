<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Notifications\ThreadWasUpdated;

class ThreadSubscription extends Model
{
    /**
     * The attributes that aren't mass assignable.
     *
     * @var array
     */
    protected $guarded = [];

    //User subscribed to thread
    public function user()
    {
        return $this->belongsTo(User::class);
    }

    //The thread
    public function thread()
    {
        return $this->belongsTo(Thread::class);
    }

    //Notifying
    public function notify($reply)
    {
        $this->user->notify(
        	new ThreadWasUpdated($this->thread, $reply)
        );
    }
}
