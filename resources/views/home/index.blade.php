<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="{{asset('public/ui_alas/assets/img/alas1.png')}}" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('public/ui_alas/assets/img/alas2.png')}}" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="{{asset('public/ui_alas/assets/img/alas3.png')}}" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div> 
<!-- End Hero --><!-- Start main -->
<main id="main">

<!-- Layanan kami -->
<div class="jumbotron bg-light border-bottom" id="layanan-kami">
  <div class="container">
    <div class="row justify-content-center">
      <h1 class="text-success mb-5"><span class="section-title-main" style="font-size:85%;">Layanan Kami Jasa Pembuatan Taman Sidoarjo</span></h1>
    </div>
      <div class="row">
        <div class="owl-carousel owl-theme">
        @foreach($produks as $produk)
          <div class="item">
            <div class="card">
              <div class="position-absolute text-white px-1 py-1" style="background-color: rgba(0,0,0,0.7);">{{$produk->nama_kategori_produk}}</div>
              <img src="{{ asset('public/upload/image/'.$produk->gambar) }}" class="card-img-top" alt="...">
              <div class="card-body text-center">
                <h5 class="card-title">{{$produk->nama_produk}}</h5>
                <a href="{{ asset('produk/detail/'.$produk->slug_produk) }}" target="_blank" class=" card-title btn btn-success text-white">Selengkapnya ... <i class="far fa-angle-double-right"></i></a>
              </div>
            </div>
          </div>
      @endforeach
      </div>
    </div>
    <div class="col-md-12 text-center mt-2">
        <a href="{{url('/produk')}}" class="btn btn_secondary">Lihat layanan kami lainnya</a>
    </div>
    <!-- end -->
  </div>
</div>
<!-- End layanan kami -->
 <!-- ======= About Section ======= -->
<section>
    <div class="jumbotron bg-white border-bottom" id="tentang-kami">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-7" data-aos="fade-right">
            <p style="font-weight: bold;">Tentang Kami Jasa Landscape & Maintenance</p>
            <h2 class="text-success"><span class="section-title-main" style="font-size:85%; font-weight: bold;">CV. Achmadi Landscape Sejahtera</span></h2>
            <p><?php echo \Illuminate\Support\Str::limit(strip_tags($site->tentang), 419, $end='...') ?></p>
            <a href="{{url('tentang-kami')}}" target="_blank" class="btn btn-warning text-white"><i class="far fa-paper-plane"></i> Read More</a>
            <button type="submit" class="btn btn-success"><i class="fab fa-whatsapp"></i><a href="https://api.whatsapp.com/send?phone=6281233967919&text=Halo%20*CV.Achmadi Landscape Sejahtera.co.id* mohon info layanan terbaiknya ...." target="_blank" style="color: white"> Chat Whatsapp</a></button>
          </div>
          <div class="col-md-5" data-aos="fade-left">
            <img src="{{ asset('public/upload/image/'.$site->icon) }}" height="380px" class="card-img-top mt-3">
          </div>
        </div>
      </div>
    </div>
</section>
    <!-- End About Section -->

<!-- ======= Apa itu Nitrico? Section ======= -->
<section id="apa-itu-nitrico" class="about">
  <div class="container">
    <div class="col-xl-12 col-lg-12 col-md-12 text-center" data-aos="fade-up">
          <h2 class="text-success"><b>Profil {{$site->namaweb}}</b></h2>
          <p><?php echo $site->deskripsi ?></p>
          <br><br>
    </div>
    <h1 class="text-center text-success card-text mb-3"><span class="section-title-main" style="font-size:85%;">Mengapa Memilih Kami</span></h1>
    <div class="row pb-5 text-center">
            <div class="col-md-4">
                <div class="card bg-success text-white px-5 py-3 m-2">
                    <i class="fas fa-user-clock fa-3x"></i>
                    <div class="card-body">
                        <h5 class="card-title">Pengalaman Kami</h5>
                      <p class="card-text float-sm-right">Pengalaman melayani jasa pertamanan dan sudah dipercaya oleh ratusan customer selama bertahun-tahun, menjadi bukti mengapa Anda harus memilih kami.</p>
                    </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card bg-success text-white px-5 py-3 m-2">
                    <i class="fas fa-users fa-3x"></i>
                    <div class="card-body">
                      <h5 class="card-title">Team Profesional</h5>
                      <p class="card-text float-sm-right">Tenaga ahli berpengalaman yang memberikan layanan mendengarkan dan memberi saran dan solusi terbaik untuk kebutuhan Anda.</p>
                    </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card bg-success text-white px-5 py-3 m-2">
                    <i class="fas fa-gem fa-3x"></i>
                    <div class="card-body">
                      <h5 class="card-title">Kualitas</h5>
                      <p class="card-text float-sm-right">Untuk menjamin taman yang asri dan tahan lama, semua tanaman yang kami sediakan diambil dari bibit berkualitas dan terawat dengan baik sehingga kualitas terjamin.</p>
                    </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card bg-success text-white px-5 py-3 m-2">
                    <i class="fas fa-map-marker-alt fa-3x"></i>
                    <div class="card-body">
                      <h5 class="card-title">Survey Gratis</h5>
                      <p class="card-text float-sm-right">Gratis layanan survey lokasi dan konsultasi . Sehingga bisa memberikan kemudahan dan menemukan solusi taman.</p>
                    </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card bg-success text-white px-5 py-3 m-2">
                    <i class="fas fa-money-bill-wave fa-3x"></i>
                    <div class="card-body">
                      <h5 class="card-title">Harga Terbaik</h5>
                      <p class="card-text float-sm-right">Disini kami berikan harga terbaik yang pastinya akan sesuai dengan kualitas yang Anda dapatkan nantinya..</p>
                    </div>
                  </div>
            </div>

            <div class="col-md-4">
                <div class="card bg-success text-white px-5 py-3 m-2">
                    <i class="fas fa-box fa-3x"></i>
                    <div class="card-body">
                      <h5 class="card-title">Garansi</h5>
                      <p class="card-text float-sm-right">Bergaransi kepuasan pengerjaan yang sesuai harapan serta taman yang akan tumbuh Asri dan indah setelah beberapa bulan pengerjaan.</p>
                    </div>
                  </div>
            </div>
    </div>
  </div>
</section>
<!-- End Apa itu Nitrico? Section -->
<!-- Postingan -->
<section id="blog" class="padd-section">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">

          <p class="separator text-success">Postingan terbaru</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          @foreach($berita as $berita)
          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="{{ asset('public/upload/image/thumbs/'.$berita->gambar) }}" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="{{ asset('berita/detail/'.$berita->slug_berita) }}">{{$berita->judul_berita}}</a></h4>
                <p class="card-text"><?php echo \Illuminate\Support\Str::limit(strip_tags($berita->isi), 250, $end='...') ?></p>
                <span><i class="bi bi-pen"></i> <?php echo date('d M Y',strtotime($berita->tanggal_publish)) ?><span>
                <a class="float-right readmore" href="{{ asset('berita/read/'.$berita->slug_berita) }}">Read more ...</a>
              </div>
            </div>
          </div>
          @endforeach

        </div>
        <p class="text-center">
              <a href="{{ asset('berita') }}" class="btn btn-success"><i class="fa fa-newspaper"></i> Lihat berita lainnya...</a>
            </p>
      </div>
</section>
<!-- End postingan -->

<!-- NewsLetter -->
<section id="newsletter" class="newsletter text-center">
      <div class="overlay padd-section">
        <div class="container" data-aos="zoom-in">

          <div class="row justify-content-center">
            <div class="col-md-9 col-lg-6">
              <form class="d-flex" method="POST" action="#">
                <input type="email" class="form-control " placeholder="Email Adress" name="email">
                <button type="submit" class="btn btn-default text-white"><i class="bi bi-location-arrow"></i>Berlangganan</button>
              </form>
            </div>
          </div>

          <ul class="list-unstyled">
            <li><a href="https://www.instagram.com/jasa_tamanjawatimur" target="_blank"><i class="bi bi-instagram"></i></i></a></li>
            <li><a href="https://www.facebook.com/alaslandscape" target="_blank"><i class="bi bi-facebook"></i></a></li>
            <li><a href="https://www.youtube.com/channel/UCwtiYBx3z1TbWgBY_MFiGJw" target="_blank"><i class="bi bi-youtube"></i></a></li>
            <li><a href="https://api.whatsapp.com/send?phone=6281233967919&text=Halo%20*CV.Achmadi Landscape Sejahtera.co.id* mohon info layanan terbaiknya ...." target="_blank"><i class="bi bi-whatsapp"></i></a></li>
          </ul>

        </div>
      </div>
</section>
<!-- End newsletter -->

<section id="gallery" class="gallery mt-5 mb-5">
      <div class="container">

        <div class="section-title" data-aos="fade-up">
          <p class="text-success">Gallery portfolio</p>
        </div>

        <div class="row no-gutters" data-aos="fade-left">
          @foreach($galeris as $galeri)
          <div class="col-lg-3 col-6">
            <div class="my-2 mx-2">
            <div class="gallery-item" data-aos="zoom-in" data-aos-delay="100">
              <a href="{{ asset('public/upload/image/'.$galeri->gambar) }}" class="venobox" data-gall="gallery-item">
                <img src="{{ asset('public/upload/image/'.$galeri->gambar) }}" alt="" class="card-img-top">
              </a>
            </div>
          </div>
          </div>
          @endforeach


        </div>
        <div class="col-md-12 text-center mt-2">
      <a href="{{url('galeri')}}" class="btn btn_secondary">Lihat semua</a>
    </div>

      </div>
    </section>

</main>
