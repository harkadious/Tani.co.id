<?php

namespace App\Http\Controllers;

use App\Thread;

class ThreadSubscriptionsController extends Controller
{
    /**
     * Store a new thread subscription.
     *
     * @param Thread $thread
     */
    public function store(Thread $thread)
    {
        $thread->subscribe();
    }

    /**
     * Delete an existing thread subscription.
     *
     * @param Thread $thread
     */
    public function destroy(Thread $thread)
    {
        $thread->unsubscribe();
    }
}
