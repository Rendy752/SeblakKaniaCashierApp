@extends('mainmenu')

@section('content')
  <div class="content-wrapper">
    <div class="content">
        <h1 class="lead" style="font-size: 40px; margin: 20px 10px"><strong>Pesanan</strong></h1>
        @if (Auth::check())
        <div class="add-cinema-button">
            <a href="{{ route('pesanan.index') }}" class="btn btn-success mb-2 w-10">Tambah Pesanan</a>
        </div>
        @endif
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">Nama Penerima</th>
                <th scope="col">Status</th>
                <th scope="col">Waktu</th>
              </tr>
            </thead>
            <tbody>
            @foreach($order as $item)
              <tr>
                <td>{{ $loop->index+1 }}</td>
                <td>{{ $item->name }}</td>
                <td class={{ $item->status=="Delivery"?"bg-warning":($item->status=="Dine-in"?"bg-success":($item->status=="Take Away"?"bg-info":"bg-secondary")) }}>{{ $item->status }}</td>
                <td><a href="{{ route('pesanan.show', $item->id) }}">{{ $item->created_at }}</a></td>
              </tr>
              @endforeach
            </tbody>
          </table>
    </div>
</div>
@endsection