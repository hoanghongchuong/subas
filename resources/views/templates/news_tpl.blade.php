@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    // dd($nguoidung);
?>

<div class="breadcrumbs-section plr-200 mb-80">
    <div class="breadcrumbs overlay-bg">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="breadcrumbs-inner">
                        <h1 class="breadcrumbs-title">Tin tức</h1>
                        <ul class="breadcrumb-list">
                            <li><a href="{{url('')}}">Trang chủ</a></li>
                            <li>Tin tức</li>
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

    <!-- BLOG SECTION START -->
    <div class="blog-section mb-50">
        <div class="container">
            <div class="row">
                @foreach($tintucs as $item)
                <!-- blog-item start -->
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="blog-item">
                        <img src="{{asset('upload/news/'.$item->photo)}}" alt="{{$item->name}}">
                        <div class="blog-desc">
                            <h2 class="blog-title"><a href="{{url('tin-tuc/'.$item->alias.'.html')}}">{{$item->name}}</a></h2>
                            <p class="mota">{!! $item->mota !!}</p>
                            <div class="read-more">
                                <a href="{{url('tin-tuc/'.$item->alias.'.html')}}">Đọc thêm</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
                <!-- blog-item end -->
                
                
            </div>
        </div>
    </div>
    <!-- BLOG SECTION END -->             

</div>
<!-- End page content -->

@endsection
