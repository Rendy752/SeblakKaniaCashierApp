@extends('mainmenu')
@section('content')
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

            <div class="row">
                {{-- Loop through your products here --}}

                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="" class="card-img-top" alt="Product Image">
                        <div class="card-body">
                            <h5 class="card-title">adwwad</h5>
                            <p class="card-text"><strong>Stok: </strong>awdaw</p>
                            <div class="d-flex justify-content-between align-items-center mt-3">
                                <form action="" method="POST">
                                    @csrf
                                    @method('DELETE')
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                    <a href="" class="btn btn-warning">Edit</a>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
@endsection