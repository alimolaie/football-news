<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostDetails.aspx.cs" Inherits="mihan_news.PostDetails" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
        
        
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

    <title>قالب اخبار</title>

    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
    <link href="assets/css/jquery-ui.css" rel="stylesheet">


    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/owl.carousel.min.css" rel="stylesheet">


    <!-- Main css -->
    <link href="assets/css/main.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
    
<form runat="server">


<div class="header-top white-bg">
    <div class="container">
        <div class="row">
            <div class="col-xl-2 col-lg-2 col-md-3 col-sm-6">
                
            </div>
            <div class="col-xl-5 col-lg-4 col-md-4 col-sm-6">
                
            </div>
            <div class="col-xl-3 col-lg-5 col-md-4 col-sm-6 right-txt">
                <div class="single-header-top">
                    <div class="social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-xl-2 col-lg-1 col-md-1 col-sm-6 ">
                <div class="single-header-top last ">
                    <ul>
                        <li><a href="login.aspx" ><i class="fa fa-lock"></i>حساب کاربری</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div><!--/Header Top-->
    

<!--Header Area-->
<header class="header-area gradient-bg-1">
    <nav class="navbar navbar-expand-lg main-menu">
        <div class="container">

            <a class="navbar-brand" href="index-2.html"><img src="assets/images/logo-2.png" class="d-inline-block align-top" alt=""></a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="ناوبری را تغییر دهید">
                <span class="menu-toggle"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-5">
                    <li class="nav-item"><a class="nav-link" href="category-5.html">صفحه اصلی</a></li>
                   
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> دسته بندی خبر</a>
                        <ul class="dropdown-menu">
                            <asp:Repeater ID="RepCatMenu" runat="server">
                                <ItemTemplate>
                            <li><a class="dropdown-item" href="category.aspx?category_id=<%#Eval("id") %>"><%#Eval("category_name") %></a></li>
                                    </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </li>
                   
                </ul>
               
            </div>
        </div>
    </nav>
</header><!--/Header Area-->






<!--Content Section-->
<section class="section-padding-2">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-12">
                                     <asp:FormView ID="FormView1" runat="server">
                         <ItemTemplate>
                <div class="post-details">
   
                    <div class="post-img">
             <asp:Image ID="img1" runat="server"
ImageUrl='<%#Eval("image") %>' Width="600" Height="300"></asp:Image>
                     
                    </div>
                 <p><%#Eval("title") %></p>
                    <br />
                      <p><%#Eval("long_description") %>></p>
                    <div class="share">
                        <span>اشتراک گذاری:</span>
                        <a href="#" class="facebook-bg"><i class="fa fa-facebook"></i>1.3K +</a>
                        <a href="#" class="twitter-bg"><i class="fa fa-twitter"></i>2.5K +</a>
                        <a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i>1.1K +</a>
                        <a href="#" class="instagram-bg"><i class="fa fa-instagram"></i>3.3K +</a>
                    </div>
                    <div class="author">
                        <div class="row">
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3">
                                <a href="#">
                                    <img src="assets/images/author.png" alt="">
                                </a>
                            </div>
                            <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                                <h3><a href="#">کاربر راجان</a></h3>
                                <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p>
                                <div class="social">
                                    <a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a>
                                    <a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
                                    <a href="#" class="instagram-bg"><i class="fa fa-instagram"></i></a>
                                    <a href="#" class="pinterest-bg"><i class="fa fa-pinterest-p"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="related-post mb-50">
                        <h4>پست مرتبط</h4>
                        <div class="row">
                            <div class="col-xl-5">
                                <div class="single-post">
                                    <a href="#"><img src="assets/images/post/5.jpg" alt=""></a>
                                    <div class="post-inside-content">
                                        <div class="category-tag"><a href="#" class="mint-bg">اخبار</a></div>
                                        <h2><a href="#">تجارت چشمگیر افزایش یافت</a></h2>
                                        <div class="post-meta">
                                            <a href="#" class="date">25 دی 1398</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-5 offset-xl-2">
                                <div class="single-post">
                                    <a href="#"><img src="assets/images/post/7.jpg" alt=""></a>
                                    <div class="post-inside-content">
                                        <div class="category-tag"><a href="#" class="yellow-bg">ورزش ها</a></div>
                                        <h2><a href="#">تجارت چشمگیر افزایش یافت</a></h2>
                                        <div class="post-meta">
                                            <a href="#" class="date">25 دی 1398</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                
                </div>
                             </ItemTemplate>
                         </asp:FormView>
            </div>
        </div>
    </div>
</section><!--/Content Section-->

<!--Footer Area-->
<footer class="footer-area section-padding-2 dark-overlay" style="background: url('assets/images/footer.jpg') no-repeat center / cover;">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-widget">
                    <a href="#" class="footer-logo"><img src="assets/images/logo-2.png" alt=""></a>
                    <p>لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.</p>
                    <div class="social">
                        <a href="#" class="cl-facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="cl-twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="cl-youtube"><i class="fa fa-youtube-play"></i></a>
                        <a href="#" class="cl-pinterest"><i class="fa fa-pinterest-p"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-widget">
                    <h3>آخرین اخبار</h3>
                    <div class="single-list-post">
                        <div class="list-post-img">
                            <a href="#"><img src="assets/images/post/5.jpg" alt=""></a>
                        </div>
                        <div class="list-post-content">
                            <a href="#" class="cl-mint">کسب و کار</a>
                            <h4><a href="#">پخش مستقیم را به صورت زنده در سایت مشاهده کنید</a></h4>
                            <div class="post-date">25 دی 1398</div>
                        </div>
                    </div>
                    <div class="single-list-post">
                        <div class="list-post-img">
                            <a href="#"><img src="assets/images/post/4.jpg" alt=""></a>
                        </div>
                        <div class="list-post-content">
                            <a href="#" class="cl-primary">سیاست</a>
                            <h4><a href="#">پخش مستقیم را به صورت زنده در سایت مشاهده کنید</a></h4>
                            <div class="post-date">25 دی 1398</div>
                        </div>
                    </div>
                    <div class="single-list-post">
                        <div class="list-post-img">
                            <a href="#"><img src="assets/images/post/3.jpg" alt=""></a>
                        </div>
                        <div class="list-post-content">
                            <a href="#" class="cl-yellow">طبیعت</a>
                            <h4><a href="#">پخش مستقیم را به صورت زنده در سایت مشاهده کنید</a></h4>
                            <div class="post-date">25 دی 1398</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-widget">
                    <h3>دسترسی سریع</h3>
                    <div class="single-quick-link">
                        <div class="category-tag">
                            <a href="#" class="cl-yellow">ورزش ها</a>
                        </div>
                        <h4><a href="#">بیایید بازی فوتبال را در این زمینه شروع کنیم. این یک واقعیت طولانی است</a></h4>
                    </div>
                    <div class="single-quick-link">
                        <div class="category-tag">
                            <a href="#" class="cl-primary">متن</a>
                        </div>
                        <h4><a href="#">بیایید بازی فوتبال را در این زمینه شروع کنیم. این یک واقعیت طولانی است</a></h4>
                    </div>
                    <div class="single-quick-link">
                        <div class="category-tag">
                            <a href="#" class="cl-mint">آبگرم</a>
                        </div>
                        <h4><a href="#">بیایید بازی فوتبال را در این زمینه شروع کنیم. این یک واقعیت طولانی است</a></h4>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="footer-widget">
                    <h3>دسته بندی ها</h3>
                    <div class="site-category">
                        <ul>
                            <li><a href="#">سیاست جهانی </a> <span>52</span></li>
                            <li><a href="#">ورزش </a> <span>15</span></li>
                            <li><a href="#">فناوری </a> <span>48</span></li>
                            <li><a href="#">علم </a> <span>36</span></li>
                            <li><a href="#">تاریخ </a> <span>54</span></li>
                            <li><a href="#">جهانی سازی </a> <span>32</span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer><!--/Footer Area-->

<!--Copyright-->
<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <p>© Amirh</p>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <ul>
                    <li><a href="#">سلب مسئولیت</a></li>
                    <li><a href="#">حریم خصوصی</a></li>
                    <li><a href="#">تبلیغات</a></li>
                    <li><a href="#">با ما تماس بگیرید</a></li>
                </ul>
            </div>
        </div>
    </div>
</div><!--Copyright-->



<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/jquery-migrate.js"></script>

<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/owl.carousel.min.js"></script>

<script src="assets/js/magnific-popup.min.js"></script>
<script src="assets/js/imagesloaded.pkgd.min.js"></script>
<script src="assets/js/isotope.pkgd.min.js"></script>

<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/wow.min.js"></script>
<script src="assets/js/scrollUp.min.js"></script>

<script src="assets/js/plugin.js"></script>
<script src="assets/js/script.js"></script>
  </form>
</body>
</html>
