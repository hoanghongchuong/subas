<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <?php 
        $setting = Cache::get('setting'); 
        $product_list = Cache::get('product_list');
    ?>
    <meta http-equiv="content-language" content="vi" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE" />
    <meta name="robots" content="noindex, nofollow" />
    <meta name='revisit-after' content='1 days' /> 
    <title><?php if(!empty($title)) echo $title; else echo $setting->title; ?></title>
    <meta name="author" content="{!! $setting->website !!}" />
    <meta name="copyright" content="GCO" />
    <meta name="keywords" content="<?php if(!empty($keyword)) echo $keyword; else echo $setting->keyword; ?>" />
    <meta name="description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />
    <meta http-equiv="content-language" content="vi" />
    <meta property="og:title" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:locale" content="vi_VN"/>
    <meta property="og:url" content="{!! $setting->website !!}" />
    <meta property="og:site_name" content="<?php if(!empty($title)) echo $title; else echo $setting->title; ?>" />
    <meta property="og:type" content="website" />
    <meta property="og:image" content="<?php if(!empty($img_share)) echo $img_share; else echo asset('upload/hinhanh/'.$setting->photo) ?>" />
    <meta property="og:description" content="<?php if(!empty($description)) echo $description; else echo $setting->description; ?>" />

    <meta name="googlebot" content="all, index, follow" />
    <meta name="geo.region" content="VN" />
    <meta name="geo.position" content="10.764338, 106.69208" />
    <meta name="geo.placename" content="Hà Nội" />
    <meta name="Area" content="HoChiMinh, Saigon, Hanoi, Danang, Vietnam" />
    <link rel="shortcut icon" href="{!! asset('upload/hinhanh/'.$setting->favico) !!}" type="image/png" />
    
    <link rel="stylesheet" href="{{asset('public/css/bootstrap.min.css')}}">
    <!-- Nivo-slider css -->
    <link rel="stylesheet" href="{{asset('public/lib/css/nivo-slider.css')}}">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="{{asset('public/css/core.css')}}">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="{{asset('public/css/shortcode/shortcodes.css')}}">
    <!-- Theme main style -->
    <link rel="stylesheet" href="{{asset('public/style.css')}}">
    <!-- Responsive css -->
    <link rel="stylesheet" href="{{asset('public/css/responsive.css')}}">
    <!-- User style -->
    <link rel="stylesheet" href="{{asset('public/css/custom.css')}}">
    <!-- Style customizer (Remove these two lines please) -->
    <!-- <link rel="stylesheet" href="css/style-customizer.css">
    <link href="#" data-style="styles" rel="stylesheet"> -->
    <!-- Modernizr JS -->
    <script src="{{asset('public/js/vendor/modernizr-2.8.3.min.js')}}"></script>
   
    <script type="text/javascript">
        function baseUrl(){
            return '<?php echo url('/'); ?>';
        }
        window.token = '{{ csrf_token() }}';
        window.urlAddCart = '{{ route("addProductToCartAjax") }}';
        
   </script>

</head>
<body class="">
       <div class="wrapper">
        @include('templates.layout.header')
        @yield('content')
        @include('templates.layout.footer')
        </div> 

    {{ $setting->codechat }}
    {{ $setting->analytics }}
    @yield('script')
     <!-- jquery latest version -->
    <script src="{{asset('public/js/vendor/jquery-3.1.1.min.js')}}"></script>
    <!-- Bootstrap framework js -->
    <script src="{{asset('public/js/bootstrap.min.js')}}"></script>
    <!-- jquery.nivo.slider js -->
    <script src="{{asset('public/lib/js/jquery.nivo.slider.js')}}"></script>
    <!-- All js plugins included in this file. -->
    <script src="{{asset('public/js/plugins.js')}}"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="{{asset('public/js/main.js')}}"></script>
</body>
</html>