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
        html::-webkit-scrollbar{
            display: none;
        }

        .cascading-right {
          margin-right: -50px;
        }
    
        @media (max-width: 991.98px) {
          .cascading-right {
            margin-right: 0;
          }
        }
      </style>
</head>
<body>
<section class="text-center text-lg-start">
    <div class="container py-4">
      <div class="row g-0 align-items-center">
        <div class="col-lg-6 mb-5 mb-lg-0">
          <div class="card cascading-right" style="
              background: hsla(0, 0%, 100%, 0.55);
              backdrop-filter: blur(30px);
              ">
            <div class="card-body p-5 shadow-5 text-center">
              <h2 class="fw-bold mb-5">Sign up</h2>
              <form action="/register" method="POST">
                @csrf
                <div class="form-outline mb-4">
                    <input type="text" class="form-control" name="name" placeholder="Name" value="{{old('name')}}" required/>
                    @error('name')
                    <div class="text-danger">&times {{ $message }}</div>
                  @enderror
                </div>

                <div class="form-outline mb-4">
                  <input type="email" class="form-control" name="email" placeholder="Email" value="{{old('password')}}" required/>
                  @error('email')
                    <div class="text-danger">&times {{ $message }}</div>
                  @enderror
                </div>
  
                <div class="row">
                    <div class="col-md-6 mb-4">
                      <div class="form-outline">
                        <input type="password" class="form-control" placeholder="Password" name="password" placeholder="Confirm Password" value="{{old('password')}}" required/>
                        @error('password')
                            <div class="text-danger">&times {{ $message }}</div>
                        @enderror
                      </div>
                    </div>
                    <div class="col-md-6 mb-4">
                      <div class="form-outline">
                        <input type="password" class="form-control" placeholder="Confirm Password" name="confirm_password" placeholder="Confirm Password" value="{{old('confirm_password')}}" required />
                        @error('confirm_password')
                            <div class="text-danger">&times {{ $message }}</div>
                        @enderror
                      </div>
                    </div>
                  </div>
  
                <button type="submit" class="btn btn-primary btn-block mb-4">
                  Sign up
                </button>
              </form>
            </div>
          </div>
        </div>
  
        <div class="col-lg-6 mb-5 mb-lg-0">
          <img src="https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8zMF8zZF9pbGx1c3RyYXRpb25fb2ZfY2FzaGllcl9tYW5fc3VwZXJtYXJrZXRfbF80MWZkNWQ0Mi1mZDA0LTQ5NmMtOTYzMC0xYzRlNWY5ZDI1NGUucG5n.png" class="w-100 rounded-4 shadow-4"
            alt="cashier" />
        </div>
      </div>
    </div>
  </section>
</body>
</html>