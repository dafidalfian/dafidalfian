<link href="http://inews.themepk.com/inews-v2.1.1_demo/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!--Animate css-->
    <!-- Navigation css-->
    <!-- youtube css -->
    <!-- font awesome -->
    <!-- weather-icons -->
    <!-- owl transitions -->
    <!-- style css -->
    <link href="{{asset('public/ui_alas/assets/css/custom.css')}}" rel="stylesheet">

<div class="wrapper">

    <div class="container">
    <div class="post-inner">
                                    <!--post header-->
            <div class="post-head">
                <h2 class="title"><strong>Latest</strong> articles</h2>
            </div>
            <!-- post body -->
            <div class="post-body">
    <!-- isi postingan -->
    @foreach($beritas as $berita)
    <div class="news-list-item articles-list">
                    <div class="img-wrapper">
                        <a href="{{ asset('berita/detail/'.$berita->slug_berita) }}" class="thumb"><img src="{{ asset('public/upload/image/thumbs/'.$berita->gambar) }}" alt="" class="card-img-top"></a>
                    </div>
                    <div class="post-info-2">
                        <h4><a href="{{ asset('berita/detail/'.$berita->slug_berita) }}" class="title"><?php  echo $berita->judul_berita ?></a></h4>
                        <ul class="authar-info">
                            <li><i class="bi bi-clock"></i> <?php echo date('d M Y',strtotime($berita->tanggal_publish)) ?></li>
                            <li class="like"><a href="#"><i class="bi bi-pen"></i>{{$berita->nama}}</a></li>
                        </ul>
                        <p class=""><?php echo \Illuminate\Support\Str::limit(strip_tags($berita->isi), 350, $end='...') ?></p>
                    </div>
                </div>
                @endforeach
            </div> <!-- /. post body -->
            <!--Post footer-->
        </div>
    </div>
</div>