<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="{{asset('/images/logo.png')}}">
    <title>Cashier App </title>

    <link href="{{ asset('vendors/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{asset('vendors/font-awesome/css/font-awesome.min.css')}}" rel="stylesheet">
    {{-- <link href="{{asset('vendors/nprogress/nprogress.css')}}" rel="stylesheet"> --}}
    {{-- <link href="{{asset('vendors/iCheck/skins/flat/green.css')}}" rel="stylesheet"> --}}
    {{-- <link href="{{asset('vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css')}}" rel="stylesheet"> --}}
    {{-- <link href="{{asset('vendors/jqvmap/dist/jqvmap.min.css')}}" rel="stylesheet" />
    <link href="{{asset('vendors/bootstrap-daterangepicker/daterangepicker.css')}}" rel="stylesheet"> --}}
    <link href="{{asset('build/css/custom.min.css')}}" rel="stylesheet">

    <style>
        html::-webkit-scrollbar{
            display: none;
        }
    </style>
</head>

<body class="nav-md">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
                    <div class="navbar nav_title" style="border: 0;">
                        <a href="/" class="site_title"><img src="{{url('/images/logo.png')}}" alt="logo" width="30rem"> <span>Cashier</span></a>
                    </div>
                    <div class="clearfix"></div>
                    <!-- menu profile quick info -->
                    <div class="profile clearfix text-center">
                        <div class="profile_info">
                            @if(Auth::check())
                            <span>Welcome,</span>
                            <h2>{{ Auth::user()->name }}</h2>
                            @else
                            <a data-toggle="tooltip" data-placement="top" title="Login" href={{ "loginMenu"}}>
                                <span class="glyphicon glyphicon-log-in" aria-hidden="true"> Login</span>
                            </a>
                            @endif
                        </div>
                    </div>
                    <!-- /menu profile quick info -->

                    <br />

                    <!-- sidebar menu -->
                    <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        <div class="menu_section">
                            <h3>Menu</h3>
                            <ul class="nav side-menu">
                                @if (Auth::check())
                                <li><a><i class="fa fa-cart-plus"></i>Transaksi</a>
                                </li>
                                @endif
                                <li><a href="{{route('produk.index')}}"><i class="fa fa-product-hunt"></i> Produk</a>
                                </li>
                                <li><a href="{{route('kategori.index')}}"><i class="fa fa-align-center"></i> Kategori</a>
                                </li>
                                @if (Auth::check())
                                <li><a><i class="fa fa-history"></i> History</a>
                                    <ul class="nav child_menu">
                                        <li><a>Pengeluaran</a></li>
                                        <li><a>Pemasukkan</a></li>
                                        <li><a> Transaksi</a></li>
                                    </ul>
                                </li>
                                @endif
                                @if (Auth::check())
                                <li><a><i class="fa fa-inbox"></i>STOCK</a>
                                </li>
                                @endif
                            </ul>
                        </div>
                    </div>

                    <!-- /menu footer buttons -->
                    <div class="sidebar-footer hidden-small">
                        <a data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                            <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                        </a>
                        <a data-toggle="tooltip" data-placement="top" title="Lock">
                            <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                        </a>
                        @if (Auth::check())
                        <a data-toggle="tooltip" data-placement="top" title="Logout" href={{ "logout" }}>
                            <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                        </a>
                        @else
                        <a data-toggle="tooltip" data-placement="top" title="Login" href={{ "loginMenu"}}>
                            <span class="glyphicon glyphicon-log-in" aria-hidden="true"></span>
                        </a>
                        @endif
                    </div>
                    <!-- /menu footer buttons -->
                </div>
            </div>

            <!-- top navigation -->
            <div class="top_nav">
                <div class="nav_menu">
                    <nav>
                        <div class="nav toggle">
                            <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                        </div>

                        <ul class="nav navbar-nav navbar-right">
                            <li class="">
                                <a class="user-profile dropdown-toggle" data-toggle="dropdown"
                                    aria-expanded="false">
                                    <img src="https://cdn-icons-png.flaticon.com/512/3106/3106773.png" alt="prodife">{{ !Auth::check()?"Anonymous":Auth::user()->name }}
                                    <span class=" fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu dropdown-usermenu pull-right">
                                    @if (Auth::check())
                                    <li><a href={{ "logout" }}><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                                    @else
                                    <li><a  href={{ "loginMenu"}}><i class="fa fa-sign-out pull-right"></i> Log In</a></li>
                                    @endif
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <!-- /top navigation -->

            <!-- page content -->
            <div class="right_col" role="main">
                <!-- top tiles -->
                <div class="row tile_count">
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-user"></i> Total Users</span>
                        <div class="count">2500</div>
                        <span class="count_bottom"><i class="green">4% </i> From last Week</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-clock-o"></i> Average Time</span>
                        <div class="count">123.50</div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last
                            Week</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-user"></i> Total Males</span>
                        <div class="count green">2,500</div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last
                            Week</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-user"></i> Total Females</span>
                        <div class="count">4,567</div>
                        <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From
                            last Week</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-user"></i> Total Collections</span>
                        <div class="count">2,315</div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last
                            Week</span>
                    </div>
                    <div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
                        <span class="count_top"><i class="fa fa-user"></i> Total Connections</span>
                        <div class="count">7,325</div>
                        <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last
                            Week</span>
                    </div>
                    @yield('content')
                </div>
            </div>
            <!-- /page content -->

            <!-- footer content -->
            <footer>
                <div class="pull-right">
                   Copyright &copy; Seblak Kania 2023
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->
        </div>
    </div>

    <!-- jQuery -->
    <script src="{{asset('vendors/jquery/dist/jquery.min.js')}}"></script>
    <!-- Bootstrap -->
    <script src="{{asset('vendors/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    {{-- <!-- FastClick -->
    <script src="{{asset('vendors/fastclick/lib/fastclick.js')}}"></script> --}}
    <!-- NProgress -->
    {{-- <script src="{{asset('vendors/nprogress/nprogress.js')}}"></script> --}}
    <!-- Chart.js -->
    {{-- <script src="{{asset('vendors/Chart.js/dist/Chart.min.js')}}"></script> --}}
    <!-- ... (code truncated for brevity) ... -->

    <!-- Custom Theme Scripts -->
    <script src="{{asset('build/js/custom.min.js')}}"></script>
</body>

</html>
