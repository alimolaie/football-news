<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="mihan_news.login" %>

<!DOCTYPE html>

<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>ورود</title>
	
    <link href="assets/login-page/css/bootstrap-rtl.min.css" rel="stylesheet" />
    <link href="assets/login-page/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/login-page/css/style.css" rel="stylesheet" />
</head>
<body dir="rtl">
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<div class="card-header">
					<h3>ورود</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span>
						<span><i class="fab fa-google-plus-square"></i></span>
						<span><i class="fab fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form id="form1" runat="server">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text input-icon"><i class="fas fa-user"></i></span>
							</div>
							<asp:TextBox id="userName" runat="server" CssClass="form-control" placeholder="نام کاربری"/>
						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text input-icon"><i class="fas fa-key"></i></span>
							</div>
							<asp:TextBox id="passwordTxt" TextMode="password" runat="server" placeholder="رمز عبور" CssClass="form-control" />
						</div>
						<div class="row align-items-center remember">
							<input type="checkbox">مرا بخاطر بسپار
						</div>
						<div class="form-group">
							
                            <asp:Button id="submit_btn" Text="ورود" runat="server" CssClass="btn float-right login_btn" OnClick="submit_btn_Click" />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="نام کاربری را وارد کنید" ControlToValidate="userName" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="رمز عبور را وارد کنید" ControlToValidate="passwordTxt" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="messageLb" runat="server" ForeColor="Red" Visible="False"></asp:Label>
						</div>
					</form>
				</div>
				
				
			</div>
		</div>
	</div>
	<script src="js/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
