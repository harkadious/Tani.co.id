@extends('layouts.app')

@section('content')

	<div class="row">
		<div class="col-md-8 col-md-offset-2">
			<h1>{{ $post->post_title }}</h1>
			<p>Posted by @foreach($authors as $author)
							@if($post->author == $author->id)
							{{ $author->name }}
							@endif
							@endforeach
			</p>
			<hr>
			<p>{!! $post->post_body !!}</p>
			<hr>
		</div>
	</div>

@endsection
