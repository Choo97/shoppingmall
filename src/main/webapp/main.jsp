<!doctype html>
<html lang="en">
  <head>
    <%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.108.0">
    <title>Carousel Template · Bootstrap v5.3</title>

<link href="./css/bootstrap.min.css" rel="stylesheet">
<link href="./css/carousel.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <style>
    
   /*     navbar */
   body > header > nav { 
      position: relative;
         top: 0; 
         left: 0; 
       z-index: 101; 
         background: #fff; 
/*        border-bottom: 1px solid #e5e5e5; */
    }
    
    
/*     자세히 보기 버튼 border*/
    #myCarousel > div.carousel-inner > div.carousel-item.active > div > div > p:nth-child(4) > a {
       border: 1px solid black;
    }
    #myCarousel > div.carousel-inner > div.carousel-item.active > div > div > p:nth-child(3) > a{
       border: 1px solid black;
    }
    #myCarousel > div.carousel-inner > div.carousel-item.active > div > div > p:nth-child(2) > a{
       border: 1px solid black;
    }
    #myCarousel > div.carousel-inner > div.carousel-item.active > div > div > p:nth-child(1) > a{
       border: 1px solid black;
    }
    
    body > header > nav {
         height: 80px;
    }
       
/*     메인페이지 Carousel 크기 조정 */
    #myCarousel > div.carousel-inner{
       height: 685px;
/*        position: relative; */
       margin-top: -45px;
    }
    
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;z
        
        
        -moz-user-select: none;
        user-select: none;
        
/*         background-image: url('https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/12/20/20221213_final_SENSUAL-NUDE-BALM-GLOSS_main_KV_pc.jpg'); */
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
      
    </style>

    
    <!-- Custom styles for this template -->
  </head>
  <body>
    
<header>
<!--     aria-currnet="" 페이지 이름 명명 -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark" style="height: 90px; background: linear-gradient(0deg, rgba(255,255,255,1) 4%, rgba(51,51,51,1) 88%, rgba(51,51,51,1) 100%);">
    <div class="container-fluid">
      <a class="navbar-brand"  href="#" style="font-size: 32px; margin-left: 132px; font-weight: bold; ">H E R A</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>   
      <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav me-auto mb-2 mb-md-0">
          <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-config= "autoClose" data-bs-toggle="dropdown" aria-expanded="false" style=" margin-left: 41px; color: white; font-size: 18px;font-weight: 600;">
            헤라 스토리
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#" style="">브랜드 소개</a></li>
            <li><a class="dropdown-item" href="#">오시는 길</a></li>
            <li><hr class="dropdown-divider"></li>
          </ul>
        </li><li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 18px;font-weight: 600; margin-left: 27px">
            메이크업
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">페이스</a></li>
            <li><a class="dropdown-item" href="#">립</a></li>
<!--             <li><hr class="dropdown-divider"></li> -->
            <li><a class="dropdown-item" href="#">아이</a></li>
          </ul>
        </li><li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: white; font-size: 18px;font-weight: 600; margin-left: 27px">
            스킨케어
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">클렌징</a></li>
            <li><a class="dropdown-item" href="#">스킨/로션</a></li>
<!--             <li><hr class="dropdown-divider"></li> -->
            <li><a class="dropdown-item" href="#">마스크/팩</a></li>
          </ul>
        </li>
          <li class="nav-item">
             <a class="nav-link active" href="#" style="font-size: 18px;font-weight: 600; margin-left: 27px">고객센터</a>
          </li>
        </ul>
        
        <i class="fa-light fa-arrow-right-to-bracket"></i>
        <button type="button" class="btm_login" id="img_btn"><img src="<i class="fa-light fa-diagram-venn"></i>"/></button>
        <button type="button" class="btm_myPage" id="img_btn"><img src="이미지경로"></button>
        <button type="button" class="btm_cart"  id="img_btn" style="margin-right: 273px"><img  src="이미지경로"></button>
        
<!--          <form class="d-flex" role="search"> -->
<!--           <button class="btn btn-outline-success" type="submit">버튼</button> -->
<!--         </form> -->
      </div>
    </div>
  </nav>
</header>

<main>

  <div id="myCarousel" class="carousel carousel-dark slide carousel-fade" data-bs-ride="carousel" data-bs-interval="5000">
    <div class="carousel-indicators">
<!--       <button type="button" data-bs-pause="hover" ></button> -->
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="3" aria-label="Slide 4"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item active">
         <img src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/12/20/20221213_final_SENSUAL-NUDE-BALM-GLOSS_main_KV_pc.jpg">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption text-end" >
            <h1 style="font-weight: bold;">다음날까지 편안하고 자유로운</h1>
              <h1 style="font-weight: bold;">맑은 컬러의 수분립밤</h1>
            <p style="margin-top:20px;">NEW 센슈얼 누드 밤</p>
            <p><a class="btn btn-lg btn-dark btn btn-outline-light" href="#" style="font-weight:bold;">자세히 보기</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
         <img src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/09/13/20220923_final_HERA_main_KV_pc_02.jpg">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption">
              <h1 style="font-weight: bold;">내 피부처럼 가벼운 벨벳티 스킨</h1>
            <p style="margin-top:20px;">블랙 쿠션</p>
            <p><a class="btn btn-lg btn-dark btn btn-outline-light" href="#" style="font-weight:bold;">자세히 보기</a></p>
          </div>
        </div>
      </div>
       <div class="carousel-item">
         <img src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/12/13/20221212_final_SILKY-STAY-FOUNDATION_main_KV_pc.jpg">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption text-start">
           <h1 style="font-weight: bold;">아침부터 저녁까지 매끈한 피부결</h1>
            <p style="margin-top:20px;">실키 스테이 파운데이션</p>
            <p><a class="btn btn-lg btn-dark btn btn-outline-light" href="#" style="font-weight:bold;">자세히 보기</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
         <img src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/09/19/20220919_final_SENSUAL-POWDER-MATTE-LIPSTICK_main_KV_pc.jpg">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"/></svg>
        <div class="container">
          <div class="carousel-caption text-start">
            <h1 style="font-weight: bold;">세상에 없던 NEW COMFORT MLBB</h1>
            <p style="margin-top:20px;">센슈얼 파우더 매트 립스틱</p>
            <p><a class="btn btn-lg btn-dark btn btn-outline-light" href="#" style="font-weight:bold;">자세히 보기</a></p>
          </div>
        </div>
      </div>
      
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2 class="fw-normal">Heading</h2>
        <p>Some representative placeholder content for the three columns of text below the carousel. This is the first column.</p>
        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2 class="fw-normal">Heading</h2>
        <p>Another exciting bit of representative placeholder content. This time, we've moved on to the second column.</p>
        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"/><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
        <h2 class="fw-normal">Heading</h2>
        <p>And lastly this, the third column of representative placeholder content.</p>
        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">And yes, this is the last block of representative placeholder content. Again, not really intended to be actually read, simply here to give you a better view of what this would look like with some actual content. Your content.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>
      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-end"><a href="#">Back to top</a></p>
    <p>&copy; 2017–2022 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
</main>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="./js/bootstrap.bundle.min.js"></script>

      
  </body>
</html>