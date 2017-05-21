<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        <div class="navbar-header">

            <!-- Collapsed Hamburger -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#app-navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <!-- Branding Image -->
            <a class="navbar-brand" href="{{ url('/') }}">
                {{ config('app.name', 'Laravel') }}
            </a>
        </div>

        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <!-- Left Side Of Navbar -->
            <ul class="nav navbar-nav">
                
                @if((Auth::check()) && (Auth::user()->isRole('admin|sitemods')))
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Post <span class="caret"></span></a>

                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="/post">All Posts</a></li>
                        <li><a class="dropdown-item" href="/post/create">Buat Post</a></li>
                    </ul>
                </li>
                @else
                    <li><a href="/post">Post</a></li>
                @endif

                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Forum <span class="caret"></span></a>

                    <ul class="dropdown-menu">
                        <li><a href="/forum">All Threads</a></li>

                        <li><a href="/forum?popular=1">Popular Threads</a></li>
                        <li><a href="/forum?unanswered=1">Unanswered Threads</a></li>

                        @if (Auth::check())
                            <li><a class="dropdown-item" href="/forum/create">Buat Thread</a></li>
                        @endif

                    </ul>
                </li>

            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="nav navbar-nav navbar-right">
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control">
                    </div> 
                    <button type="submit" class="btn btn-default">
                        Submit
                    </button>
                </form>
                <!-- Authentication Links -->
{{--                 @if (Auth::guest())
                    <li><a href="{{ route('login') }}">Login</a></li>
                    <li><a href="{{ route('register') }}">Register</a></li>
                @elseif( (Auth::check()) && (Auth::user()->isRole('admin|sitemods', 'all')) ) --}}
                @if(Auth::check() && Auth::user()->isRole('admin|sitemods'))
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">
                            Halo, Mr. {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="#">Go to Dashboard</a>
                            </li>
                            <li>
                                <a href="{{ route('profile', Auth::user()) }}">My Profile</a>
                            </li>
                            <li><a class="dropdown-item" href="/forum?by={{ auth()->user()->name }}">Thread Saya</a></li>

                            <li>
                                <a href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    Logout
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                      style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        </ul>
                    </li>
                @elseif(Auth::check() && Auth::user()->isRole('user'))
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">
                            Halo, {{ Auth::user()->name }} <span class="caret"></span>
                        </a>

                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <a href="{{ route('profile', Auth::user()) }}">My Profile</a>
                            </li>
                            <li><a class="dropdown-item" href="/forum?by={{ auth()->user()->name }}">Thread Saya</a></li>

                            <li>
                                <a href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    Logout
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                      style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </li>
                        </ul>
                    </li>
                @else
                    <li><a href="{{ route('login') }}">Login</a></li>
                    <li><a href="{{ route('register') }}">Register</a></li>
                @endif
            </ul>
        </div>
    </div>
</nav>