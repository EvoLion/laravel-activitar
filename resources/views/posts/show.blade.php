@extends('layout')
    
@section('title')
    <title>Activitar | Template</title>
@endsection

@section('style')
    
@endsection

@section('content')
    <x-header class="header-normal" />

    <!-- Breadcrumb Section Begin -->
    <section class="blog-single-hero set-bg" data-setbg="/img/blog-single-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-xl-7 col-lg-7 m-auto text-center">
                    <div class="bs-hero-text">
                        <h2>{{ $post->title }}</h2>
                        <ul>
                            <li>By {{ $post->user->name }}</li>
                            <li>{{ $post->created_at->isoFormat('MMMM D, YYYY') }}</li>
                            
                            @if($post->comments_count)
                                <li>{{ $post->comments_count }} Comments</li>
                            @else
                                <li>0 Comments</li>
                            @endif
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb End -->

    <!-- Blog Single Section Begin -->
    <section class="blog-single-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="blog-single-text">
                        <div class="blog-text">
                            <p>{{ $post->content }}</p>
                        </div>
                        {{-- <div class="blog-text">
                            <p>I know how terrible it can be for you at nights and even when you wake up. The burning
                                back pain you experience can be a terrible problem. I know that because of this burning
                                pain, you hardly get all the sleep you need at nights. You are not alone… and thankfully
                                there are workable solutions that you can use to not only prevent future causes, but
                                also solve the present back pain you are experiencing. Experts have agreed that the kind
                                of mattress you sleep on plays a very important role in back pains suffered by most
                                people. There are some mattresses that do you a lot of harm when you sleep on them. And
                                the fact that you spend many hours EVERYDAY on such mattresses will only mean one thing!
                            </p>
                            <p>You are only spending more time hurting your back…without your knowledge. To solve this
                                problem you should check the kind of mattress you are sleeping on. By simply changing
                                the mattress for a better type, like a memory foam mattress, you can help to completely
                                eliminate the problem of back-pain from your life.</p>
                        </div>
                        <div class="blog-pic">
                            <div class="row">
                                <div class="col-lg-6">
                                    <img src="/img/blog-single-1.jpg" alt="">
                                </div>
                                <div class="col-lg-6">
                                    <img src="/img/blog-single-2.jpg" alt="">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <img src="/img/blog-single-3.jpg" alt="">
                                        </div>
                                        <div class="col-sm-6">
                                            <img src="/img/blog-single-4.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="blog-title">
                            <h4>Use Your Reset Button To Change Your Vibration</h4>
                            <p>You may feel like you will never possess enough commitment power to quit smoking
                                cigarettes. However, trying to stop smoking is just like all things else in the world.
                                It takes practice. Very few individuals stop for good on the principal try. Each time
                                you try to stop, it will get a little easier, especially if you are knowledgeable of
                                some of the best ways to quit smoking.</p>
                            <p>These days, there are a variety of goods on the market that can assist you to stop
                                smoking cigarettes. There are laser smoking restraint treatments, acupuncture cessation
                                smoking methods, and even a smoking cessation shot. You can also see your physician to
                                obtain a stop smoking antidepressant. </p>
                        </div>
                        <div class="blog-quote">
                            <i class="fa fa-quote-left"></i>
                            <div class="quote-text">That’s not to say you’ll have the exact same thing if you stop by:
                                the restaurant’s menus change constantly.
                            </div>
                            <h5>Ollie Schneider</h5>
                        </div>
                        <div class="blog-more-title">
                            <h4>Use Your Reset Button To Change Your Vibration</h4>
                            <p>Whether you enjoy city breaks or extended holidays in the sun, you can always improve
                                your travel experiences by staying in a small, charming hotel, where the atmosphere is
                                welcoming and friendly and the service is fabulous. There are hundreds of hotels that
                                are self-styled “boutique” places to stay, but not all of them fall into the traditional
                                definition of boutique, which includes.</p>
                        </div> --}}
                        <div class="blog-tag-share">
                            <div class="tags">
                                @foreach ($post->tags as $tag)
                                    <a href="{{ route('posts.tags.index', ['tag' => $tag->id]) }}">{{ $tag->name }}</a>
                                @endforeach
                                {{-- <a href="#">Gym</a>
                                <a href="#">Crossfit</a> --}}
                            </div>
                            <div class="social-share">
                                <span>Share:</span>
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google-plus"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-envelope"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">

                    <div class="blog-single-sidebar">

                        <div class="bs-latest-news">
                            <h4>News Latest</h4>
                            @foreach ($latest_news as $news)
                                <a href="{{ route('posts.show', ['post' => $news->id]) }}" class="bl-item set-bg" data-setbg="/img/sidebar-latest.jpg">
                                    <h5>{{ $news->title }}</h5>
                                    <span>{{ $news->created_at->isoFormat('MMMM D, YYYY') }}</span>
                                </a>
                            @endforeach
                        </div>

                        <div class="bs-recent-news">
                            <h4>Recent News</h4>
                            @foreach ($most_commented as $commented_post)
                                <a href="{{ route('posts.show', ['post' => $commented_post->id]) }}" class="br-item">
                                    <div class="bi-pic">
                                        <img src="{{ asset('img/blog/' . $commented_post->background_image) }}" alt="" style="height: 90px; width: 110px; object-fit: cover">
                                    </div>
                                    <div class="bi-text">
                                        <span>{{ $commented_post->created_at->isoFormat('MMMM D, YYYY') }}</span>
                                        <h5>{{ $commented_post->title }}</h5>
                                    </div>
                                </a>
                            @endforeach
                        </div>

                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="recent-news">
                        <h4>Relatest News</h4>
                        <div class="row">
                            {{-- @foreach ( as )
                                <div class="col-lg-4">
                                    <div class="recent-item set-bg" data-setbg="/img/recent-1.jpg">
                                        <a href="#" class="recent-text">
                                            <div class="categories">Gym & Croosfit</div>
                                            <h5>Many people sign up for affiliate programs</h5>
                                        </a>
                                    </div>
                                </div>
                            @endforeach --}}
                            {{-- <div class="col-lg-4">
                                <div class="recent-item set-bg" data-setbg="/img/recent-1.jpg">
                                    <a href="#" class="recent-text">
                                        <div class="categories">Gym & Croosfit</div>
                                        <h5>Many people sign up for affiliate programs</h5>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="recent-item set-bg" data-setbg="/img/recent-2.jpg">
                                    <a href="#" class="recent-text">
                                        <div class="categories">Gym & Croosfit</div>
                                        <h5>Many people sign up for affiliate programs</h5>
                                    </a>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <div class="recent-item set-bg" data-setbg="/img/recent-3.jpg">
                                    <a href="#" class="recent-text">
                                        <div class="categories">Gym & Croosfit</div>
                                        <h5>Many people sign up for affiliate programs</h5>
                                    </a>
                                </div>
                            </div> --}}
                        </div>
                    </div>

                    <div class="blog-single-text">
                        @include('posts.includes._comments')
                    </div>

                    <div class="leave-comment-form">
                        <h4>Leave A Comment</h4>
                        <form action="{{ route('posts.comment-form', ['post' => $post->id]) }}" method="POST" id="leave-comment-form">
                            <div class="row">
                                <div class="col-lg-4">
                                    <input type="text" name="name" required placeholder="Name">
                                </div>
                                <div class="col-lg-4">
                                    <input type="text" name="email" required placeholder="Email">
                                </div>
                                <div class="col-lg-4">
                                    <input type="text" name="phone" placeholder="Phone">
                                </div>
                                <div class="col-lg-12">
                                    <textarea placeholder="Comment" required name="comment"></textarea>
                                    <button type="submit" class="leave-btn">Post Comment</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Single Section End -->

    <!-- Cta Section Begin -->
    @include('includes._cta')
    <!-- Cta Section End -->
@endsection

@section('javascript')
<script>
    let name = null;
    let email = null;
    let phone = null;
    let comment = null;
    $( document ).ready(function() {

        $('#leave-comment-form').submit(function(e) { 
            let form = $(this).serializeArray();
            name = $.trim(form[0].value)
            email = $.trim(form[1].value)
            phone = $.trim(form[2].value)
            comment = $.trim(form[3].value)
            console.log(form);
            commentForm();
            e.preventDefault();
        });
    });

    function commentForm() {
        $.ajax({
            url: "{{ route('posts.comment-form', ['post' => $post->id]) }}",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            type: 'POST',
            data: {'name' : name, 'email' : email, 'phone' : phone, 'comment' : comment},
            success: function(data) {
                $('.blog-single-text').html(data);
            },
            error: function(data){
                alert("ERROR - " + data.responseText);
            }
        });
    }
</script>
@endsection