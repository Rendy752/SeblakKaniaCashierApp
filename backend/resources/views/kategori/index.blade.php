@extends('mainmenu')
@section('content')
    <div class="content-wrapper">
        <div class="content">
            <h1 class="lead" style="font-size: 40px; margin:20px 10px"><strong>Produk</strong><h1>
                @if (Session::has('createSuccess'))
                    <div class="alert alert-success lead">
                        {{ Session::get('createSuccess') }}
                    </div>
                @endif
                @if (Session::has('deleteSuccess'))
                    <div class="alert alert-info lead">
                        {{ Session::get('deleteSuccess') }}
                    </div>
                @endif
                <table class="table table-bordered table-stripped">
                    <thead>
                        <tr>
                            <th>Kategori</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td>dm.aw.mdaw</td>

                                <td>
                                    <a href="" class="btn btn-warning">Edit</a>
                                    <form action="" method="POST" class="d-inline">
                                        @csrf
                                        @method('delete')
                                        <button class="btn btn-danger">Delete</button>
                                    </form>
                                </td>
                            </tr>
                    </tbody>
                </table>
        </div>
    </div>
    @endsection
