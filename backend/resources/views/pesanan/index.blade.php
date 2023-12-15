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
        margin-bottom: 20px;
        transition: transform 0.3s ease-in-out;
        display: flex;
        flex-direction: column; /* Tambahkan CSS ini */
        align-items: center; /* Tambahkan CSS ini */
    }

    .card:hover {
        transform: scale(1.05);
    }

    .card-body {
        text-align: center;
    }

    .card-title {
        font-size: 18px; /* Decreased font size */
        font-weight: bold;
        margin-bottom: 10px; /* Tambahkan margin ke judul */
    }

    .product-image {
        max-height: 120px; /* Adjusted maximum height */
        object-fit: cover; /* Preserve aspect ratio */
        border-radius: 10px;
        margin-bottom: 10px; /* Tambahkan margin ke gambar */
    }

    .card {
        padding: 1rem
    }

    .btn-container {
        margin-top: 15px;
        display: flex;
        justify-content: center;
        gap: 1rem;
        text-align: center;
    }

    .btn-delete {
        background-color: #dc3545;
        border-color: #dc3545;
        color: #fff;
        margin-right: 5px;
         /* Tambahkan margin ke tombol delete */
    }

    .btn-edit {
        background-color: #ffc107;
        border-color: #ffc107;
        color: #212529;
    }

    input {
        width: 15%;
    }
</style>

<div class="content-wrapper">
    <div class="content">
        <h1 class="lead" style="font-size: 40px; margin: 20px 10px"><strong>Pesanan</strong></h1>
        @if (Auth::check())
        <div class="add-cinema-button">
            <a href="{{ route('produk.create') }}" class="btn btn-success mb-2 w-10">Tambah Pesanan</a>
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

        <div class="row-reverse">
            {{-- Loop through your products here --}}
            @foreach($produk as $item)
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="{{ asset('picture/'.$item->picture) }}" class="card-img-top product-image" alt="Product Image">
                        <div class="card-body">
                            <h5 class="card-title">{{ $item->name }}</h5>
                            <p class="card-text"><strong>Stok: </strong>{{ $item->stock }}</p>
                            @if (Auth::check())
                            <div class="btn-container">
                                <a class="btn btn-success">&plus;</a>
                                <input type="number" placeholder="0">
                                <a class="btn btn-success">&minus;</a>
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
