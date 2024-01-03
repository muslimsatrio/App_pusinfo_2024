<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Add Laporan Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    
</head>

<body>
    <div class="container mt-2">
        <div class="row">
            <div class="col-lg-12 margin-tb">
                <div class="pull-left mb-2">
                    <h2>Add Laporan</h2>
                </div>
                {{-- <div class="pull-right">
                    <a class="btn btn-primary" href="{{ route('laporans.index') }}"> Back</a>
                </div> --}}
            </div>
        </div>
        @if (session('status'))
            <div class="alert alert-success mb-1 mt-1">
                {{ session('status') }}
            </div>
        @endif
        <form action="{{ route('laporans.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Negara:</strong>
                        <input type="text" name="bidang" class="form-control" placeholder=""> 
                        @error('bidang')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Sumber:</strong>
                     <input type="text" name="wilayah" class="form-control" placeholder="">
                        @error('wilayah')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Tanggal:</strong>
                     
                        <input type="text" name="user" class="form-control" hidden value="{{ Auth::user()->name }}">
                        <input type="date" name="tanggal" class="form-control" placeholder="tanggal">
                        @error('tanggal')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Judul:</strong>
                        <input type="text" name="judul" class="form-control" placeholder="Judul">
                        @error('judul')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Keyword:</strong>
                        <textarea class="form-control" id="isi" name="isi" rows="5"></textarea>
                        {{-- <input type="text" name="isi" class="form-control" placeholder="Isi"> --}}
                        @error('isi')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Catatan:</strong>
                        <textarea class="form-control" id="catatan" name="catatan" rows="5"></textarea>
                    
                        @error('catatan')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>Lain-Lain:</strong>
                        <input type="text" name="tempat" class="form-control" placeholder="">
                        @error('tempat')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <div class="form-group">
                        <strong>File:</strong>
                        <input type="file" name="file" class="form-control" placeholder="Fle">
                        @error('file')
                            <div class="alert alert-danger mt-1 mb-1">{{ $message }}</div>
                        @enderror
                    </div>
                </div>
                
                <button type="submit" class="btn btn-success ml-3">Submit</button>
                <a class="btn btn-primary" href="{{ route('laporans.index') }}"> Back</a>
            </div>
        </form>

        <script type="text/javascript">
            $("#bidang").on('change', function() {
                var a = $("#bidang option:selected").val();
                // alert("ini adalah" + a); 
                if (a == "Dagri") {
                    $('#wilayah').empty();
                    $("#wilayah").append(new Option("Ideologi", "Ideologi"));
                    $("#wilayah").append(new Option("Politik", "Politik"));
                    $("#wilayah").append(new Option("Ekonomi", "Ekonomi"));
                    $("#wilayah").append(new Option("Sosbud", "Sosbud"));
                    $("#wilayah").append(new Option("Hankam", "Hankam"));
                    $("#wilayah").append(new Option("Lainnya", "Lainnya"));
                    // alert("ini adalah dagri");
                } else if (a == "Aspas") {
                    $('#wilayah').empty();
                    $("#wilayah").append(new Option("Asgara Auceania", "Asgara_Auceania"));
                    $("#wilayah").append(new Option("Astimteng", "Astimteng"));
                    $("#wilayah").append(new Option("Asselbar", "Asselbar"));
                    $("#wilayah").append(new Option("Lainnya", "Lainnya"));
                    // alert("ini adalah Aspas");
                } else if (a == "Ameroaf") {
                    $('#wilayah').empty();
                    $("#wilayah").append(new Option("Amerika", "Amerika"));
                    $("#wilayah").append(new Option("Eropa", "Eropa"));
                    $("#wilayah").append(new Option("Afrika", "Afrika"));
                    $("#wilayah").append(new Option("Lainnya", "Lainnya"));
                    // alert("ini adalah Ameroaf");
                }
            });
        </script>
</body>

</html>
