@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    // $about = Cache::get('about');
    $about = DB::table('about')->select()->first();
?>
<!-- 
<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="{{url('')}}">Trang chủ</a></li>
                        <li><a href="{{url('lien-he')}}" class="active">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="map-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div id="googleMap">{!! $setting->iframemap !!}</div>
            </div>
        </div>
    </div>
</div>

<div class="contact-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <div class="contact-info">
                    <h3>Thông tin liên hệ</h3>
                    <ul>
                        <li>
                            <i class="fa fa-map-marker"></i>
                            <span>Địa chỉ</span>
                            {{$setting->address}}                          
                        </li>
                        <li>
                            <i class="fa fa-envelope"></i>
                            <span>Điện thoại</span>
                            <a href="tel:{{$setting->phone}}">{{$setting->phone}} </a>
                        </li>
                        <li>
                            <i class="fa fa-mobile"></i>
                            <span>Email</span>
                            <a href="mailto:{{$setting->email}}" title="">{{$setting->email}}</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                <form class="contact-form" method="post" action="{{ route('postContact') }}">
                    {{ csrf_field() }}
                    <h3><i class="fa fa-envelope-o"></i>Để lại tin nhắn</h3>
                    <div class="row">
                        <div class="col-lg-6">
                            <input type="text" name="name" placeholder="Họ và tên (*)" required="required" />
                        </div>
                        <div class="col-lg-6">
                             <input type="text" name="phone" placeholder="Số điện thoại (*)" required="required" />
                        </div>
                    </div>
                    <div class="single-form-3">
                        
                        <input type="email" name="email" placeholder="Email (*)" required="required" />
                    </div>
                    <div class="single-form-3">
                        <textarea name="content" placeholder="Tin nhắn..." cols="30" rows="10"></textarea>
                        <input type="submit" value="Gửi">
                    </div>
                </form> 
            </div>
        </div>
    </div>
</div> -->

<div class="breadcrumbs-section plr-200 mb-80">
    <div class="breadcrumbs overlay-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="breadcrumbs-inner">
                        <h1 class="breadcrumbs-title">Liên hệ</h1>
                        <ul class="breadcrumb-list">
                            <li><a href="{{url('')}}">Trang chủ</a></li>
                            <li>Liên hệ</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMBS SETCTION END -->

<!-- Start page content -->
<section id="page-content" class="page-wrapper">

    <!-- ADDRESS SECTION START -->
    <div class="address-section mb-80">
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-xs-12">
                    <div class="contact-address box-shadow">
                        <i class="zmdi zmdi-pin"></i>
                        <h6>{{$setting->address}}</h6>
                        <!-- <h6>Thanh Xuân, Hà Nội</h6> -->
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="contact-address box-shadow">
                        <i class="zmdi zmdi-phone"></i>
                        <h6><a href="tel:{{$setting->hotline}}">{{$setting->hotline}}</a></h6>
                        <h6><a href="tel:{{$setting->phone}}">{{$setting->phone}}</a></h6>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="contact-address box-shadow">
                        <i class="zmdi zmdi-email"></i>
                        <h6><a href="{{$setting->email}}">{{$setting->email}}</a></h6>
                        <!-- <h6><a href="mailto:support@gco.vn">info@gco.vn</a></h6> -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ADDRESS SECTION END --> 
    
    <!-- GOOGLE MAP SECTION START -->
    <div class="google-map-section">
        <div class="container-fluid">
            <div class="google-map plr-185">
                <div id="googleMap"></div>
            </div>
        </div>
    </div>
    <!-- GOOGLE MAP SECTION END -->
    
    <!-- MESSAGE BOX SECTION START -->
    <div class="message-box-section mt--50 mb-80">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="message-box box-shadow white-bg">
                        <form id="contact-form" action="{{route('postContact')}}" method="post">
                            {{csrf_field()}}
                            <div class="row">
                                <div class="col-md-12">
                                    <h4 class="blog-section-title border-left mb-30">Form liên hệ</h4>
                                </div>
                                <div class="col-md-6">
                                    <input type="text" required="required" name="name" placeholder="Tên của bạn...">
                                </div>
                                <div class="col-md-6">
                                    <input type="email" required="required" name="email" placeholder="Email của bạn...">
                                </div>
                                <div class="col-md-6">
                                    <input type="text" name="subject" placeholder="Tiêu đề">
                                </div>
                                <div class="col-md-6">
                                    <input type="tel" name="phone" required="required" placeholder="Điện thoại của bạn...">
                                </div>
                                <div class="col-md-12">
                                    <textarea class="custom-textarea" name="content" placeholder="Tin nhắn..."></textarea>
                                    <button class="submit-btn-1 mt-30 btn-hover-1" type="submit">Gửi tin nhắn</button>
                                </div>
                            </div>
                        </form>
                        <p class="form-messege"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- MESSAGE BOX SECTION END --> 
</section>
@endsection
