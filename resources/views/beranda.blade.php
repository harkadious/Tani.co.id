@extends('layouts.app')

@section('content')
<script>
    $(function(){
        $('.carousel-265696').carousel({
            interval: 2000
        });
    $('.carousel-control.right').trigger('click');
    });
</script>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="carousel slide" id="carousel-265696" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li class="active" data-slide-to="0" data-target="#carousel-265696">
                    </li>
                    <li data-slide-to="1" data-target="#carousel-265696">
                    </li>
                    <li data-slide-to="2" data-target="#carousel-265696">
                    </li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="http://www.jokosusilo.com/wp-content/uploads/2009/09/petani-indonesia.jpg" style="width:1200px;height: 500px"  />
                        <div class="carousel-caption">
                            <h4>
                                Pencerdasan pertanian di Indonesia
                            </h4>
                            <p>
                                Kecerdasan pertanian di Indonesia sangatlah penting karena Indonesia sendiri adalah negara agraria dengan kondisi tanah dan air yang sangat mendukung.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="https://jihhaur.files.wordpress.com/2012/11/mg_0506_wp.jpg" style="width:1200px;height: 500px"  />
                        <div class="carousel-caption">
                            <h4>
                                Pemilihan dan Penanaman bibit unggul
                            </h4>
                            <p>
                                Pemilihan bibit unggul adalah kunci utama dari kesuksesan pertanian, dengan adanya bibit yang unggul maka akan diperoleh hasil pertanian yang maksimal.
                            </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="http://img14.deviantart.net/8b35/i/2011/016/8/6/___senyum_ambarawa____by_karkaz-d37ayve.jpg" style="width:1200px;height: 500px"  />
                        <div class="carousel-caption">
                            <h4>
                                Perawatan yang Efisien
                            </h4>
                            <p>
                                Perawatan serta pemupukan yang baik dan benar akan menghasilkan hasil yang unggul dalam kualitas maupun kuantitas.
                            </p>
                        </div>
                    </div>
                </div> <a class="left carousel-control" href="#carousel-265696" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#carousel-265696" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>

            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h2><u>What is Tani.co.id?</u></h2>
                    <p>
                    <u>Tani.co.id</u> memberikan sebuah terobosan baru di bidang pertanian Indonesia. Aplikasi web ini memberikan segala informasi terkait dengan tata cara bertani yang baik dan benar. Aplikasi ini juga <strong>memberikan informasi</strong> mengenai <strong>pemilihan bibit yang unggul</strong> dan <strong>penjualan yang benar</strong>.</p>
                    <p>Tani.co.id juga <strong>memberikan sebuah wadah kepada para petani Indonesia</strong> untuk berdiskusi secara online berbasis client-server dengan petani – petani diseluruh Indonesia. Jadi <strong>petani bisa berbagi pengetahuan, permasalahan, dan solusi</strong> yang tepat untuk berbagai permasalahan yang pernah dialami.</p>
                    <p>Dengan adanya Tani.co.id, <strong>petani menjadi lebih pintar dalam mengolah lahan pertanian</strong> menjadi lebih baik dan benar.
                    </p>
                </div>
            </div>

    <div class="container" style="background-color: black">
    <h2 class="text-center" style="color: white"><u>Meet Our Team</u></h2>
    <br>
        <div class="row" style="color: white">
            <div class="col-md-4">
                <img class="card-img-top img-fluid" src="{{ asset('img/brama.jpg') }}" alt="">
                <div class="card-block">
                    <h4 class="card-title text-center">Brama Diwangkara</h4>
                    <p class="card-text text-center">Tani.co.id UI Designer</p>
                </div>
                <div class="card-footer text-center">
                    <a href="#" class="fa fa-lg fa-google-plus"></a>
                </div>
            </div>
            <div class="col-md-4">
                <img class="card-img-top img-fluid" src="{{ asset('img/iqbal.jpg') }}" alt="">
                <div class="card-block">
                    <h4 class="card-title text-center">Iqbal Mabruri</h4>
                    <p class="card-text text-center">Tani.co.id Project Manager</p>
                </div>
                <div class="card-footer text-center">
                    <a href="#" class="fa fa-lg fa-google-plus"></a>
                </div>
            </div>
            <div class="col-md-4">
                <img class="card-img-top img-fluid" src="{{ asset('img/fajar.jpg') }}" alt="">
                <div class="card-block">
                    <h4 class="card-title text-center">Fajar Maulana Firdaus</h4>
                    <p class="card-text text-center">Tani.co.id Developer</p>
                </div>
                <div class="card-footer text-center">
                    <a href="#" class="fa fa-lg fa-google-plus"></a>
                </div>
            </div>
        </div>
        <br>
    </div>

<br>

    <div class="container" style="background-color: black">
        <h2 class="text-center" style="color: white"><u>Contact Us</u></h2>
        <div class="row text-center">
            <div class="col-md-12" style="color: white">
                <iframe width="600" height="450" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=place_id:ChIJK35aGRL61y0RA8HDW5aLo6o&key=AIzaSyBqAVUDI5gi-R9F7YE_09K-wuNXTPQytTE" allowfullscreen></iframe>
                <address>
                    <br>Jl. Raya ITS
                    <br>Keputih, Sukolilo, Kota SBY
                    <br>Jawa Timur 60111
                    <br>
                </address>
                <address>
                    <abbr title="Phone">Phone:</abbr> (031) 5994251
                    <br>
                    <abbr title="Email">E-mail:</abbr> <a href="mailto:ndutank46@gmail.com">ndutank46@gmail.com</a>
                </address>
            </div>
        </div>
    </div>

</div>
@endsection
