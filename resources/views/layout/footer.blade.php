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
<footer class="bg-success" id="kontak">

  <div class="container pt-5">
    <div class="row">
      <div class="col-md-6 text-center">
        <a href="" class="navbar-brand">
          <img src="{{asset('public/ui_alas/assets/img/design-logo-alas3.png')}}" class="d-inline-block align-top" width="250px" height="130px">
        </a>
        <p  style="text-align: justify;">Adalah ahli jasa spesialis taman dan maintenance sejak tahun 1974. Kami mengerjakan berbagai macam konsep danmodel landscape masa kini serta mainatenance landscape dan berbagai macam layaanan sesuai dengan kebutuhan keinginan anda.</p>
      </div>
      <div class="col-md-3 pt-3">
        <h5 class="hijau"><i class="fas fa-briefcase"> </i>&nbsp; LAYANAN KAMI</h5>
        <hr class="bg-success">

        @foreach($nav_kategori_produk as $nkp)
        <li><a href="{{ asset('produk/kategori/'.$nkp->slug_kategori_produk) }}" style="color: white;">{{$nkp->nama_kategori_produk}}</a></li>
        @endforeach
      </div>

      <div class="col-md-3 pt-3">
        <h5 class="hijau"><i class="fas fa-home"> </i> &nbsp;ALAMAT</h5>
        <hr class="bg-success">
        <div class="embed-responsive embed-responsive-16by9">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3955.3419825943306!2d112.72746301477646!3d-7.53763079456366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7ddc47dc08769%3A0x1bc2510fc2510df4!2sSPESIALIS%20LANDSCAPE%20%26%20KOLAM%20KOI%2Ftukang%20taman%20Sidoarjo!5e0!3m2!1sid!2sid!4v1649976385986!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade">
          </iframe>
        </div>
        <br>
        <p>
          <i class="fas fa-map-marker-alt"></i>&nbsp; Dusun Buaran RT01/RW08 Keboguyang - Jabon - Sidoarjo - 61276 - JawaTimur - Indonesia
        </p>
        <p>
          <i class="fas fa-phone"></i> &nbsp; 0812-3396-7919
        </p>
        <p>
          <i class="fas fa-envelope"></i> &nbsp; achmadilandscape@gmail.com
        </p>
      </div>
    </div>
  </div>
  

  <div class="text-center pt-3 pb-3">
    <div class="sosmed">
      <a href="https://www.youtube.com/channel/UCwtiYBx3z1TbWgBY_MFiGJw" target="_blank" class="p-1 circle"><i class="fab fa-youtube fa-3x" style="color: red"> </i> </a>
                <a href="https://www.instagram.com/jasa_tamanjawatimur/" target="_blank" class="p-1 circle"><i class="fab fa-instagram fa-3x" style="color: #ff0055"> </i> </a>
                <a href="https://www.facebook.com/alaslandscape/" target="_blank" class="p-1 circle"><i class="fab fa-facebook fa-3x" style="color: #0000FF"> </i> </a>
                <a href="https://api.whatsapp.com/send?phone=6281233967919&text=Halo%20*CV.Achmadi Landscape Sejahtera.co.id* mohon info layanan terbaiknya ...." target="_blank" class="p-1 circle"><i class="fab fa-whatsapp fa-3x" style="color: #00802b"></i></a>
    </div>
    <hr size="20">
    <div class="copyright">
      <p class="fs">Copyright &copy; CV. Achmadi Landscape Sejahtera 2022.</p>
    </div>
  </div>


</footer>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a>
  <!-- <div id="preloader"></div> -->

  <!-- Vendor JS Files -->
  <script src="{{asset('public/ui_alas/assets/vendor/jquery/jquery.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/jquery.easing/jquery.easing.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/venobox/venobox.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/waypoints/jquery.waypoints.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/counterup/counterup.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/owl.carousel/owl.carousel.min.js')}}"></script>
  <script src="{{asset('public/ui_alas/assets/vendor/aos/aos.js')}}"></script>

  <!-- Template Main JS File -->
  <script src="{{asset('public/ui_alas/assets/js/main.js')}}"></script>
    <script src="{{asset('public/ui_alas/assets/js/owl.carousel.js')}}"></script>
  <script>
      $('.owl-carousel').owlCarousel({
        loop:true,
        margin:10,
        nav:true,
        responsive:{
            0:{
                items:1
            },
            600:{
                items:3
            },
            1000:{
                items:5
            }
        }
    })
    </script>

</body>

</html>