@include('layout.headdua')
@include('layout.header')

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
<style>
    #tololbanget{
        background-color: white;
        padding: 1em;
        margin-bottom: 2em;
        color: grey;
        border-radius: 10px;
        box-shadow: 0 0 1mm 1px;
    }
</style>
<div class="container mt-5" id="tololbanget">
            <div class="row">
                <div class="col-lg-8">
                    <h4><a href="{{url('/')}}">Home</a> > <a href="{{url('tentang-kami')}}">Tentang kami</a></h4>
                    <!-- Post content-->
                    <article class="border-top">
                        <!-- Post header-->
                        <header class="mb-4">
                            <!-- Post title-->
                            <h1 class="fw-bolder mb-1 ">Tentang Kami CV. Achmadi Landscape Sejahtera</h1>
                            <!-- Post meta content-->
                            <div class="text-muted fst-italic mb-2">Penulis : Anas Firmansyah (Admin)</div>
                            <!-- Post categories-->
                            <a class="badge badge-secondary text-decoration-none link-light" href="">Single post</a>
                        </header>

<section class="border-bottom">
            <img src="{{asset('public/ui_alas/assets/img/external/tentang-cv-alas.jpg')}}"
              class="img-fluid shadow-2-strong rounded mb-4" alt="No Image" />

            <div class="row align-items-center mb-2">
              <div class="col-lg-6 text-lg-start mb-1 m-lg-0">
                <span class="h5">Share: </span>
                <button type="button" class="btn btn-primary px-3" style="background-color: #3B5998;">
                  <i class="fab fa-facebook"></i>
                </button>
                <button type="button" class="btn btn-primary px-3" style="background-color: #DC143C;">
                  <i class="fab fa-instagram"></i>
                </button>
                <button type="button" class="btn btn-primary px-3" style="background-color: #55ACEE;">
                  <i class="fab fa-twitter"></i>
                </button>
                <button type="button" class="btn btn-primary px-3" style="background-color: #22B822;">
                  <i class="fab fa-whatsapp"></i>
                </button>
              </div>

              <div class="col-lg-6 text-center text-lg-end">
              </div>
            </div>
</section>

                        <!-- Post content-->
                        <section class="mb-5">
                            <p class="fs-5 mb-4">{!!$site->tentang!!}</p>
                        </section>
                    </article>
                    <!-- Comments section-->
                    <section class="mb-5">
                        <div class="card bg-light">
                            <div class="card-body">
                                <!-- Comment form-->
                                <form class="mb-4"><textarea class="form-control" rows="3" placeholder="Join the discussion and leave a comment!"></textarea></form>
                                <!-- Comment with nested comments-->
                               <div class="d-flex mb-4">
                                    <!-- Parent comment-->
                                    <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                    <div class="ms-3">
                                        <div class="fw-bold">Nama Komentar</div>
                                        If you're going to lead a space frontier, it has to be government; it'll never be private enterprise. Because the space frontier is dangerous, and it's expensive, and it has unquantified risks.
                                        <!-- Child comment 1-->
                                        <div class="d-flex mt-4">
                                            <div class="flex-shrink-0"><img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="..." /></div>
                                            <div class="ms-3">
                                                <div class="fw-bold">Balas komentar</div>
                                                And under those conditions, you cannot establish a capital-market evaluation of that enterprise. You can't get investors.
                                            </div>
                                        </div>
                                        <!-- Child comment 2-->
                                       
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>
                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4 shadow">
                        <div class="card-header">Search</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Enter Search..." aria-label="Enter search term..." aria-describedby="button-search" />
                                <button class="btn btn-primary" id="button-search" type="button"><i class="bi bi-search"></i></button>
                            </div>
                        </div>
                    </div>
                    <!-- Categories widget-->
                    <div class="card mb-4">
                        <div class="card-header">Kategori Layanan</div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <ul class="list-unstyled mb-0">
                                      @foreach($nav_kategori_produk as $nkp)
                                        <li><i class="bi bi-chevron-double-right"></i> <a href="{{ asset('produk/kategori/'.$nkp->slug_kategori_produk) }}">{{$nkp->nama_kategori_produk}}</a></li>
                                      @endforeach
                                    </ul>
                                </div>
                                <!-- list lagi -->
                            </div>
                        </div>
                    </div>
                    <!-- Side widget-->
                    <!-- <div class="card mb-4">
                        <div class="card-header">Tempat Iklan</div>
                        <div class="card-body">
                            <img src="https://achmadilandscapsejahtera.co.id/public/img/1.jpg" class="w-100">
                        </div>
                    </div> -->
                </div>
            </div>
        </div>

@include('layout.footer')