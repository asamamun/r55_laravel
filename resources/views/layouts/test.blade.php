<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="{{asset("assets/css/bootstrap.min.css")}}">
    <link rel="stylesheet" href="{{asset("staticassets/css/lightbox.min.css")}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    @yield('style')
    <style>
          .cartbadge:after{
        content:attr(value);
        font-size:12px;
        color: #fff;
        background: red;
        border-radius:50%;
        padding: 0 5px;
        position:relative;
        left:-8px;
        top:-10px;
        opacity:0.9;
    }
    </style>
</head>
<body>
  <div class="container">
@include('layouts.nav')

      <div class="row">
        <div class="col-3">
          @yield('sidebar')
      </div>
        <div class="col-9">
          @include('partials.flash')
          @include('partials.error')
            @yield('content')
        </div>

      </div>
      <div class="container">
        <footer class="py-3 my-4">
          <ul class="nav justify-content-center border-bottom pb-3 mb-3">
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Home</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Features</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">Pricing</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">FAQs</a></li>
            <li class="nav-item"><a href="#" class="nav-link px-2 text-body-secondary">About</a></li>
          </ul>
          <p class="text-center text-body-secondary">© 2023 Company, Inc</p>
        </footer>
      </div>
      <script src="{{asset("assets/js/bootstrap.bundle.min.js")}}"></script>
      <script src="{{asset("assets/js/jquery-3.7.0.min.js")}}"></script>
      <script src="{{ asset("staticassets/js/lightbox.min.js") }}"></script>
      <script src="{{ asset("staticassets/js/cart.js") }}"></script>
      <script src="{{ asset("staticassets/js/speech.js") }}"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
      <script>
        $(document).ready(function () {
          let c = new Cart();
          // c.emptyCart();
          console.log(c.items)
          $("#cartbadge").attr("value", c.totalItems());

          $(".addCartIcon").click(function(){
            $t = $(this);
            let i = {
              id: $t.data("pid"),
              name: $t.data("pname"),
              price: $t.data("pprice"),
              quantity: 1,
            };
            c.addItem(i);
            talk("Item Added To Cart");
            Swal.fire({
  position: 'top-end',
  icon: 'success',
  title: 'Item Added To Cart',
  showConfirmButton: false,
  timer: 1500
}).then(()=>{
              $("#cartbadge").attr("value", c.totalItems());
              console.log(c.items);
            });
            
            // console.log($(this).data('pid'));
          });
        });
      </script>
      @yield('script')


    </div>
  
</body>
</html>