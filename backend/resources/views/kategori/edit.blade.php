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
    </style>

    <div class="row justify-content-center mt-4">
        <div class="col-md-6"> <!-- Tambahkan class col-md-6 untuk mengatur lebar kolom -->
            <div class="card custom-card">
                <div class="card-body">
                    <h4 class="card-title custom-card-title">Edit Kategori</h4>

                    <form class="forms-sample" method="post"
                        action="{{ route('kategori.update', ['kategori' => $kategori->id]) }}" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="form-group">
                            <input type="text" class="form-control" id="name" name="name"
                                placeholder="Nama Kategori" value="{{ $kategori->name }}">
                            <!-- Ganti $kategori menjadi $category -->
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-primary custom-btn-primary">Submit</button>
                            <a href="{{ route('kategori.index') }}" class="btn btn-light custom-btn-light">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>


@endsection
