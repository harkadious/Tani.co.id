@extends('layouts.app')

@section('content')
    <div class="container">


    @forelse ($posts as $post)
    <div class="row">
        <div class="col-md-8 col-md-offset-2" style="background-color: white;">
            <h2>{{ $post->post_title }}</h2>
            <h5>Published: {{ date('M j, Y', strtotime($post->created_at)) }}</h5>

            <p>{{ substr(strip_tags($post->post_body), 0, 250) }}{{ strlen(strip_tags($post->post_body)) > 250 ? '...' : "" }}</p>

            <a href="{{ url($post->path()) }}" class="btn btn-primary">Read More</a>
            <hr>
        </div>
    </div>
                @empty
                    <p>There are no relevant results at this time.</p>
                @endforelse
            </div>
        </div>
    </div>
@endsection
