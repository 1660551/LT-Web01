<?php
    session_start();
	require_once './lib/db.php';
    if($_SESSION['dang_nhap_chua']==1)
    {
        header("Location:index.php");
    }
    else{
        if (isset($_POST["btnLogin"])) {
            $username = $_POST["txtUserName"];
            $password = $_POST["txtPassword"];
            $enc_password = $password;//md5($password);
    		if (isset($_POST["SavePassWord"])) {
					setcookie('user',$username, time()+ 84600*30,'/','', 0, 0);
					setcookie('pass', $password, time()+ 84600*30,'/','', 0, 0);

            }
            $sql = "select * from nguoidung where UserName = '$username' and PassWord = '$enc_password'";
            $rs = load($sql);
            if ($rs->num_rows >0) {
                $_SESSION["current_user"] = $rs->fetch_object();
                $_SESSION["dang_nhap_chua"] = 1;
				
                header("Location: index.php");
            } else {
                // sinh viên xử lý show_alert
                echo "Username hoặc mật khẩu chưa đúng";
            }
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/favicon.png">
    <title>Đăng Nhập</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
    <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/css/flexslider.css" type="text/css" media="screen" />
    <link href="bootstrap/css/sequence-looptheme.css" rel="stylesheet" media="all" />
    <link href="bootstrap/css/style.css" rel="stylesheet">
    <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script><![endif]-->
</head>
<body >
    <div class="wrapper">
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-2">
                        <div class="logo"><a href="HomePage.html"><img src="bootstrap/images/logo.png" alt="FlatShop"></a></div>
                    </div>
                    <div class="col-md-10 col-sm-10">
                        <div class="header_top">
                            <div class="row">
                                <div class="col-md-3"></div>
                                <div class="col-md-6">
                                    <ul class="topmenu">
                                        <li><a href="#">Giới thiệu</a></li>
                                        <li><a href="#">Service</a></li>
                                        <li><a href="#">Khuyến mãi</a></li>
                                        <li><a href="#">Tin tức-Diễn đàn</a></li>
                                        <li><a href="#">Liên Hệ</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-3">
                                    <ul class="usermenu">
                                    <?php
                                        if(isset($_SESSION["current_user"])){if($_SESSION["current_user"]->Quyen==1){?>
                                        <li><a href="Quanly.php">Quyền hạn admin</a></li>
                                        <?php
                                            }
                                        }
                                        ?>
                                        <?php
                                        if(!isset($_SESSION["dang_nhap_chua"])) {
                                            $_SESSION["dang_nhap_chua"] = 0;
                                        }
                                        if ($_SESSION["dang_nhap_chua"] == 0) {
                                        ?>
                                        <li><a href="login.php" class="log">Login</a></li>
                                        <li><a href="register.php" class="reg">Register</a></li>
                                        <?php
                                        }
                                        else{?>
                                        <li><a href="profile.php" class="log">
                                        <?php
                                        echo $_SESSION["current_user"]->UserName;
                                        echo "</a></li>";
                                        ?>
                                        <li><a href="logout.php" class="reg">Logout</a></li>
                                        <?php
                                        }
                                        ?>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="header_bottom">
                            <ul class="option">
                                <li id="search" class="search">
                                <form action="search.php" method="get"><input class="search-submit" type="submit" value=""><input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search"></form>                                </li>
                                <li class="option-cart">
                                    <a href="Cart.html" class="cart-icon">cart <span class="cart_no"></span></a>
                                    <ul class="option-cart-item">
                                        <li><span class="total">Total <strong>$0</strong></span><button class="checkout" onClick="location.href='Cart.html'">CheckOut</button></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="navbar-header"><button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button></div>
                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li>
                                        <a href="HomePage.html">Home</a>
                                    </li>
                                    <li><a href="Banghe.html">Bàn Ghế</a></li>
                                    <li><a href="Giuong.html">Giường</a></li>
                                    <li><a href="TuQuanAo.html">Tủ Quần Áo</a></li>
                                    <li><a href="TuBep.html">Tủ Bếp</a></li>
                                    <li><a href="DoTrangTri.html">Đồ Trang Trí</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
 <br>     
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    

<br>

<div class="container-fluid">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<form method="post" action=""  name="MyForm" onsubmit="return validateForm()">
                	
                    <center><legend><h2>ĐĂNG NHẬP TÀI KHOẢN</h2></legend></center>
                    <strong><hr></strong>
                    
					<div class="form-group">
						<label for="txtUserName"><strong>Tên đăng nhập</strong></label><br>
                        <br>
						<input type="text" class="form-control" id="txtUserName" name="txtUserName" value = "<?php if(isset($_COOKIE['user'])) echo $_COOKIE['user']; ?>" placeholder="Nhập tên người dùng của bạn">
					</div>
					<div class="form-group">
						<label for="txtPassword"><strong>Mật khẩu</strong></label><br>
                        <br>
						<input type="password" class="form-control" id="txtPassword" value = "<?php if(isset($_COOKIE['pass'])) echo $_COOKIE['pass']; ?>" name="txtPassword" placeholder="Nhập mật khẩu vào đây">
					</div>
                     <div class="g-recaptcha"
          data-sitekey="6LelZAsTAAAAAAv1ADYDnq8AzbmPmbMvjh-xhfgB"></div>
          <br>
					<button type="submit" class="btn btn-success btn-block" name="btnLogin">
						<span class="glyphicon glyphicon-user"></span>
						Đăng nhập
					</button>
                    <input type = "checkbox" <?php if(isset($_COOKIE['user'])) echo "Đã check"; ?> name="SavePassWord"><label><strong> Save PassWord</strong></label>

                    <!-- reCAPTCHA -->
     
				</form>
			</div>
		</div>
	</div>             
 <br>     
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
<br>    
       <div class="clearfix"></div>
        <div class="footer">
            <div class="footer-info">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
           
                            <div class="footer-logo"><a href="#"><img src="bootstrap/images/logo.png" alt=""></a></div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <h4 class="title">Contact <strong>Info</strong></h4>
                            <p>No. 08, Quận 1, TP.Hồ Chí Minh , Vietnam</p>
                            <p>Call Us : (084) 1900 1008</p>
                            <p>Email : haitnk16411@st.uel.edu.vn</p>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <h4 class="title">Customer<strong> Support</strong></h4>
                            <ul class="support">
                                <li><a href="#">FAQ</a></li>
                                <li><a href="#">Payment Option</a></li>
                                <li><a href="#">Booking Tips</a></li>
                                <li><a href="#">Infomation</a></li>
                            </ul>
                        </div>
                        <div class="col-md-3">
                            <h4 class="title">Get Our <strong>Newsletter </strong></h4>
                            <p>Lorem ipsum dolor ipsum dolor.</p>
                            <form class="newsletter">
                                <input type="text" name="" placeholder="Type your email....">
                                <input type="submit" value="SignUp" class="button">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-info">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <p>Copyright © 2018. Designed by <a href="#">Trịnh Ngọc Hải</a>. All rights reseved</p>
                        </div>
                        <div class="col-md-6">
                            <ul class="social-icon">
                                <li><a href="#" class="linkedin"></a></li>
                                <li><a href="#" class="google-plus"></a></li>
                                <li><a href="#" class="twitter"></a></li>
                                <li><a href="#" class="facebook"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <!-- Bootstrap core JavaScript==================================================-->
    <script type="text/javascript" src="bootstrap/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery.sequence-min.js"></script>
    <script type="text/javascript" src="bootstrap/js/jquery.carouFredSel-6.2.1-packed.js"></script>
    <script defer src="bootstrap/js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="bootstrap/js/script.min.js"></script>
    <!-- Bootstrap core JavaScript==================================================-->
    <script src="assets/jquery-3.1.1.min.js"></script>
	<script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <!-- reCAPTCHA Libary -->
<script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
<script type="text/javascript">
    function validateForm() {
        var username = document.forms["MyForm"]["txtUserName"].value;
        if (username == "") {
            alert("username không được để trống");
            return false;
        }
        var password = document.forms["MyForm"]["txtPassword"].value;
        if (password == "") {
            alert("password không được để trống");
            return false;
        }
        
    }
</script>

</body>
</html>