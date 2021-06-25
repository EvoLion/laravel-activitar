<div class="col-lg-4 col-md-6 grid-item">
    @if ($post->post_type == 'instagram')
        <div class="blog-item {{ $post->post_type }}-item">
            <a href="{{ route('posts.show', ['post' => $post->id]) }}" class="{{ $post->post_type }}-text">
                <div class="categories">Gym & Croosfit <i class="fa fa-instagram"></i></div>
                <h5>{{ $post->title }}</h5>
            </a>
        </div>
    @else
        <div class="blog-item {{ $post->post_type }}-item set-bg" data-setbg="{{ asset('img/blog/' . $post->background_image) }}">
            <a href="{{ route('posts.show', ['post' => $post->id]) }}" class="blog-text">
                <div class="categories">Gym & Croosfit</div>
                <h5>>{{ $post->title }}</h5>
            </a>
        </div>
    @endif
</div>