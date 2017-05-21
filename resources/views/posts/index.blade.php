@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                @forelse ($posts as $post)
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="level">
                                <h4 class="flex">
                                    <a href="{{ $post->path() }}">
                                        {{ $post->post_title }}
                                    </a>
                                </h4>

                        <div class="panel-body">
                            <div class="body">{{ $post->post_body }}</div>
                        </div>
                    </div>
                @empty
                    <p>There are no relevant results at this time.</p>
                @endforelse
            </div>
        </div>
    </div>
@endsection
