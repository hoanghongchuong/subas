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
						<li><a href="javascript:;" class="active">Thanh toán</a></li>
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
					<h1>Thanh toán</h1>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- entry-header-area-end -->

<!-- checkout-area-start -->
<div class="checkout-area mb-70">
	<div class="container">
		<div class="row">
			<form action="{{route('postOrder')}}" method="post">
			{{csrf_field()}}
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="checkbox-form">						
						<h3>Chi tiết hóa đơn</h3>
						<div class="row">
							<div class="col-lg-12 col-xs-12 ">
								<div class="checkout-form-list">
									<label>Họ và tên <span class="required">*</span></label>										
									<input type="text" name="full_name" required="required" placeholder="">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="checkout-form-list">
									<label>Địa chỉ <span class="required">*</span></label>
									<input type="text" name="address" required="required" placeholder="Số nhà - Ngõ/Ngách - Đường - Quận/Huyện - Tỉnh/Thành phố">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="checkout-form-list">
									<label>Email </label>										
									<input type="email" name="email" placeholder="">
								</div>
							</div>
							<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
								<div class="checkout-form-list">
									<label>Điện thoại  <span class="required">*</span></label>										
									<input type="tel" name="phone" required="required" placeholder="">
								</div>
							</div>							
						</div>												
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
					<div class="your-order">
						<h3>Đơn hàng của bạn</h3>
						<div class="your-order-table table-responsive">
							<table>
								<thead>
									<tr>
										<th class="product-name">Sản phẩm</th>
										<th class="product-total">Tổng tiền</th>
									</tr>							
								</thead>
								<tbody>
									@foreach($product_cart as $item)
									<tr class="cart_item">
										<td class="product-name">
											{{$item->name}} <strong class="product-quantity"> × {{$item->qty}}</strong>
										</td>
										<td class="product-total">
											<span class="amount">{{ number_format($item->qty * $item->price) }}</span>
										</td>
									</tr>
									@endforeach
								</tbody>
								<tfoot>
									
									<tr class="order-total">
										<th>Thành tiền</th>
										<td><strong><span class="amount">{{number_format($total)}}</span></strong>
										</td>
									</tr>								
								</tfoot>
							</table>
						</div>
						<div class="payment-method">
							<div class="order-button-payment">
								<input type="submit" value="Đặt hàng">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</div>


@endsection
