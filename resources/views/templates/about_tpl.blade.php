@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
?>
<div class="breadcrumbs-section plr-200 mb-80">
    <div class="breadcrumbs overlay-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="breadcrumbs-inner">
                        <h1 class="breadcrumbs-title">Giới thiệu</h1>
                        <ul class="breadcrumb-list">
                            <li><a href="{{url('')}}">Trang chủ</a></li>
                            <li>Giới thiệu</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<section id="page-content" class="page-wrapper">

 
    <div class="about-section mb-80">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    {!! $about->content !!}
                </div>
            </div>                    
          
        </div>
    </div>
    
    <div class="team-section mb-50">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-left ">
                        <h2 class="uppercase">Thành viên</h2>
                        <!-- <h6 class="mb-40">There are many variations of passages of brands available,</h6> -->
                    </div>
                </div>
            </div>                
            <div class="row">
                <div class="active-team-member">
                    <!-- team-member start -->
                    <?php $partners = DB::table('partner')->orderBy('id','desc')->get(); ?>
                    @foreach($partners as $item)
                    <div class="col-md-12">
                        <div class="team-member box-shadow bg-shape">
                            <div class="team-member-photo">
                                <img src="{{asset('upload/banner/'.$item->photo)}}" alt="">
                            </div>
                            <div class="team-member-info pt-20">
                                <h5 class="member-name"><a href="#">{{$item->name}}</a></h5>
                                <p class="member-position">{{$item->position}}</p>
                                <p class="mb-20">{!! $item->content !!}</p>
                                <!-- <ul class="footer-social">
                                    <li>
                                        <a class="facebook" href="" title="Facebook"><i class="zmdi zmdi-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a class="google-plus" href="" title="Google Plus"><i class="zmdi zmdi-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a class="twitter" href="" title="Twitter"><i class="zmdi zmdi-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a class="rss" href="" title="RSS"><i class="zmdi zmdi-rss"></i></a>
                                    </li>
                                </ul>    -->                                  
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                    
                </div>
            </div>
        </div>
    </div>
      
</section>

@endsection
