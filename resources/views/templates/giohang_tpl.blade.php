@extends('index')
@section('content')
<?php
    $setting = Cache::get('setting');
    $about = Cache::get('about');
?>


<div class="breadcrumbs-area mb-70">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumbs-menu">
                    <ul>
                        <li><a href="{{url('')}}">Trang chủ</a></li>
                        <li><a href="{{url('gio-hang')}}" class="active">Giỏ hàng</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- breadcrumbs-area-end -->
<!-- entry-header-area-start -->
<div class="entry-header-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="entry-header-title">
                    <h1>Giỏ hàng</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- entry-header-area-end -->
<!-- cart-main-area-start -->
<div class="cart-main-area mb-70">
    <div class="container">
        <div class="row">
            <form action="{{route('updateCart')}}" method="post" id="">
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                <div class="col-lg-12">
                   
                        <div class="table-content table-responsive">
                            <table>
                                <thead>
                                    <tr>
                                        <th class="product-thumbnail">Hình ảnh</th>
                                        <th class="product-name">Sản phẩm</th>
                                        <th class="product-price">Giá</th>
                                        <th class="product-quantity">Số lượng</th>
                                        <th class="product-subtotal">Tổng tiền</th>
                                        <th class="product-remove">Xóa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($product_cart as $key=>$product)
                                    <tr>
                                        <td class="product-thumbnail"><a href=""><img src="{{asset('upload/product/'.$product->options->photo)}}" alt="man" /></a></td>
                                        <td class="product-name"><a href="">{{$product->name}}</a></td>
                                        <td class="product-price"><span class="amount">{{number_format($product->price)}}</span></td>
                                        <td class="product-quantity">
                                            <input class="text-center qty qty-cart" type="number"  min="1" value="{{$product->qty}}" id="{{ $product->rowId }}"  name="numb[{{$key}}]">
                                        </td>
                                        <td class="product-subtotal">{{number_format($product->price * $product->qty)}}</td>
                                        <td class="product-remove"><a  id="{{$product->rowId}}" href="{{url('xoa-gio-hang/'.$product->rowId)}}"><i class="fa fa-times"></i></a></td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                   
                </div>
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                        <div class="buttons-cart mb-30">
                            <ul>
                                <li><a href="javascript:;"><button type="submit" style="background: transparent; border:none" class="text-uppercase btn-update">Cập nhật</button></a></li>
                                <li><a href="{{url('')}}">Tiếp tục mua hàng</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="cart_totals">
                            <h2>Tổng hóa đơn</h2>
                            <table>
                                <tbody>
                                    
                                    <tr class="order-total">
                                        <th>Thành tiền</th>
                                        <td>
                                            <strong>
                                                <span class="amount">{{number_format($total)}}</span>
                                            </strong>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </form>
            <div class="text-center wc-proceed-to-checkout">
                <a href="{{url('thanh-toan')}}">Thanh toán</a>
            </div>
        </div>
    </div>
</div>
<!-- cart-main-area-end -->
@endsection
