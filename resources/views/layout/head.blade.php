<?php 
$site = DB::table('konfigurasi')->first();
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>{{$title}}</title>
  <meta name="description" content="{{ $deskripsi }}">
  <meta name="keywords" content="{{ $keywords }}">
  <meta name="author" content="{{ $site->namaweb }}">

  <!-- Favicons -->
  <link rel="shortcut icon" href="{{asset('public/admin/img/alas.png')}}">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Montserrat:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('public/ui_alas/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/icofont/icofont.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/boxicons/css/boxicons.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/venobox/venobox.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/remixicon/remixicon.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/owl.carousel/assets/owl.carousel.min.css')}}" rel="stylesheet">
  <link href="{{asset('public/ui_alas/assets/vendor/aos/aos.css')}}" rel="stylesheet">
  <link rel="stylesheet" href="{{asset('public/ui_alas/assets/css/owl.theme.default.css')}}">
  <link rel="stylesheet" type="text/css" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">

  <!-- Template Main CSS File -->
  <link href="{{asset('public/ui_alas/assets/css/style.css')}}" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Bootslander - v2.1.0
  * Template URL: https://bootstrapmade.com/bootslander-free-bootstrap-landing-page-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style>
      *{font-weight: bold;}
      footer {
        color: white;
      }
      .kotak h1{
        font-size: 22px !important;
      }

      #newsletter {
  background: rgba(0, 0, 0, 0) url("{{asset('public/ui_alas/assets/img/alas1.png')}}") no-repeat center top fixed;
  background-size: cover;
}
#newsletter .overlay {
  background: linear-gradient(rgba(255, 255, 255, 0.9) 0%, rgba(255, 255, 255, 0.2) 95%);
  height: 100%;
  width: 100%;
}
#newsletter .form-control {
  background-color: transparent;
  border: 1px solid #dddddd;
  border-radius: 0;
  color: #888;
  font-size: 11px;
  font-weight: 600;
  height: 50px;
  text-align: center;
  width: 70%;
  background: #fff;
}
@media (max-width: 575px) {
  #newsletter .form-control {
    margin-bottom: 30px;
    width: 100%;
  }
}
#newsletter .form-control:focus {
  border-color: #71c55d;
  box-shadow: none;
  outline: 0 none;
}
#newsletter .btn {
  background: #71c55d;
  border: 0;
  border-radius: 0;
  height: 50px;
  width: 30%;
  transition: 0.3s;
}
@media (max-width: 575px) {
  #newsletter .btn {
    width: 100%;
  }
}
#newsletter .btn:hover {
  background: #55b03f;
}
#newsletter .btn .fa {
  padding-right: 10px;
}
#newsletter ul {
  display: inline-block;
  margin-top: 40px;
  margin-bottom: 0;
}
#newsletter ul li {
  background: #71c55d;
  border-radius: 50px;
  float: left;
  height: 35px;
  line-height: 35px;
  margin-left: 10px;
  margin-right: 10px;
  width: 35px;
  transition: 0.3s;
  display: flex;
  align-items: center;
  justify-content: center;
}
#newsletter ul li a {
  display: flex;
  align-items: center;
  justify-content: center;
}
#newsletter ul li:hover {
  background: #55b03f;
}
#newsletter ul li i {
  color: #fff;
  line-height: 0;
}
.padd-section {
  padding-bottom: 80px;
  padding-top: 80px;
}
@media (max-width: 992px) {
  .padd-section {
    padding-top: 40px;
    padding-bottom: 40px;
  }
}
.warna-bg{
  background: linear-gradient(to right, rgba(91,134,229, .92),rgba(54,209,220, .90));
}
.jumbotron-bg{
  background-image: url("{{asset('public/ui_alas/assets/img/bg.jpg')}}");
  background-size: cover;
  background-size: 300px;
}
.inner{
  overflow: hidden;
}

.inner img {
  transition: all 1.5s ease;
}
.inner:hover img {
  transform: scale(1.5);
}
      
  </style>
</head>

<body>