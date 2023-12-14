@extends('mainmenu')
@section('content')
    <div class="content-wrapper">
        <div class="content">
            <h1 class="lead" style="font-size: 40px; margin: 20px 10px"><strong>Produk</strong></h1>
            <div class="add-cinema-button">
                <a href="" class="btn btn-success mb-2 w-10">Tambah Produk</a>
            </div>
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
                {{-- Loop through your products here --}}
                @foreach($produk as $item)
                    <div class="col-md-4 mb-4">
                        <div class="card">
                            <img src="" class="card-img-top" alt="Product Image">
                            <div class="card-body">
                                <h5 class="card-title">{{ $item->name }}</h5>
                                <p class="card-text"><strong>Stok: </strong>{{ $item->stock }}</p>
                                <div class="d-flex justify-content-between align-items-center mt-3">
                                    <form method="POST" action="">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-danger" href={{ "produk/delete/".$item->id }}>Delete</button>
                                        <a href="" class="btn btn-warning" href={{ "produk/edit/".$item->id }}>Edit</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection
