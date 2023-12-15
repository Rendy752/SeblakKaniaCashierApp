@extends('mainmenu')

@section('content')
<div class="content-wrapper p-5">
    <div class="content">
        <div class="card">
            <div class="card-body">
              <div class="container mb-5 mt-3">
                <div class="row d-flex align-items-baseline">
                  <div class="col-xl-9">
                    <p style="color: #7e8d9f;font-size: 20px;">Struk >> <strong>ID: {{ $detail[0]->id }}</strong></p>
                  </div>
                  <hr>
                </div>
          
                <div class="container">
          
          
                  <div class="row">
                    <div class="col-xl-4">
                      <p class="text-muted">Struk</p>
                      <ul class="list-unstyled">
                        <li class="text-muted"><i class="fa fa-circle" style="color:#84B0CA ;"></i> <span
                            class="fw-bold">Nama Penerima:</span>{{ $name }}</li>
                        <li class="text-muted"><i class="fa fa-circle" style="color:#84B0CA ;"></i> <span
                            class="fw-bold">ID:</span>{{ $detail[0]->id }}</li>
                        <li class="text-muted"><i class="fa fa-circle" style="color:#84B0CA ;"></i> <span
                            class="fw-bold">Tanggal: </span>{{ $detail[0]->created_at }}</li>
                      </ul>
                    </div>
                  </div>
          
                  <div class="row my-2 mx-1 justify-content-center">
                    <table class="table table-striped table-borderless">
                      <thead style="background-color:#84B0CA ;" class="text-white">
                        <tr>
                          <th scope="col">No</th>
                          <th scope="col">Id Produk</th>
                          <th scope="col">Jumlah</th>
                          <th scope="col">Catatan</th>
                        </tr>
                      </thead>
                      <tbody>
                        @foreach($detail as $item)
                        <tr>
                          <th scope="row">{{ $loop->index+1 }}</th>
                          <td>{{ $item->product_id }}</td>
                          <td>{{ $item->amount }}</td>
                          <td>{{ $item->note }}</td>
                        @endforeach
                        </tr>
                      </tbody>
          
                    </table>
                  </div>
                  <div class="row">
                    <div class="col-xl-3">
                      <ul class="list-unstyled">
                        <li class="text-muted ms-3"><span class="text-black me-4">Total: </span>Rp.{{ $total }}</li>
                        <li class="text-muted ms-3 mt-2"><span class="text-black me-4">Pajak(10%): </span>Rp.{{ $total*0.1 }}</li>
                      </ul>
                      <p class="text-black float-start"><span class="text-black me-3"> Total Amount</span><span
                          style="font-size: 25px;"> Rp.{{ $total+$total*0.1 }}</span></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
    </div>
</div>
@endsection