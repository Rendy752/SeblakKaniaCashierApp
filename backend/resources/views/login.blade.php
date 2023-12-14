<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="{{asset('/images/logo.png')}}">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Cashier App</title>
    <style>
        .gradient-custom-2 {
/* fallback for old browsers */
background: #fccb90;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, #ee7724, #d8363a, #dd3675, #b44593);
}

@media (min-width: 768px) {
.gradient-form {
height: 100vh !important;
}
}
@media (min-width: 769px) {
.gradient-custom-2 {
border-top-right-radius: .3rem;
border-bottom-right-radius: .3rem;
}
}
    </style>
</head>
<body>
    <section class="h-100 gradient-form" style="background-color: #eee;">
        <div class="container py-5 h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
              <div class="card rounded-3 text-black">
                <div class="row g-0">
                  <div class="col-lg-6">
                    <div class="card-body p-md-5 mx-md-4">
                      <div class="text-center">
                        <img src="{{url('/images/logo.png')}}"
                          style="width: 185px;" alt="logo">
                        <h4 class="mt-1 mb-5 pb-1">Cashier App</h4>
                      </div>
                      <form action="/login" method="POST">
                        @csrf
                        <div class="form-outline mb-4">
                            <input type="email" id="email" class="form-control" name="email" value="{{old('email')}}" placeholder="Email" required/>
                            @error('email')
                              <div class="text-danger">&times {{ $message }}</div>
                              @enderror
                        </div>
                        <div class="form-outline mb-4">
                          <input type="password" id="password" class="form-control" name="password" value="{{old('password')}}" placeholder="Password" required/>
                          @error('password')
                            <div class="text-danger">&times {{ $message }}</div>
                            @enderror
                        </div>
                          <button class="btn btn-primary fa-lg gradient-custom-2 mb-3 w-100" type="submit">Login</button>
                        <div class="d-flex align-items-center justify-content-center pb-4 mt-5">
                          <p class="mb-0 me-2">Don't have an account?</p>
                          <a  href={{ "registerMenu"}}><button type="button" class="btn btn-outline-danger">Create new</button></a>
                        </div>
                      </form>
                    </div>
                  </div>
                  <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                    <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
</body>
</html>