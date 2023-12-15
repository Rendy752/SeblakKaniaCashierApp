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

    .card {
        background-color: #f8f9fa;
        border: 1px solid #dee2e6;
        border-radius: 10px;
        margin-bottom: 15px;
        transition: transform 0.3s; /* Menambahkan efek transisi */
    }

    .card:hover {
        transform: scale(1.05); /* Efek perbesaran saat mouse di atas kartu */
    }

    .card-body {
        text-align: center;
    }

    .card-title {
        font-size: 20px;
        font-weight: bold;
    }

    .card-text {
        font-size: 16px;
        margin-top: 5px;
    }

    .btn-container {
        text-align: center;
        margin-top: 15px;
    }
    .btn-group {
        display: flex;
        justify-content: center;
        gap: 1rem;

    }

    .btn-edit {
        background-color: #ffc107;
        border-color: #ffc107;
        color: #212529;
    }

    .btn-delete {
        background-color: #dc3545;
        border-color: #dc3545;
        color: #fff;
    }
</style>

<div class="content-wrapper">
    <div class="content">
        <h1 class="lead" style="font-size: 40px; margin:20px 10px"><strong>Kategori</strong></h1>
        @if (Auth::check())
        <div class="add-film-button">
            <a href="{{ route('kategori.create') }}" class="btn btn-success mb-2 w-10">Tambah Kategori</a>
        </div>
        @endif
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

        <div class="row">
            @foreach ($kategori as $item)
                <div class="col-md-4 mb-3">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">{{ $item->name }}</h5>
                            @foreach ($jumlah as $jum)
                            @if ($jum->id === $item->id)
                            <p class="card-text">Jumlah:  {{ $jum->jumlah }}</p>
                            @endif
                            @endforeach
                            @if (Auth::check())
                            <div class="btn-container">

                                <div class="btn-group">
                                    <a href="{{ route('kategori.edit', $item) }}" class="btn btn-warning btn-edit">Edit</a>
                                    <form action="{{ route('kategori.destroy', $item->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button class="btn btn-danger btn-delete">Delete</button>
                                    </form>
                                </div>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>

@endsection
