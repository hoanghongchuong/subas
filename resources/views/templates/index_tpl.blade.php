@extends('index')
@section('content')

<?php
$setting = Cache::get('setting');
$cateProducts = Cache::get('cateProducts');
$banner = DB::table('banner_content')->where('position',1)->get();
?>
@include('templates.layout.slider')
@endsection
