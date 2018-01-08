<?php
    $setting = Cache::get('setting');
    $menu_top = Cache::get('menu_top');
    $cateProducts = Cache::get('cateProducts');
?>
 <!-- START HEADER AREA -->
<header class="header-area header-wrapper header-2">
    @if(@$com !='index')
    <div class="header-top-bar plr-185">
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 hidden-xs">
                    <div class="text-center call-us">
                        <p class="mb-0 roboto"><a title="" href="tel:{{$setting->phone}}">{{$setting->phone}}</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    @endif
    <!-- header-middle-area -->
    <div id="sticky-header" class="header-middle-area plr-185">
        <div class="container-fluid">
            <div class="full-width-mega-dropdown">
                <div class="row">
                    <!-- logo -->
                    <div class="col-md-2 col-sm-6 col-xs-12">
                        <div class="logo">
                            <a href="{{url('')}}">
                                <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="main logo">
                            </a>
                        </div>
                    </div>
                    <!-- primary-menu -->
                    <div class="col-md-8 hidden-sm hidden-xs">
                        <nav id="primary-menu">
                            <ul class="main-menu text-center">
                                <li><a href="{{url('')}}">Trang chủ</a></li>
                                <li class="mega-parent"><a href="{{url('san-pham')}}">Sản phẩm</a></li>
                                <li><a href="{{url('tin-tuc')}}">Tin tức</a></li>
                                <li>
                                    <a href="{{url('gioi-thieu')}}">Giới thiệu</a>
                                </li>
                                <li>
                                    <a href="{{url('lien-he')}}">Liên hệ</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!-- header-search & total-cart -->
                    <div class="col-md-2 col-sm-6 col-xs-12">
                        <div class="search-top-cart  f-right">
                            <!-- header-search -->
                            <div class="header-search header-search-2 f-left">
                                <div class="header-search-inner">
                                   <button class="search-toggle">
                                    <i class="zmdi zmdi-search"></i>
                                   </button>
                                    <form action="{{route('search')}}" method="get">
                                        {{csrf_field()}}
                                        <div class="top-search-box">
                                            <input type="txtSearch" required="required" placeholder="Tìm kiếm...">
                                            <button type="submit">
                                                <i class="zmdi zmdi-search"></i>
                                            </button>
                                        </div>
                                    </form> 
                                </div>
                            </div>
                            <!-- total-cart -->
                            <div class="total-cart total-cart-2 f-left">
                                <div class="total-cart-in">
                                    <div class="cart-toggler">
                                        <a href="#">
                                            <span class="cart-quantity">02</span><br>
                                            <span class="cart-icon">
                                                <i class="zmdi zmdi-shopping-cart-plus"></i>
                                            </span>
                                        </a>                            
                                    </div>
                                    <ul>
                                        <li>
                                            <div class="top-cart-inner your-cart">
                                                <h5 class="text-capitalize">Giỏ hàng</h5>
                                            </div>
                                        </li>
                                        <!-- <li>
                                            <div class="total-cart-pro">
                                                
                                                <div class="single-cart clearfix">
                                                    <div class="cart-img f-left">
                                                        <a href="single-product-left-sidebar.html">
                                                            <img src="img/cart/1.jpg" alt="Cart Product" />
                                                        </a>
                                                        <div class="del-icon">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-close"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="cart-info f-left">
                                                        <h5 class="text-capitalize">
                                                            <a href="single-product-left-sidebar.html">Tên sản phẩm</a>
                                                        </h5>
                                                        <h6 class="pro-price">869.000</h6>
                                                    </div>
                                                </div>
                                             
                                                <div class="single-cart clearfix">
                                                    <div class="cart-img f-left">
                                                        <a href="single-product-left-sidebar.html">
                                                            <img src="img/cart/1.jpg" alt="Cart Product" />
                                                        </a>
                                                        <div class="del-icon">
                                                            <a href="#">
                                                                <i class="zmdi zmdi-close"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="cart-info f-left">
                                                        <h5 class="text-capitalize">
                                                            <a href="single-product-left-sidebar.html">Tên sản phẩm</a>
                                                        </h5>
                                                        <h6 class="pro-price">869.000</h6>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top-cart-inner subtotal">
                                                <h4 class="text-uppercase g-font-2">
                                                    Tổng tiền  =  
                                                    <span>500.000</span>
                                                </h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top-cart-inner view-cart">
                                                <h4 class="text-uppercase">
                                                    <a href="cart.html">Giỏ hàng</a>
                                                </h4>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="top-cart-inner check-out">
                                                <h4 class="text-uppercase">
                                                    <a href="cart.html">Thanh toán</a>
                                                </h4>
                                            </div>
                                        </li> -->
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- END HEADER AREA -->
<!-- START MOBILE MENU AREA -->
<div class="mobile-menu-area hidden-lg hidden-md">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="mobile-menu">
                    <nav id="dropdown">
                        <ul>
                            <li><a href="{{url('')}}">Trang chủ</a></li>
                            <li><a href="{{url('san-pham')}}">Sản phẩm</a></li>
                            <li><a href="{{url('tin-tuc')}}">Tin tức</a></li>
                            <li><a href="{{url('gioi-thieu')}}">Giới thiệu</a></li>
                            <li><a href="{{url('lien-he')}}">Liên hệ</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MOBILE MENU AREA -->