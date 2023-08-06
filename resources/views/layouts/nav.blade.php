<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
      <a class="navbar-brand" href="{{url("home")}}">Navbar</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="{{url("/")}}">Home</a>
          </li>
          @auth
          <li class="nav-item">
            <a class="nav-link" href="{{route("category.index")}}">Category</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route("subcategory.index")}}">SubCategory</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{route("product.index")}}">Product</a>
          </li>
          {{-- <li class="nav-item">
            <a class="nav-link" href="{{url("album")}}">Album</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{url("product")}}">Product</a>
          </li> --}}
          <li class="nav-item">
            <a class="nav-link" href="{{url("dashboard")}}">Dashboard</a>
          </li>
          {{-- <li>
            <a class="nav-link" href="javascript:void(0)">{{Auth::user()->name}}</a>
          </li>
          <li>
            <form method="POST" action="{{ route('logout') }}">
              @csrf
              <a class="nav-link" href="#" onclick="event.preventDefault();
              this.closest('form').submit();">Logout</a>
          </form>  
          </li> --}}
                    <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                {{Auth::user()->name}}
            </a>
            <ul class="dropdown-menu">
              {{-- <li><a class="dropdown-item" href="{{url("profile")}}">Profile</a></li> --}}
              <li><a class="dropdown-item" href="{{route("profile.edit")}}">Profile</a></li>
              <li><form method="POST" action="{{ route('logout') }}">
                @csrf
                <a class="nav-link" href="#" onclick="event.preventDefault();
                this.closest('form').submit();">Logout</a>
            </form></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>

          @endauth
          @guest
          <li class="nav-item">
            <a class="nav-link" href="{{url("login")}}">Login</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="{{url("register")}}">Register</a>
          </li>
          @endguest


        </ul>
        <form class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
      </div>
    </div>
  </nav>