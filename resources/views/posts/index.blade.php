@extends('layout')

@section('title')
    <title>Activitar | Template</title>
@endsection

@section('style')
    
@endsection

@section('content')
    <x-header class="header-normal" />

    <!-- Breadcrumb Section Begin -->
    <x-breadcrumb title="Latest Blog" page="Blog" />
    <!-- Breadcrumb End -->

    <!-- Blog Section Begin -->
        <section class="blog-section blog-page spad">
        <div class="container">
            <div class="row blog-gird">
                <div class="grid-sizer"></div>

                @foreach ($posts as $post)
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
                @endforeach
            </div>
            <div class="blog-option">
                @php
                    $link_limit = 5; // maximum number of links (a little bit inaccurate, but will be ok for now)
                @endphp

                @if ($posts->lastPage() > 1)
                    <div class="blog-pagination">
                        <a href="{{ $posts->url($posts->currentPage()-1) }}" style="{{ ($posts->currentPage() == 1) ? ' display:none' : '' }}"><i class="fa fa-long-arrow-left"></i></a>
                        <a href="{{ $posts->url(1) }}" style="{{ ($posts->currentPage() == 1 || $posts->currentPage() == 2) ? ' display:none' : '' }}">First</a>
                        
                        @for ($i = 1; $i <= $posts->lastPage(); $i++)
                            @php
                                $half_total_links = floor($link_limit / 2);
                                $from = $posts->currentPage() - $half_total_links;
                                $to = $posts->currentPage() + $half_total_links;
                                if ($posts->currentPage() < $half_total_links) {
                                    $to += $half_total_links - $posts->currentPage();
                                }
                                if ($posts->lastPage() - $posts->currentPage() < $half_total_links) {
                                    $from -= $half_total_links - ($posts->lastPage() - $posts->currentPage()) - 1;
                                }
                            @endphp
                            
                            @if ($from < $i && $i < $to)
                                <a href="{{ $posts->url($i) }}" class="{{ ($posts->currentPage() == $i) ? ' active' : '' }}">{{ $i }}</a>
                            @endif                   
                        @endfor
                        of
                        <a href="{{ $posts->url($posts->lastPage()) }}">{{ $posts->lastPage() }}</a>
                        <a href="{{ $posts->url($posts->currentPage()+1) }}" style="{{ ($posts->currentPage() == $posts->lastPage()) ? ' display:none' : '' }}"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
                @endif

                <div class="blog-option-right">
                    <div class="blog-result">Showing {{ $posts->firstItem() }}–{{ $posts->lastItem() }} of {{ $posts->total() }} results</div>
                    <div class="show-result">
                        <p>Show:</p>
                        <select class="show-result-select">
                            <option value="">09</option>
                            <option value="">19</option>
                            <option value="">29</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->

    <!-- Cta Section Begin -->
    @include('includes._cta')
    <!-- Cta Section End -->
@endsection

@section('javascript')
    
@endsection