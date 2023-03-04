@include('layout.headdua')
@include('layout.header')
<?php 
$site = DB::table('konfigurasi')->first();
?>

<section class="padd-section">

      <div class="container" data-aos="fade-up">
        <div class="section-title text-center">

          <p class="separator text-success">Layanan Kami</p>
        </div>

        <div class="row" data-aos="fade-up" data-aos-delay="100">

          <!-- foreach -->
          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="data:image/jpeg;base64,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" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Belakang Rumah</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="{{asset('public/ui_alas/assets/img/alas2.png')}}" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Rumput Sintetis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>

          <div class="col-md-4 mb-3">
            <div class="card shadow ">
              <div class="inner">
                <img src="https://i1.wp.com/hidupsimpel.com/wp-content/uploads/2017/10/taman-atas-rumah.jpg?fit=600%2C364&ssl=1" alt="img" class="card-img-top">
              </div>
              <div class="card-body border-bottom">
                <h4><a href="">Taman Minimalis</a></h4>
                <p class="card-text"></p>
                <span><i class="bi bi-clock"></i> 2 July 2022</span>
                <a class="float-right readmore" href="">Read more ...</a>
              </div>
            </div>
          </div>
          <!-- endforeach -->

        </div>
      <div class="text-center">
          {{$coba->links()}}
      </div>
      </div>
    </section>

@include('layout.footer')