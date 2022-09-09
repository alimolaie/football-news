<%@ Page Title="میهن نیوز" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="mihan_news._Default" %>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="shortcut icon" href="assets/images/favicon.ico" type="image/x-icon">
    <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
    <title>میهن نیوز</title>
    <!-- Bootstrap -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="assets/css/magnific-popup.css" rel="stylesheet">
    <link href="assets/css/jquery-ui.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet">
    <link href="assets/css/owl.carousel.min.css" rel="stylesheet">
    <link href="assets/css/custom.css" rel="stylesheet" />
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
<form id="form1" runat="server">
<!-- Preloader -->
<div class="preloader">
    <div class="spinner">
        <span class="spinner-rotate"></span>
    </div>
</div><!-- /Preloader -->

<!--Header Top-->
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
            <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">ورود</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
         <i class="fa fa-user" aria-hidden="true"></i>

          
            <asp:TextBox ID="userName" runat="server" CssClass="form-control validate" placeholder="نام کاربری"></asp:TextBox>
        
        </div>

        <div class="md-form mb-4">
         <i class="fa fa-lock" aria-hidden="true"></i>

         
            <asp:TextBox ID="passwordTxt" runat="server" TextMode="Password" CssClass="form-control validate" placeholder="رمز عبور"></asp:TextBox>
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
    
          <asp:Button ID="btn_login" runat="server" Text="ورود" CssClass="btn btn-primary" OnClick="btn_login_Click" />
             <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="نام کاربری را وارد کنید" ControlToValidate="userName" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="رمز عبور را وارد کنید" ControlToValidate="passwordTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="messageLb" runat="server" ForeColor="Red" Visible="False"></asp:Label>
      </div>
    </div>
  </div>
</div>
            <div class="col-xl-2 col-lg-1 col-md-1 col-sm-6 ">
                <div class="single-header-top last ">
                    <ul>
                        <li><a href="login.aspx"  data-toggle="modal" data-target="#modalLoginForm"><i class="fa fa-lock"></i>حساب کاربری</a></li>

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



<!--Hero Section-->
<section class="hero-area gray-bg">
    <div class="container">
        <div class="row mt-2">
             <asp:Repeater ID="repSlider1" runat="server">
            <ItemTemplate>
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
               
                   
                <div class="single-post">
               <asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="390" Height="198"></asp:Image>
                    <div class="post-inside-content">
                   <a href="PostDetails.aspx?id=<%#Eval("id") %>">  <h2><asp:Label ID="lblNewsSlider1Title" runat="server" Text='<%# Eval("title") %>' ForeColor="White" /></h2></a>  
                  
                    </div>
                </div>
                        

            </div>
                 </ItemTemplate>
           </asp:Repeater>
        </div>
        <div class="row mt-1">
            <asp:Repeater ID="repSlider2" runat="server">
                <ItemTemplate>
            <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                <div class="single-post">
                   <asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="300" Height="100"></asp:Image>
                    <div class="post-inside-content">
                     <a href="PostDetails.aspx?id=<%#Eval("id") %>">        <h2><asp:Label ID="lblNewsSlider2Title" runat="server" Text='<%# Eval("title") %>' ForeColor="White" Font-Size="Small" /></h2></a>
                  
                    </div>
                </div>
               
            </div>
         
             </ItemTemplate>
                </asp:Repeater>
            
        </div>
   </div>
</section><!--Hero Section-->

<!--Content Section-->
<section class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-xl-8 col-lg-8 col-md-8 col-sm-6">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="section-title">
                            <h2><a href="#">تازه ها</a></h2>
                           
                        </div>
                    </div>
                    <asp:Repeater ID="RepNewNews" runat="server">
                        <ItemTemplate>
                    <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12">
                        <div class="single-post-2">
                            <a href="#">
                              <asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="280" Height="280"></asp:Image>

                            </a>
                            <div class="post-inside-content">
                                <h2><a href="PostDetails.aspx?id=<%#Eval("id") %>"><asp:Label ID="lblNewsNews" runat="server" Text='<%# Eval("title") %>'  Font-Size="Small" /></a></h2>
                               
                            </div>
                        </div>
                    </div>
                            </ItemTemplate>
                    </asp:Repeater>
                  
                </div>


                <div class="row">
                    <div class="col-xl-12">
                        <div class="section-title">
                            <h2><a href="#">اخبار محبوب</a></h2>
                        </div>
                    </div>
                </div>

                <div class="post-carousel owl-carousel mb-30">
                    <div class="row">
                        <asp:Repeater ID="repPopular1" runat="server">
                            <ItemTemplate>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="single-post">
                                <a href="#"><asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="380" Height="320"></asp:Image></a>
                                <div class="post-inside-content">
                                   
                                    <h2><a href="PostDetails.aspx?id=<%#Eval("id") %>"><asp:Label ID="lblNewsNews" runat="server" Text='<%# Eval("title") %>'  Font-Size="Small" /></a></h2>
                                    
                                </div>
                            </div>
                        </div>
                                </ItemTemplate>
                            </asp:Repeater>
                    </div>
                    <div class="row">
                   
                <asp:Repeater ID="repPopular2" runat="server">
                            <ItemTemplate>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                            <div class="single-post">
                                <a href="#"><asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="380" Height="320"></asp:Image></a>
                                <div class="post-inside-content">
                                   
                                    <h2><a href="PostDetails.aspx?id=<%#Eval("id") %>"><asp:Label ID="lblNewsNews" runat="server" Text='<%# Eval("title") %>'  Font-Size="Small" /></a></h2>
                                    
                                </div>
                            </div>
                        </div>
                                </ItemTemplate>
                            </asp:Repeater>
                    </div>
                </div>

               

              

                <div class="row">
                    <div class="col-xl-12">
                        <div class="section-title">
                            <h2><a href="#">اخبار بیشتر</a></h2>
                        </div>
                    </div>
                         <asp:Repeater ID="repNewsMain" runat="server">
                             <ItemTemplate>
                    <div class="col-xl-12">
                        <div class="single-post-3">
                            <div class="list-post-img">
                               <asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="170" Height="170"></asp:Image>
                             
                            </div>
                            <div class="list-post-content">
                                <h4><a href="PostDetails.aspx?id=<%#Eval("id") %>"><asp:Label ID="lblNewsNews" runat="server" Text='<%# Eval("title") %>'  Font-Size="Medium" ForeColor="#DB00B7"/></a></h4>
                                <p><asp:Label ID="Label1" runat="server" Text='<%# Eval("short_description") %>'  Font-Size="Medium"  ForeColor="#000000"/></p>
                              
                            </div>
                        </div>
                    </div>
                                 </ItemTemplate>
                    </asp:Repeater>
                    <div class="col-xl-12 centered">
                        <a class="bttn-mid btn-emt w-100" href="posts.aspx">بارگذاری بیشتر</a>
                    </div>
                </div>

            </div>
            <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6">
                <aside class="site-sidebar">
                    <div class="single-sidebar">
                        <div class="section-title">
                            <h3><a href="#">دسته بندی ها</a></h3>
                        </div>
                        <div class="site-category">
                            <ul>
                                <asp:Repeater ID="RepshowCategory1" runat="server">
                                    <ItemTemplate>
                                <li><a href="category.aspx?category_id=<%#Eval("id") %>"> <%#Eval("category_name") %></a></li>
                                        </ItemTemplate>
                                </asp:Repeater>
                               
                            </ul>
                        </div>
                    </div>
                
                
           <div class="single-sidebar">
                        <div class="section-title">
                            <h3>مارو در شبکه های اجتماعی دنبال کنید</h3>
                        </div>
                        <div class="sidebar-content">
                            <div class="sidebar-social">
                                <a href="#" class="facebook-bg"><i class="fa fa-facebook"></i>فیس بوک </a>
                                <a href="#" class="twitter-bg"><i class="fa fa-twitter"></i>توییتر </a>
                                <a href="#" class="instagram-bg"><i class="fa fa-instagram"></i>اینستاگرام</a>
                                <a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i>لینکدین</a>
                            </div>
                        </div>
                    </div>
                    
               
                </aside>
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