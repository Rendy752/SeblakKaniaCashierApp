@extends('mainmenu')

@section('title', 'Halaman Tambah Kategori')

@section('content')

    <style>
        .custom-card {
            box-shadow: 3px 3px 8px 10px rgba(0, 0, 0, 0.1);
            border-radius: 15px;
            /* Adjust the border-radius for a more rounded appearance */
            padding: 2rem;
            margin: 6rem auto;
            overflow: hidden;
            width: 60vh;

        }

        .custom-card-title {
            color: #333;
        }

        .custom-btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            border-radius: 15px;
            /* Adjust the border-radius for a more rounded appearance */
        }

        .custom-btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }

        .custom-btn-light {
            background-color: #f8f9fa;
            border-color: #f8f9fa;
            border-radius: 15px;
            /* Adjust the border-radius for a more rounded appearance */
        }

        .custom-btn-light:hover {
            background-color: #dae0e5;
            border-color: #dae0e5;
        }

        .product-image {
            max-height: 120px; /* Adjusted maximum height */
        }

        .form-group{
            text-align: center;
        }
    </style>

<div class="row justify-content-center mt-4">
    <div class="col-md-6">
        <div class="card custom-card">
            <div class="card-body">
                <h4 class="card-title custom-card-title">Edit Produk</h4>

                <form class="forms-sample" method="post" action="{{ route('produk.update',$product->id) }}" enctype="multipart/form-data">

                    @csrf
                    @method('patch')
                    <div class="form-group">
                        <img src="{{ asset('picture/'.$product->picture) }}" class="card-img-top product-image" alt="Product Image">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Nama Produk" value="{{ $product->name }}">
                        @error('name')
                            <div class="text-danger">&times {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group row">
                        <label for="category_id" class="col-sm-3 col-form-label text-right">kategori</label>
                        <div class="col-sm-9">
                            <select name="category_id" class="form-control">
                                @foreach ($kategori as $item)
                                <option @if($product->category_id==$item->id) selected @endif value="{{ $item->id }}">
                                    {{ $item->name }}
                                </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" id="harga" name="price" placeholder="Harga" value="{{ $product->price }}">
                        @error('price')
                            <div class="text-danger">&times {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <input type="number" class="form-control" id="stok" name="stock" placeholder="Stok" value="{{ $product->stock }}">
                        @error('stock')
                            <div class="text-danger">&times {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <input type="file" class="form-control" id="picture" name="picture" placeholder="URL Gambar" value="{{ $product->picture }}">
                        @error('picture')
                            <div class="text-danger">&times {{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group text-center">
                        <button type="submit" class="btn btn-primary custom-btn-primary">Submit</button>
                        <a href="{{ route('produk.index') }}" class="btn btn-light custom-btn-light">Batal</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


@endsection
