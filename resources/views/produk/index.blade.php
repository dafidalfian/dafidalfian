<section class="padd-section">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">

          <p class="separator text-success">Layanan Kami : {{$title}}</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          <!-- foreach -->
          @foreach($produk as $produk)
          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="{{ asset('public/upload/image/'.$produk->gambar) }}" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="{{ asset('produk/detail/'.$produk->slug_produk) }}"><?php  echo $produk->nama_produk ?></a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> <?php echo date('d M Y',strtotime($produk->tanggal_post)) ?></span>
                <a class="float-right readmore" href="{{ asset('produk/detail/'.$produk->slug_produk) }}">Read more ...</a>
              </div>
            </div>
          </div>
          @endforeach

          <!-- endforeach -->

        </div>
      <!-- paginate -->
      </div>
</section>