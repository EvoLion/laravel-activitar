<header {{ $attributes->merge(['class' => 'header-section']) }}>
    <div class="container-fluid">
        <div class="logo">
            <a href="{{ route('home') }}">
                <img src="/img/logo.png" alt="">
            </a>
        </div>
        <div class="top-social">
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
            <a href="#"><i class="fa fa-youtube-play"></i></a>
            <a href="#"><i class="fa fa-instagram"></i></a>
        </div>
        <div class="container">
            <div class="nav-menu">
                <nav class="mainmenu mobile-menu">
                    <ul>
                        <li class="{{ Route::currentRouteNamed('home') ? 'active' : '' }}"><a href="{{ route('home') }}">Home</a></li>
                        <li class="{{ Route::currentRouteNamed('about-us') ? 'active' : '' }}"><a href="{{ route('about-us') }}">About us</a></li>
                        <li class="{{ Route::currentRouteNamed('schedule') ? 'active' : '' }}"><a href="{{ route('schedule') }}">Schedule</a></li>
                        <li class="{{ Route::currentRouteNamed('gallery') ? 'active' : '' }}"><a href="{{ route('gallery') }}">Gallery</a></li>
                        <li class="{{ Route::currentRouteNamed('posts.index') ? 'active' : '' }}"><a href="{{ route('posts.index') }}">Blog</a>
                            <ul class="dropdown">
                                <li><a href="{{ route('about-us') }}">About Us</a></li>
                                <li><a href="{{ route('posts.show') }}">Blog Details</a></li>
                            </ul>
                        </li>
                        <li class="{{ Route::currentRouteNamed('contact') ? 'active' : '' }}"><a href="{{ route('contact') }}">Contacts</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div id="mobile-menu-wrap"></div>
    </div>
</header>