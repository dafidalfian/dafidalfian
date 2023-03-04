<?php
use Illuminate\Support\Facades\DB;
use App\Nav_model;
$site                 = DB::table('konfigurasi')->first();
// Produk
$myproduk             = new Nav_model();
$nav_kategori_produk  = $myproduk->nav_produk();
// Nav profil
$myprofil             = new Nav_model();
$nav_profil           = $myproduk->nav_profil();
?>
<header style="border-bottom: #FAFAFA 5px solid">
    <nav class="navbar navbar-expand-lg navbar-light bg-white">
      <div class="container">
      <a class="navbar-brand" href="{{url('/')}}"><img src="{{ asset('public/upload/image/'.$site->logo) }}" width="200" height="63" alt="ALAS"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="{{url('/')}}">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Profile
            </a>
             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              @foreach($nav_profil as $nav_profil)
                <a class="dropdown-item" href="{{ asset('berita/read/'.$nav_profil->slug_berita) }}">{{$nav_profil->judul_berita}}</a>
              @endforeach
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="{{url('/berita')}}">Berita</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Layanan Kami
            </a>
             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              @foreach($nav_kategori_produk as $nkp)
                <a class="dropdown-item" href="{{ asset('produk/kategori/'.$nkp->slug_kategori_produk) }}">{{$nkp->nama_kategori_produk}}</a>
              @endforeach
              <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="{{url('produk')}}">Semua Layanan</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="{{url('/tentang-kami')}}">Tentang Kami</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              Galeri
            </a>
             <div class="dropdown-menu" aria-labelledby="navbarDropdown">
              <a class="dropdown-item" href="{{url('video')}}">Video Youtube</a>
              <a class="dropdown-item" href="{{url('galeri')}}">Galeri Gambar</a>
            </div>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="{{url('kontak')}}">Kontak</a>
          </li>
          <!-- <li class="nav-item">
            <a href="" title="Form pemesanan" style="color: green;"><i class="fa fa-shopping-cart"></i> Form Order</a>
          </li> -->
        </ul>
      </div>
    </div>
    </nav>
  </header>