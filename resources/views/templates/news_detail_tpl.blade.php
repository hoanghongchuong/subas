@extends('index')
@section('content')

<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>
<div class="breadcrumbs-section plr-200 mb-80">
    <div class="breadcrumbs overlay-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="breadcrumbs-inner">
                        <h1 class="breadcrumbs-title">{{$news_detail->name}}</h1>
                        <ul class="breadcrumb-list">
                            <li><a href="{{url('')}}">Trang chủ</a></li>
                            <li>{{$news_detail->name}}</li>
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

    <!-- BLOG SECTION START -->
    <div class="blog-section mb-50">
        <div class="container">
            <div class="row">
                <div class="col-md-9 col-xs-12">
                    <div class="blog-details-area">
                        <!-- blog-details-photo -->
                        <div class="blog-details-photo bg-img-1 p-20 mb-30">
                            <img src="{{asset('upload/news/'.$news_detail->photo)}}" alt="{{$news_detail->name}}">
                            
                        </div>
                        <!-- blog-details-title -->
                        <h2 class="blog-details-title mb-30">{{$news_detail->name}}</h2>
                        <!-- blog-description -->
                        <div class="blog-description mb-60">
                            {!!  $news_detail->content !!}  
                        </div>
                        <!-- blog-share-tags -->
                        <div class="blog-share-tags box-shadow clearfix mb-60">
                            <div class="blog-share f-left">
                                <p class="share-tags-title f-left">Chia sẻ</p>
                                <p class="news-social">
                                    <div class="addthis_toolbox addthis_default_style" style="margin-top:10px;">
                                        <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                        <a class="addthis_button_tweet"></a>
                                        <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                        <a class="addthis_counter addthis_pill_style"></a>
                                    </div>
                                    <script type="text/javascript">var addthis_config = {"data_track_addressbar":false};</script>
                                    <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52843d4e1ff0313a"></script>
                                </p>
                            </div>
                        </div>
                        <!-- comments on t this post -->
                        <div class="post-comments mb-60">
                            <h4 class="blog-section-title border-left mb-30">Nhận xét sản phẩm</h4>
                            <!-- single-comments -->
                            <div class="fb-comments" data-href="{{url('tin-tuc/'.$news_detail->alias.'.html')}}" data-width="100%" data-numposts="2"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12">
                    <!-- widget-categories -->
                    <aside class="widget widget-categories box-shadow mb-30">
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
                    <aside class="widget widget-product box-shadow mb-30">
                        <h6 class="widget-title border-left mb-20">Sản phẩm bán chạy</h6>
                        <!-- product-item start -->
                        @foreach($hotProducts as $item)
                        <div class="product-item">
                            <div class="product-img">
                                <a href="{{url('san-pham/'.$item->alias.'.html')}}">
                                    <img src="{{asset('upload/product/'.$item->photo)}}" alt=""/>
                                </a>
                            </div>
                            <div class="product-info">
                                <h6 class="product-title">
                                    <a href="{{url('san-pham/'.$item->alias.'.html')}}">{{$item->name}}</a>
                                </h6>
                                <h3 class="pro-price">{{number_format($item->price)}}</h3>
                            </div>
                        </div>
                        @endforeach
                        <!-- product-item end -->                               
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- BLOG SECTION END -->             

</section>
@endsection
