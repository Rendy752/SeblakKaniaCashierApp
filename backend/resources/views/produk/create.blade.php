@extends('mainmenu')

@section('content')
    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title text-center">Tambah Produk</h4>
                <form action="{{route('produk.store')}}" method="POST" class="forms-sample" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group row">
                        <label for="name" class="col-sm-3 col-form-label text-right">Nama Produk</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control"  placeholder="Nama Produk" name="name"  value="{{old('name')}}" required>
                            @error('name')
                            <div class="text-danger">&times {{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="category_id" class="col-sm-3 col-form-label text-right">kategori</label>
                        <div class="col-sm-9">
                            <select name="category_id" class="form-control">
                                @foreach ($kategori as $item)
                                <option value="{{ $item->id }}">
                                    {{ $item->name }}
                                </option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="price" class="col-sm-3 col-form-label text-right">Harga</label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Rp</span>
                                </div>
                                <input type="number" class="form-control" id="harga" placeholder="Harga Produk" name="price"  value="{{old('price')}}" required>
                                @error('price')
                            <div class="text-danger">&times {{ $message }}</div>
                            @enderror
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="stock" class="col-sm-3 col-form-label text-right">Stok</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control"  placeholder="Stok Produk" name="stock"  value="{{old('stock')}}" required>
                            @error('stock')
                            <div class="text-danger">&times {{ $message }}</div>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="picture" class="col-sm-3 col-form-label text-right">Gambar</label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input type="file" class="form-control"  placeholder="Nama File Gambar" name="picture" required>
                                @error('picture')
                            <div class="text-danger">&times {{ $message }}</div>
                            @enderror
                            </div>
                            <small class="form-text text-muted mx-2">Contoh: ayam.jpg</small>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-9 offset-sm-3">
                            <button class="btn btn-success" type="submit">Tambah</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
