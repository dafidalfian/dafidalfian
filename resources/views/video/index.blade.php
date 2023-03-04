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

            <!-- pengulangan -->
            @foreach($videos as $video)
            <div class="col-lg-6 col-md-6 mb-5 shadow galeri">
              <div class="member" data-aos="zoom-in" data-aos-delay="100">
                <div class="pic">
                  <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/{{ $video->video }}?rel=0" allowfullscreen></iframe>
                  </div>
                </div>
                <!-- teks -->
                <div class="member-info">
                  <h4>{{$video->judul}}</h4>
                  <span>{{$video->keterangan}}</span>
                </div>
              </div>
            </div>
            @endforeach
            <!-- Paginate -->
            <div class="col-md-12">
              <br><br>
              <hr>
                  <p class="text-center">
                    {{ $videos->links() }}
                  </p>
              </div>
            </div>
            <!-- end Paginate -->
          </div>
        </div>
      </div>
    </div>
  </div>
</section>