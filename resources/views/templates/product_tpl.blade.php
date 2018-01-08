@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
<div class="breadcrumbs-section plr-200 mb-80">
    <div class="breadcrumbs overlay-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="breadcrumbs-inner">
                        <h1 class="breadcrumbs-title">Danh sách sản phẩm</h1>
                        <ul class="breadcrumb-list">
                            <li><a href="{{url('')}}">Trang chủ</a></li>
                            <li>Danh sách sản phẩm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- BREADCRUMBS SETCTION END -->

<!-- Start page content -->
<div id="page-content" class="page-wrapper">

    <!-- SHOP SECTION START -->
    <div class="shop-section mb-80">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-md-push-3 col-xs-12">
                    <div class="shop-content">
                        <!-- shop-option start -->
                        <div class="shop-option box-shadow mb-30 clearfix">
                            <!-- Nav tabs -->
                            <ul class="shop-tab f-left" role="tablist">
                                <li class="active">
                                    <a href="#grid-view" data-toggle="tab"><i class="zmdi zmdi-view-module"></i></a>
                                </li>
                                <li>
                                    <a href="#list-view" data-toggle="tab"><i class="zmdi zmdi-view-list-alt"></i></a>
                                </li>
                            </ul>
                            <!-- short-by -->
                            <div class="short-by f-left text-center">
                                <span>Sắp xếp:</span>
                                <select>
                                    <option value="volvo">Mới nhất</option>
                                    <option value="saab">Saab</option>
                                    <option value="mercedes">Mercedes</option>
                                    <option value="audi">Audi</option>
                                </select> 
                            </div> 
                            <!-- showing -->
                            <div class="showing f-right text-right">
                                <!-- <span>Hiển thị: 01-09 trong 17.</span> -->
                            </div>                                   
                        </div>
                        <!-- shop-option end -->
                        <!-- Tab Content start -->
                        <div class="tab-content">
                            <!-- grid-view -->
                            <div role="tabpanel" class="tab-pane active" id="grid-view">
                                <div class="row">
                                    <!-- product-item start -->
                                    @foreach($products as $p)
                                    <div class="col-md-4 col-sm-4 col-xs-12">
                                        <div class="product-item">
                                            <div class="product-img">
                                                <a href="{{url('san-pham/'.$p->alias.'.html')}}">
                                                    <img src="{{asset('upload/product/'.$p->photo)}}" alt=""/>
                                                </a>
                                            </div>
                                            <div class="product-info">
                                                <h2 class="product-title">
                                                    <a href="{{url('san-pham/'.$p->alias.'.html')}}">{{$p->name}} </a>
                                                </h2>
                                                <h3 class="pro-price">{{number_format($p->price)}}</h3>
                                                <ul class="action-button">
                                                    <li>
                                                        <a href="#" data-toggle="modal"  data-target="#productModal" title="Quickview"><i class="zmdi zmdi-zoom-in"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="#" title="Thêm vào giỏ hàng"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                    <!-- product-item end -->
                                </div>
                            </div>
                            <!-- list-view -->
                            <div role="tabpanel" class="tab-pane" id="list-view">
                                <div class="row">
                                    <!-- product-item start -->
                                    @foreach($products as $p)
                                    <div class="col-md-12">
                                        <div class="shop-list product-item">
                                            <div class="product-img">
                                                <a href="{{url('san-pham/'.$p->alias.'.html')}}">
                                                    <img src="{{asset('upload/product/'.$p->photo)}}" alt=""/>
                                                </a>
                                            </div>
                                            <div class="product-info">
                                                <div class="clearfix">
                                                    <h2 class="product-title f-left">
                                                        <a href="{{url('san-pham/'.$p->alias.'.html')}}">{{$p->name}} </a>
                                                    </h2>
                                                    
                                                </div>
                                                <h6 class="brand-name mb-30">Tên thương hiệu</h6>
                                                <h3 class="pro-price">{{number_format($p->price)}}</h3>
                                                <p>{!! $p->mota !!}</p>
                                                <ul class="action-button">
                                                    <li>
                                                        <a href="#" data-toggle="modal"  data-target="#productModal" title="Quickview"><i class="zmdi zmdi-zoom-in"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="#" title="Thêm vào giỏ hàng"><i class="zmdi zmdi-shopping-cart-plus"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>                                        
                            </div>
                        </div>
                        <!-- Tab Content end -->
                        <!-- shop-pagination start -->
                       <!--  <ul class="shop-pagination box-shadow text-center ptblr-10-30">
                            <li><a href="#"><i class="zmdi zmdi-chevron-left"></i></a></li>
                            <li><a href="#">01</a></li>
                            <li><a href="#">02</a></li>
                            <li><a href="#">03</a></li>
                            <li><a href="#">...</a></li>
                            <li><a href="#">05</a></li>
                            <li class="active"><a href="#"><i class="zmdi zmdi-chevron-right"></i></a></li>
                        </ul> -->
                        <div class="paginates">
                            {!! $products->links() !!}
                        </div>
                        <!-- shop-pagination end -->
                    </div>
                </div>
                <div class="col-md-3 col-md-pull-9 col-xs-12">
                        <aside class="widget widget-categories box-shadow">
                            <h6 class="widget-title border-left mb-20">Danh mục</h6>
                            <div id="cat-treeview" class="product-cat">
                                <ul>
                                    <li class="closed"><a href="#">SamSung</a>
                                        <ul>
                                            <li><a href="shop-left-sidebar.html">Mobile</a></li>
                                            <li><a href="shop-left-sidebar.html">Tablet</a></li>
                                            <li><a href="shop-left-sidebar.html">Đồng hồ</a></li>
                                            <li><a href="shop-left-sidebar.html">Tai nghe</a></li>
                                            <li><a href="shop-left-sidebar.html">Thẻ nhớ</a></li>
                                        </ul>
                                    </li>                                       
                                    <li class="open"><a href="#">Apple</a>
                                        <ul>
                                            <li><a href="shop-left-sidebar.html">Mobile</a></li>
                                            <li><a href="shop-left-sidebar.html">Tab</a></li>
                                            <li><a href="shop-left-sidebar.html">Đồng hồ</a></li>
                                            <li><a href="shop-left-sidebar.html">Tai nghe</a></li>
                                            <li><a href="shop-left-sidebar.html">Thẻ nhớ</a></li>
                                        </ul>
                                    </li>
                                    <li class="closed"><a href="#">Thương hiệu nổi bật</a>
                                        <ul>
                                            <li><a href="shop-left-sidebar.html">SamSung</a></li>
                                            <li><a href="shop-left-sidebar.html">Apple</a></li>
                                            <li><a href="shop-left-sidebar.html">Nokia</a></li>
                                            <li><a href="shop-left-sidebar.html">Sony</a></li>
                                            <li><a href="shop-left-sidebar.html">HTC</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </aside>
                    <!-- widget-product -->
                    <aside class="widget-product qc">
                        <a href="#" title=""><img class="box-shadow" src="images/product/quickview.jpg" title="" alt=""></a>
                        <a href="#" title=""><img class="box-shadow" src="images/product-2/2.jpg" title="" alt=""></a>                          
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- SHOP SECTION END -->
</div>
<!-- End page content -->
@endsection
