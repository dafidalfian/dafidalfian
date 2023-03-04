<section class="team bg-light">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 order-1 order-lg-2 hero-img" data-aos="zoom-out" data-aos-delay="300">
        <div class="kotak">
          <div class="row" data-aos="fade-left">
            <div class="col-md-12 text-center mt-5">
              <h1>{{$title}}</h1>
              <hr>
            </div>

            
              <?php foreach($galeris as $galeri) { ?>
          <div class="col-lg-4 col-md-6 mb-5 shadow galeri">
            <div class="member" data-aos="zoom-in" data-aos-delay="100">
              <div class="pic"><img src="{{ asset('public/upload/image/'.$galeri->gambar) }}" class="card-img-top" alt=""></div>
              <div class="member-info">
                <h4><?php echo strip_tags($galeri->judul_galeri) ?></h4>
                <span><?php echo $galeri->nama_kategori_galeri ?></span>
              </div>
            </div>
          </div>
          <?php } ?>

          <div class="col-md-12 justify-content-center">
            <br><br>
            <hr>
                <p class="text-center">
                  {{ $galeris->links() }}
                </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>