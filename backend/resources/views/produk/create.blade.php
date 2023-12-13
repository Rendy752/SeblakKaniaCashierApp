@extends('mainmenu')

@section('content')
    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title text-center">Tambah Produk</h4>
                <form action="" method="post" class="forms-sample">
                    @csrf
                    <div class="form-group row">
                        <label for="namaProduk" class="col-sm-3 col-form-label text-right">Nama Produk</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="namaProduk" placeholder="Nama Produk" name="namaProduk">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="jenisProduk" class="col-sm-3 col-form-label text-right">Jenis Produk</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" id="jenisProduk" placeholder="Jenis Produk" name="jenisProduk">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="deskripsi" class="col-sm-3 col-form-label text-right">Deskripsi</label>
                        <div class="col-sm-9">
                            <textarea class="form-control" id="deskripsi" placeholder="Deskripsi Produk" name="deskripsi" rows="4"></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="harga" class="col-sm-3 col-form-label text-right">Harga</label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Rp</span>
                                </div>
                                <input type="number" class="form-control" id="harga" placeholder="Harga Produk" name="harga">
                            </div>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="stok" class="col-sm-3 col-form-label text-right">Stok</label>
                        <div class="col-sm-9">
                            <input type="number" class="form-control" id="stok" placeholder="Stok Produk" name="stok">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="gambar" class="col-sm-3 col-form-label text-right">Gambar</label>
                        <div class="col-sm-9">
                            <div class="input-group">
                                <input type="text" class="form-control" id="gambar" placeholder="Nama File Gambar" name="gambar">
                                <div class="input-group-append">
                                    <button class="btn btn-warning" type="button">Pilih Gambar</button>
                                </div>
                            </div>
                            <small class="form-text text-muted mx-2">Contoh: ayam.jpg</small>
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-9 offset-sm-3">
                            <button class="btn btn-success">Tambah</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection