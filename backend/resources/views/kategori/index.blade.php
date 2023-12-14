@extends('mainmenu')
@section('content')
    <style>
        .content-wrapper {
            margin: 20px;
            padding: 20px;
            background-color: #f8f9fa;
            border: 1px solid #dee2e6;
            border-radius: 10px;
        }

        .content h1 {
            text-align: center;
            margin-bottom: 30px;
        }

        .alert {
            margin-bottom: 20px;
        }

        .table th,
        .table td {
            text-align: center;
        }

        .btn-container {
            display: flex;
            gap: 5px;
            justify-content: center
        }

        .btn {
            margin: 0;
        }
    </style>

<div class="content-wrapper">
    <div class="content">
        <h1 class="lead" style="font-size: 40px; margin:20px 10px"><strong>Produk</strong></h1>
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
                    <th>Jumlah</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($kategori as $item)
                    <tr>
                        <td>{{ $item->name }}</td>
                        @foreach ($jumlah as $jum)
                        @if ($jum->id === $item->id)
                        <td>
                                    {{ $jum->jumlah }}
                                </td>
                                @endif
                            @endforeach
                        <td>
                            <div class="btn-container">
                                <a href="" class="btn btn-warning">Edit</a>
                                <form action="" method="POST" class="d-inline">
                                    @csrf
                                    @method('delete')
                                    <button class="btn btn-danger">Delete</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>
@endsection
