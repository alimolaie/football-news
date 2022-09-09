<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowNews.aspx.cs" Inherits="mihan_news.admin.ShowNews" %>

<!DOCTYPE html>

<html>
<head runat="server">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>پنل مدیریت</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
 
    <link href="../assets/cms-assets/dist/css/bootstrap-theme.css" rel="stylesheet" />
  <!-- Bootstrap rtl -->
 
    <link href="../assets/cms-assets/dist/css/rtl.css" rel="stylesheet" />
  <!-- persian Date Picker -->
    <link href="../assets/css/custom.css" rel="stylesheet" />
    <link href="../assets/cms-assets/dist/css/persian-datepicker-0.4.5.min.css" rel="stylesheet" />
  <!-- Font Awesome -->
  
    <link href="../assets/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  <!-- Ionicons -->

    <link href="../assets/bower_components/Ionicons/css/ionicons.min.css" rel="stylesheet" />
  <!-- Theme style -->
    <link href="../assets/css/custom.css" rel="stylesheet" />
    <link href="../assets/cms-assets/dist/css/AdminLTE.css" rel="stylesheet" />
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->

    <link href="../assets/cms-assets/dist/css/skins/_all-skins.min.css" rel="stylesheet" />
  <!-- Morris chart -->

    <script src="../assets/bower_components/morris.js/morris.js"></script>
  <!-- jvectormap -->

    <script src="../assets/bower_components/jvectormap/jquery-jvectormap.js"></script>
  <!-- Daterange picker -->
    <link href="../assets/bower_components/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet" />
  <!-- bootstrap wysihtml5 - text editor -->

    <link href="../assets/cms-assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" />

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
    <form id="form1" runat="server">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini">پنل</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b> پنل مدیریت</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>


      

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
         
                 
         
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="https://s20.picofile.com/file/8442529326/full_2.jpg" class="user-image" alt="User Image">
              <span class="hidden-xs"><%#Eval("full_name") %></span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="https://s20.picofile.com/file/8442529326/full_2.jpg" class="img-circle" alt="User Image">

                <p>
                    <%#Eval("full_name") %>
                  <small>مدیریت کل سایت</small>
                </p>
              </li>
              <!-- Menu Body -->
              <li class="user-body">
                
                <!-- /.row -->
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">پروفایل</a>
                </div>
                <div class="pull-left">
                     <a href="#" class="btn btn-default btn-flat">خروج</a>
               </div>
              </li>
            </ul>
          </li>
         
        </ul>
      </div>
    </nav>
  </header>
  <!-- right side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-right image">
          <img src="https://s20.picofile.com/file/8442529326/full_2.jpg" class="img-circle" alt="User Image">
        </div>
        <div class="pull-right info">
          <p><%#Eval("full_name") %></p>
          <a href="#"><i class="fa fa-circle text-success"></i> آنلاین</a>
        </div>
      </div>
      
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
      
        <li class="active treeview">
          <li><a href="Dashboard.aspx"><i class="fa fa-dashboard "></i> <span>داشبرد</span></a></li>
          
       
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-list-alt"></i> <span>دسته بندی خبر ها</span>
            <span class="pull-left-container">
              <i class="fa fa-angle-right pull-left"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="ShowCategory.aspx"><i class="fa fa-circle-o"></i>نمایش دسته بندی ها</a></li>
                <li><a href="AddCategry.aspx"><i class="fa fa-circle-o"></i>افزودن دسته بندی ها</a></li>
          </ul>
        </li>
        
          
        <li class="treeview">
          <a href="#">
            <i class="fa fa-newspaper-o"></i> <span>خبر ها</span>
            <span class="pull-left-container">
              <i class="fa fa-angle-right pull-left"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="AddNews.aspx"><i class="fa fa-circle-o"></i> افزودن خبر جدید </a></li>
            <li><a href="ShowNews.aspx"><i class="fa fa-circle-o"></i> نمایش خبر ها</a></li>
          </ul>
        </li>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      نمایش خبر ها
      
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> خبر ها</a></li>

        <li class="active"> نمایش خبر ها</li>
      </ol>
    </section>
 
    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
      
        <div class="col-md-12 mt-5">
            <div class="box box-primary">
            <div class="box-header with-border">

                </div>
                 
          <div class="box">
            <div class="box-header">
              <h3 class="box-title">تمامی خبر ها</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"
    OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5" CssClass="table table-bordered table-striped" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting">
    <Columns>
     
       <asp:TemplateField>
           <HeaderTemplate >تصویر شاخص</HeaderTemplate>
           <ItemTemplate>
               <asp:Image ID="img1" runat="server"
                            ImageUrl='<%#Eval("image") %>' Width="100" Height="100"></asp:Image>
           </ItemTemplate>
         
       </asp:TemplateField>
       <asp:TemplateField>
           <HeaderTemplate >عنوان خبر</HeaderTemplate>
           <ItemTemplate>
                 <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("title") %>' />
           </ItemTemplate>
            <EditItemTemplate>
               <asp:TextBox ID="EditTitle" runat="server" Text='<%# Bind("title") %>' Width="100px" Height="50px" CssClass="form-control"></asp:TextBox>
               
           </EditItemTemplate>
       </asp:TemplateField>
        <asp:TemplateField>
           <HeaderTemplate >خبر کوتاه</HeaderTemplate>
           <ItemTemplate>
               <asp:Label ID="Label1" runat="server" Text='<%# Eval("short_description") %>' />
           </ItemTemplate>
            <EditItemTemplate>
               <asp:TextBox ID="EditShortDescription" runat="server" Text='<%#Bind("short_description") %>' TextMode="MultiLine" CssClass="form-control" Width="100" Height="50"></asp:TextBox>
               
           </EditItemTemplate>
       </asp:TemplateField>
      <asp:TemplateField>
           <HeaderTemplate >خبر</HeaderTemplate>
           <ItemTemplate>
               <asp:Label ID="long_descriptionlbl" runat="server" Text='<%# Eval("long_description") %>' />
           </ItemTemplate>
            <EditItemTemplate>
               <asp:TextBox ID="EditLongDescription" runat="server" Text='<%#Bind("long_description") %>' TextMode="MultiLine" CssClass="form-control" Width="150" Height="100"></asp:TextBox>
              
           </EditItemTemplate>
       </asp:TemplateField>
        <asp:TemplateField ControlStyle-Width="80px">
           <HeaderTemplate >عملیات</HeaderTemplate>
           <ItemTemplate>
              <asp:LinkButton ID="LinkButtonEdit" runat="server" CommandName="Edit" CssClass="btn btn-primary"><i class="fa fa-pencil" aria-hidden="true"></i></asp:LinkButton>
                
                <asp:LinkButton ID="LinkButtonDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger button-delete" OnClientClick="return confirm('آیا مطمئن هستید؟')"><i class="fa fa-trash" aria-hidden="true"></i></asp:LinkButton>
           </ItemTemplate>
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButtonUpdate" runat="server" CommandName="Update" CssClass="btn btn-info" ValidationGroup="edit"><i class="fa fa-check" aria-hidden="true"></i></asp:LinkButton>
                
                <asp:LinkButton ID="LinkButtonCancel" runat="server" CommandName="Cancell" CssClass="btn btn-bitbucket button-delete" ><i class="fa fa-times" aria-hidden="true"></i></asp:LinkButton>
            </EditItemTemplate>
       </asp:TemplateField>
    </Columns>
</asp:GridView>
            
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
                </div>
        </div>

       </section>
      
       
    
 
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer text-left"> 
    <strong>Copyleft &copy; 2014-2017 <a href="https://adminlte.io">Almsaeed Studio</a> & <a href="http://hosseinizadeh.ir/adminlte">Alireza Hosseinizadeh</a></strong>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Create the tabs -->
    <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
      <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
      <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
    </ul>
    <!-- Tab panes -->
    <div class="tab-content">
      <!-- Home tab content -->
      <div class="tab-pane" id="control-sidebar-home-tab">
        <h3 class="control-sidebar-heading">فعالیت ها</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-birthday-cake bg-red"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">تولد غلوم</h4>

                <p>۲۴ مرداد</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-user bg-yellow"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">آپدیت پروفایل سجاد</h4>

                <p>تلفن جدید (800)555-1234</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-envelope-o bg-light-blue"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">نورا به خبرنامه پیوست</h4>

                <p>nora@example.com</p>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <i class="menu-icon fa fa-file-code-o bg-green"></i>

              <div class="menu-info">
                <h4 class="control-sidebar-subheading">کرون جابز اجرا شد</h4>

                <p>۵ ثانیه پیش</p>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

        <h3 class="control-sidebar-heading">پیشرفت کارها</h3>
        <ul class="control-sidebar-menu">
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                ساخت پوستر های تبلیغاتی
                <span class="label label-danger pull-left">70%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                آپدیت رزومه
                <span class="label label-success pull-left">95%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-success" style="width: 95%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                آپدیت لاراول
                <span class="label label-warning pull-left">50%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-warning" style="width: 50%"></div>
              </div>
            </a>
          </li>
          <li>
            <a href="javascript:void(0)">
              <h4 class="control-sidebar-subheading">
                بخش پشتیبانی سایت
                <span class="label label-primary pull-left">68%</span>
              </h4>

              <div class="progress progress-xxs">
                <div class="progress-bar progress-bar-primary" style="width: 68%"></div>
              </div>
            </a>
          </li>
        </ul>
        <!-- /.control-sidebar-menu -->

      </div>
      <!-- /.tab-pane -->
      <!-- Stats tab content -->
      <div class="tab-pane" id="control-sidebar-stats-tab">وضعیت</div>
      <!-- /.tab-pane -->
      <!-- Settings tab content -->
      <div class="tab-pane" id="control-sidebar-settings-tab">
        
          <h3 class="control-sidebar-heading">تنظیمات عمومی</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              گزارش کنترلر پنل
              <input type="checkbox" class="pull-left" checked>
            </label>

            <p>
              ثبت تمامی فعالیت های مدیران
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              ایمیل مارکتینگ
              <input type="checkbox" class="pull-left" checked>
            </label>

            <p>
              اجازه به کاربران برای ارسال ایمیل
            </p>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              در دست تعمیرات
              <input type="checkbox" class="pull-left" checked>
            </label>

            <p>
              قرار دادن سایت در حالت در دست تعمیرات
            </p>
          </div>
          <!-- /.form-group -->

          <h3 class="control-sidebar-heading">تنظیمات گفتگوها</h3>

          <div class="form-group">
            <label class="control-sidebar-subheading">
              آنلاین بودن من را نشان نده
              <input type="checkbox" class="pull-left" checked>
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              اعلان ها
              <input type="checkbox" class="pull-left">
            </label>
          </div>
          <!-- /.form-group -->

          <div class="form-group">
            <label class="control-sidebar-subheading">
              حذف تاریخته گفتگوهای من
              <a href="javascript:void(0)" class="text-red pull-left"><i class="fa fa-trash-o"></i></a>
            </label>
          </div>
          <!-- /.form-group -->
       
      </div>
      <!-- /.tab-pane -->
    </div>
  </aside>
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="../assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="../assets/bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="../assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="../assets/bower_components/raphael/raphael.min.js"></script>
<script src="../assets/bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="../assets/bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="../assets/cms-assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="../assets/cms-assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="../assets/bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="../assets/bower_components/moment/min/moment.min.js"></script>
<script src="../assets/bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="../assets/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="../assets/cms-assets/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="../assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../assets/cms-assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="../assets/cms-assets/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../assets/cms-assets/dist/js/demo.js"></script>

<script>
    $(function () {
        $('#example1').DataTable()
        $('#example2').DataTable({
            'paging': true,
            'lengthChange': false,
            'searching': false,
            'ordering': true,
            'info': true,
            'autoWidth': false
        })
    })
</script>
        </form>
</body>
</html>