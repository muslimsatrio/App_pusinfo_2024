<!DOCTYPE html>
<html lang="en">
<head>
  <title>DMS LAPHAR</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="plugins/asfie/style.css" rel="stylesheet" >
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

  
</head>
<!-- <body style="background-image: url('public/image/bg.eps')">

<div class="container-fluid p-5 bg-primary text-white text-center">
  <h1>Database Management System</h1>
  <p>PUSINFOSTRAHAN BAINSTRAHAN</p> 
</div>
  
<div class="container mt-5">
  <div class="row">
    <div class="col-sm-4">
      {{-- <h3>Column 1</h3>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit...</p>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...</p> --}}
    </div>
    <div class="col-sm-4">
      
      <div class="card">
        <img src="https://upload.wikimedia.org/wikipedia/commons/7/76/Logo_Kementerian_Pertahanan_Republik_Indonesia_%282022%29.png" class="card-img-top" alt="Fissure in Sandstone"/>
        <div class="card-body">
          {{-- <h5 class="card-title">Card title</h5>
          <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
          <a href="#!" class="btn btn-primary">Button</a> --}}
          <div class="col-md-12">
            @if(session('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
            @endif
            @if($errors->any())
            @foreach($errors->all() as $err)
            <p class="alert alert-danger">{{ $err }}</p>
            @endforeach
            @endif
            <h3>Login</h3>
            <form action="{{ route('login.action') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label>Username <span class="text-danger">*</span></label>
                    <input class="form-control" type="username" name="username" value="{{ old('username') }}" />
                </div>
                <div class="mb-3">
                    <label>Password <span class="text-danger">*</span></label>
                    <input class="form-control" type="password" name="password" />
                </div>
                <div class="mb-3">
                    <button class="btn btn-primary">Login</button>
                    
                </div>
                <div class="mb-3">
                   
                    {{-- <p>Belum Punya Akun ?</p>
                    <a class="btn btn-info" href="{{ route('register') }}">Register</a> --}}
                </div>
            </form>
        </div>
         
        </div>
      </div>
    </div>
  
  </div>
</div>

</body>  -->

<body>
        <div class="container-fluid">
        @if(session('success'))
            <p class="alert alert-success">{{ session('success') }}</p>
            @endif
            @if($errors->any())
            @foreach($errors->all() as $err)
            <p class="alert alert-danger">{{ $err }}</p>
            @endforeach
            @endif
            <form action="{{ route('login.action') }}" method="POST" class="mx-auto">
                @csrf
                <h4 class="text-center">Login</h4>
                <div class="mb-3 mt-5">
                  <label for="exampleInputEmail1" class="form-label">User Name</label>
                  <input class="form-control" type="username" name="username" value="{{ old('username') }}" />
                  <!-- <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"> -->
                </div>
                <div class="mb-3">
                  <label for="exampleInputPassword1" class="form-label">Password</label>
                  <input class="form-control" type="password" name="password" />
                  <!-- <input type="password" class="form-control" id="exampleInputPassword1"> -->
                  <!-- <div id="emailHelp" class="form-text mt-3">Forget password ?</div> -->
                </div>
              
                <button type="submit" class="btn btn-primary mt-5">Login</button>
              </form>
        </div>
        <!-- </div> -->


    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  </body>

</html>

{{-- batas ori --}}
{{-- @extends('app')
@section('content') --}}





{{-- @auth
<p>Welcome <b>{{ Auth::user()->name }}</b></p>
<a class="btn btn-primary" href="{{ route('password') }}">Change Password</a>
<a class="btn btn-danger" href="{{ route('logout') }}">Logout</a>
@endauth --}}
{{-- @guest
<a class="btn btn-primary" href="{{ route('login') }}">Login</a>
<a class="btn btn-info" href="{{ route('register') }}">Register</a>
@endguest --}}


{{-- @endsection --}}