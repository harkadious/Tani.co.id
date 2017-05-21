<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Auth;
use App\User;
use App\Post;

class PostsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $authors = User::all();

        $posts = Post::orderBy('id', 'desc')->paginate(5);

        return view('posts.index')->withPosts($posts)->withAuthors($authors);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, array(
            'post_title'         => 'required|max:255',
            'slug'               => 'required|alpha_dash|min:5|max:255|unique:posts,slug',
            'post_body'          => 'required'
        ));

        $post = new Post();

        $post->post_title = $request->post_title;
        $post->slug = $request->slug;
        $post->post_body = $request->post_body;
        $post->author = Auth::user()->id;
    //        $post->author = $request->user()->id;
        $message = 'Post published successfully';
        $post->save();

        return redirect('post/' . $post->slug)->withMessage($message);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug)
    {
        $post = Post::where('slug', '=', $slug)->firstOrFail();
        $authors = User::all();

        return view('posts.show')->withPost($post)->withAuthors($authors);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Post::find($id);

        // return the view and pass in the var we previously created
        return view('posts.edit')->withPost($post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $post = Post::find($id);

        if ($request->slug == $post->slug) {
            $this->validate($request, array(
                'post_title' => 'required|max:255',
                'post_body'  => 'required'
            ));
        } else {
            $this->validate($request, array(
                'post_title' => 'required|max:255',
                'slug'  => 'required|alpha_dash|min:5|max:255|unique:posts,slug',
                'post_body'  => 'required'
            ));
        }

        $post->title = $request->post_title;
        $post->slug = $request->slug;
        $post->body = $request->input('body');

        $post->save();

        return redirect()->route('posts.show', $post->slug);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);

        $post->delete();

        return redirect()->route('posts.index');
    }
}
