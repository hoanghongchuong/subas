<?php
	$slider = DB::table('slider')->select()->where('status',1)->where('com','gioi-thieu')->orderBy('created_at','desc')->get();
?>
@if(isset($slider))
	<!-- <div class="slider-area">
		<div class="slider-active">
			@foreach($slider as $key => $item)
			<div class="single-slider">
				<div class="slider-img">
					<a href="{{$item->link}}"><img src="{{asset('upload/hinhanh/'.$item->photo)}}" alt="slider" /></a>
				</div>
				<div class="slider-content @if($key==1) {{'text-center'}} @elseif($key==0) {{'slider-content-2'}} @endif">
					<h1>{{$item->name}} {{$key}}</h1>
					<h2>{!! $item->mota !!}</h2>
					<a href="#" title="">Mua ngay</a>
				</div>
			</div>
			@endforeach
		</div>
	</div> -->
	<div class="slider-area slider-2">
        <div class="bend niceties preview-2">
            <div id="nivoslider-2" class="slides">   
                <img src="{{asset('public/img/slider/slider-2/slider-1.jpg')}}" alt="" title="#slider-direction-1"  />
                <img src="{{asset('public/img/slider/slider-2/slider-1.jpg')}}" alt="" title="#slider-direction-2"  />
                <img src="{{asset('public/img/slider/slider-2/slider-1.jpg')}}" alt="" title="#slider-direction-3"  />
                <img src="{{asset('public/img/slider/slider-2/slider-1.jpg')}}" alt="" title="#slider-direction-4"  />
                <img src="{{asset('public/img/slider/slider-2/slider-1.jpg')}}" alt="" title="#slider-direction-5"  />
            </div>
            <!-- ===== direction 1 ===== -->
            <div id="slider-direction-1" class="slider-direction">
                <div class="slider-content-1">
                    <div class="title-container">
                        <div class="wow rotateInDownLeft" data-wow-duration="2s" data-wow-delay="0.5s">
                            <h6 class="slider2-title-1">Giá tốt: 866.000</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <h1 class="slider2-title-2">smart phone mới</h1>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">
                            <h2 class="slider2-title-3">Samsung grand 6</h2>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s">
                            <p class="slider2-title-4">There are many variations of passages of Lorem Ipsum availables, but the majority have suffered alteration in some form.</p>
                        </div>
                        <div class="slider-button wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.5s">
                            <a href="single-product-left-sidebar.html" class="button extra-small button-black">
                                <span class="text-uppercase">Mua ngay</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- layer 1 -->
                <div class="slider-content-1-image">
                    <div class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="layer-1-1">
                            <img src="{{asset('img/slider/slider-2/layer-1.png')}}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- ===== direction 2 ===== -->
            <div id="slider-direction-2" class="slider-direction">
                <div class="slider-content-2">
                    <div class="title-container">
                        <div class="wow rotateInDownLeft" data-wow-duration="2s" data-wow-delay="0.5s">
                            <h6 class="slider2-title-1">Giá tốt: $866</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <h1 class="slider2-title-2">smart phone mới</h1>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">
                            <h2 class="slider2-title-3">Samsung grand 6</h2>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s">
                            <p class="slider2-title-4">There are many variations of passages of Lorem Ipsum availables, but the majority have suffered alteration in some form.</p>
                        </div>
                        <div class="slider-button wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.5s">
                            <a href="single-product-left-sidebar.html" class="button extra-small button-black">
                                <span class="text-uppercase">Mua ngay</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- layer 1 -->
                <div class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                    <div class="layer-1-1 layer-2-1">
                        <img src="{{asset('img/slider/slider-2/layer-2.png')}}" alt="" />
                    </div>
                </div>
            </div>
            <!-- ===== direction 3 ===== -->
            <div id="slider-direction-3" class="slider-direction">
                <div class="slider-content-1">
                    <div class="title-container">
                        <div class="wow rotateInDownLeft" data-wow-duration="2s" data-wow-delay="0.5s">
                            <h6 class="slider2-title-1">Giá tốt : $866</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <h1 class="slider2-title-2">smart phone mới</h1>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">
                            <h2 class="slider2-title-3">Samsung grand 6</h2>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s">
                            <p class="slider2-title-4">There are many variations of passages of Lorem Ipsum availables, but the majority have suffered alteration in some form.</p>
                        </div>
                        <div class="slider-button wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.5s">
                            <a href="#" class="button extra-small button-black">
                                <span class="text-uppercase">Mua ngay</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- layer 1 -->
                <div class="slider-content-1-image">
                    <div class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="layer-1-1">
                            <img src="{{asset('img/slider/slider-2/layer-1.png')}}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- ===== direction 4 ===== -->
            <div id="slider-direction-4" class="slider-direction">
                <div class="slider-content-2">
                    <div class="title-container">
                        <div class="wow rotateInDownLeft" data-wow-duration="2s" data-wow-delay="0.5s">
                            <h6 class="slider2-title-1">Giá tốt : $866</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <h1 class="slider2-title-2">smart phone mới</h1>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">
                            <h2 class="slider2-title-3">Samsung grand 6</h2>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s">
                            <p class="slider2-title-4">There are many variations of passages of Lorem Ipsum availables, but the majority have suffered alteration in some form.</p>
                        </div>
                        <div class="slider-button wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.5s">
                            <a href="#" class="button extra-small button-black">
                                <span class="text-uppercase">Mua ngay</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- layer 1 -->
                <div class="wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
                    <div class="layer-1-1 layer-2-1">
                        <img src="img/slider/slider-2/layer-2.png" alt="" />
                    </div>
                </div>
            </div>
            <!-- ===== direction 5 ===== -->
            <div id="slider-direction-5" class="slider-direction">
                <div class="slider-content-1">
                    <div class="title-container">
                        <div class="wow rotateInDownLeft" data-wow-duration="2s" data-wow-delay="0.5s">
                            <h6 class="slider2-title-1">Giá tốt: 866.000</h6>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1s">
                            <h1 class="slider2-title-2">smart phone mới</h1>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="1.5s">
                            <h2 class="slider2-title-3">Samsung grand 6</h2>
                        </div>
                        <div class="wow fadeInUp" data-wow-duration="1s" data-wow-delay="2s">
                            <p class="slider2-title-4">There are many variations of passages of Lorem Ipsum availables, but the majority have suffered alteration in some form.</p>
                        </div>
                        <div class="slider-button wow fadeInUp" data-wow-duration="1s" data-wow-delay="2.5s">
                            <a href="#" class="button extra-small button-black">
                                <span class="text-uppercase">Mua ngay</span>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- layer 1 -->
                <div class="slider-content-1-image">
                    <div class="wow fadeInLeft" data-wow-duration="1s" data-wow-delay="0.5s">
                        <div class="layer-1-1">
                            <img src="{{asset('img/slider/slider-2/layer-1.png')}}" alt="" />
                        </div>
                    </div>
                </div>
            </div>
            <!-- ==== -->
        </div>
    </div>

@endif