<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
    $cateProducts = Cache::get('cateProducts');
?>
 <footer id="footer" class="footer-area">
    <div class="footer-top">
        <div class="container-fluid">
            <div class="plr-185">
                <div class="footer-top-inner gray-bg">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="single-footer footer-about">
                                <div class="footer-logo">
                                    <img src="{{asset('upload/hinhanh/'.$setting->photo)}}" alt="">
                                </div>
                                <div class="footer-brief">
                                    <p>Địa chỉ: {{$setting->address}}</p>
                                    <p>Điện thoại: <a href="tel:{{$setting->phone}}">{{$setting->phone}}</a></p>
                                    <p>Email: <a href="mailto:{{$setting->email}}">{{$setting->email}}</a></p>
                                </div>
                                
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="single-footer">
                                <h4 class="footer-title border-left">Mạng xã hội</h4>
                                <ul class="footer-social">
                                    <li>
                                        <a class="facebook" href="{{$setting->facebook}}" title="Facebook"><i class="zmdi zmdi-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a class="google-plus" href="{{$setting->google}}" title="Google Plus"><i class="zmdi zmdi-google-plus"></i></a>
                                    </li>
                                    <li>
                                        <a class="twitter" href="{{$setting->twitter}}" title="Twitter"><i class="zmdi zmdi-twitter"></i></a>
                                    </li>
                                    <!-- <li>
                                        <a class="rss" href="" title="RSS"><i class="zmdi zmdi-rss"></i></a>
                                    </li> -->
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="single-footer">
                                <h4 class="footer-title border-left">Sản phẩm</h4>
                                <ul class="footer-menu">
                                    <li>
                                        <a href="shop-left-sidebar.html"><i class="zmdi zmdi-circle"></i><span>Sản phẩm mới</span></a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html"><i class="zmdi zmdi-circle"></i><span>Sản phẩm giảm giá</span></a>
                                    </li>
                                    <li>
                                        <a href="shop-left-sidebar.html"><i class="zmdi zmdi-circle"></i><span>Sản phẩm bán chạy</span></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom black-bg">
        <div class="container-fluid">
            <div class="plr-185">
                <div class="copyright">
                    <div class="row">
                        <div class="col-sm-12 col-xs-12">
                            <div class="text-center copyright-text">
                                <p>&copy; <a href="www.gco.vn" title="" target="_blank">Developed by GCO</a> - <a href="#" target="_blank">DevItems</a> 2017. All Rights Reserved.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- footer-area-end -->

<div id="fb-root"></div>
<script>(function(d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.6&appId=124844007858325";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>