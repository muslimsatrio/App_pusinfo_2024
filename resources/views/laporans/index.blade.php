<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>DMS LAPHAR</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    {{-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="plugins/asfie/laporanstyle.css" rel="stylesheet">  
    <!-- Latest compiled JavaScript -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <link href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" rel="stylesheet">
    <script src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
    {{-- muslim edit --}}
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.print.min.js"></script>
</head>

<!-- Navbar -->
{{-- <nav class="navbar navbar-expand-lg navbar-light bg-white">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarExample01"
            aria-controls="navbarExample01" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarExample01">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item active">
                    <a class="nav-link" aria-current="page">Menu</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-current="page">Welcome <b>{{ Auth::user()->name }}</b></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('password') }}">Change Password</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('logout') }}">Logout</a>
                </li>
            </ul>
        </div>
    </div>
</nav> --}}
<!-- Navbar -->

<body id="body-pd">
    <header class="header" id="header">
        <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        <div class="header_img"> <img
                src="https://upload.wikimedia.org/wikipedia/commons/7/76/Logo_Kementerian_Pertahanan_Republik_Indonesia_%282022%29.png"
                alt=""> </div>
    </header>
    <div class="l-navbar" id="nav-bar">
        <nav class="nav">
            <div> <a href="#" class="nav_logo"> <i class='bx bx-layer nav_logo-icon'></i> <span
                        class="nav_logo-name">DMS Report</span> </a>
                <div class="nav_list">
                    <a href="{{ route('dashboards.index') }}" class="nav_link ">
                        <i class='bx bx-grid-alt nav_icon'></i>
                        <span class="nav_name">Dashboard</span>
                    </a>
                    {{-- <a href="#" class="nav_link">
                        <i class='bx bx-user nav_icon'></i>
                        <span class="nav_name">Users</span>
                    </a> --}}
                    <a href="{{ route('laporans.index') }}" class="nav_link" active>
                        <i class='bx bx-message-square-detail nav_icon'></i>
                        <span class="nav_name">Daftar Laporan</span>
                    </a>
                    {{-- <a href="#" class="nav_link">
                        <i class='bx bx-bookmark nav_icon'> </i>
                        <span class="nav_name">Bookmark</span>
                    </a> --}}
                    <a href="{{ route('password') }}" class="nav_link">
                        <i class='bx bx-folder nav_icon'></i>
                        <span class="nav_name">Change Password</span>
                    </a>
                    {{-- <a href="#" class="nav_link">
                        <i class='bx bx-bar-chart-alt-2 nav_icon'></i>
                        <span class="nav_name">Stats</span>
                    </a> --}}
                </div>
            </div>
            <a href="{{ route('logout') }}" class="nav_link">
                <i class='bx bx-log-out nav_icon'></i>
                <span class="nav_name">SignOut</span>
            </a>
        </nav>
    </div>
    <!--Container Main start-->
    <div class="height-100 bg-light">
        <div class="pull-left">
            <h2>Daftar Laporan</h2>
            <h4>{{ Auth::user()->name }}</h4>
            {{-- <h4>{{Auth::user()->role_id}}</h4> --}}

        </div>
        <br>
        <div class="pull-right mb-2">
        
            <a class="btn btn-success" href="{{ route('laporans.create') }}"> Create Laporan <i class="fa fa-upload" aria-hidden="true"></i></a>
        </div>

        @if ($message = Session::get('success'))
            <div class="alert alert-success">
                <p>{{ $message }}</p>
            </div>
        @endif
        <br>
        <br>
        <br>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                <table class="table table-bordered" id="datatable-crud">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Negara</th>
                            <th>Sumber</th>
                            <th>Tanggal</th>
                            <th style="display: none">Tanggal</th>
                            <th>Judul</th>
                            <th style="display: none" >Isi</th>
                            <th>File</th>
                            <th>Creator</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                </table>
                </div>
            </div>
        </div>

    </div>
    <!--Container Main end-->


</body>


<script type="text/javascript">
    $(document).ready(function() {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });
        // $(document).ready(function() {
        //     alert("as");
        // } );
        $('#datatable-crud').DataTable({
            dom: 'Bfrtip',
            buttons: [{
                    extend: 'excelHtml5',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    }
                },
                {
                    extend: 'pdfHtml5',
                    exportOptions: {
                        columns: [0, 1, 2, 3, 4, 5]
                    }
                }
            ],

            autoWidth: true,
            responsive: true,
            processing: true,
            serverSide: true,
            ajax: "{{ url('laporans') }}",
            columns: [{
                    data: 'id',
                   nama:'id'
                },
                {
                    data: 'bidang',
                    name: 'bidang'
                },
                {
                    data: 'wilayah',
                    name: 'wilayah'
                },
                {
                    data: 'tanggal',
                    render: function(data, type, row) {
                        var dateSplit = data.split('-');
                        return type === "display" || type === "filter" ?
                            dateSplit[2] + '-' + dateSplit[1] + '-' + dateSplit[0] :
                            data;
                    }
                },
                {
                    data: 'tanggal',
                    visible: false,
                    name: 'tanggal'
                },
                {
                    data: 'judul',
                    name: 'judul'
                },
                {
                    data: 'isi',
                    visible: false,
                    name: 'isi'

                },
              
              
                {
                    data: 'url',
                    "render": function(data, type, full, meta) {
                        return '<a href="' + data + '"><i class="fa fa-file-pdf-o" style="font-size:48px;color:red" ></i>  </a>';
                    }
                },
                {
                    data: 'user',
                    name: 'user'

                },

                {
                    data: 'action',
                    name: 'action',
                    orderable: false
                },
            ],
            order: [
                [0, 'desc']
            ]
        });
        $('body').on('click', '.delete', function() {
            if (confirm("Delete Record?") == true) {
                var id = $(this).data('id');
                // ajax
                $.ajax({
                    type: "POST",
                    url: "{{ url('delete-laporan') }}",
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(res) {
                        var oTable = $('#datatable-crud').dataTable();
                        oTable.fnDraw(false);
                    }
                });
            }
        });
    });
</script>
<script type="text/javascript">
    document.addEventListener("DOMContentLoaded", function(event) {

        const showNavbar = (toggleId, navId, bodyId, headerId) => {
            const toggle = document.getElementById(toggleId),
                nav = document.getElementById(navId),
                bodypd = document.getElementById(bodyId),
                headerpd = document.getElementById(headerId)

            // Validate that all variables exist
            if (toggle && nav && bodypd && headerpd) {
                toggle.addEventListener('click', () => {
                    // show navbar
                    nav.classList.toggle('show')
                    // change icon
                    toggle.classList.toggle('bx-x')
                    // add padding to body
                    bodypd.classList.toggle('body-pd')
                    // add padding to header
                    headerpd.classList.toggle('body-pd')
                })
            }
        }

        showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

        /*===== LINK ACTIVE =====*/
        const linkColor = document.querySelectorAll('.nav_link')

        function colorLink() {
            if (linkColor) {
                linkColor.forEach(l => l.classList.remove('active'))
                this.classList.add('active')
            }
        }
        linkColor.forEach(l => l.addEventListener('click', colorLink))

        // Your code to run since DOM is loaded and ready
    });
</script>

</html>
