@extends('app')
@section('content')
<section class="h-100 gradient-form" style="background-color: #eee;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-xl-10">
          <div class="card rounded-3 text-black">
            <div class="row g-0">
              <div class="col-lg-6">
                <div class="card-body p-md-5 mx-md-4">
  
                  <div class="text-center">
                    <img src="https://upload.wikimedia.org/wikipedia/commons/7/76/Logo_Kementerian_Pertahanan_Republik_Indonesia_%282022%29.png"
                      style="width: 185px;" alt="logo">
                    {{-- <h4 class="mt-1 mb-5 pb-1">We are The Lotus Team</h4> --}}
                  </div>

                  <div class="col-md-6">
                    @if(session('success'))
                    <p class="alert alert-success">{{ session('success') }}</p>
                    @endif
                    @if($errors->any())
                    @foreach($errors->all() as $err)
                    <p class="alert alert-danger">{{ $err }}</p>
                    @endforeach
                    @endif
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
                            <a class="btn btn-danger" href="{{ route('home') }}">Back</a>
                        </div>
                    </form>
                </div>
                </div>
              </div>
              <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                  <h4 class="mb-4">DMS Laphar</h4>
                  <p style="text-align: justify" class="small mb-0 ">Document Management System (DMS) merupakan sebuah sistem komputer (atau seperangkat program komputer) yang digunakan untuk menelusuri dan menyimpan dokumen elektronik. DMS bermanfaat dalam mengefektifkan dan mengefisienkan proses bisnis atau organisasi.</p>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>
@endsection