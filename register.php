<?php
	require_once "./lib/db.php";
?>
<?php
session_start();

require_once './vendor/autoload.php';
use Gregwar\Captcha\CaptchaBuilder;
// if(!isset($_SESSION['btnsubmit1']))
// {
//     $_SESSION['btnsubmit1']=0;
// }
if (isset($_SESSION['btnsubmit1'])) {

        unset($_SESSION['btnsubmit1']);
        if(isset($_POST['txtUserInput']))
        {
            $input = $_POST['txtUserInput'];
            if ($input == $_SESSION['captcha']) {
                $sql="select Id from nguoidung order by Id desc limit 0,1";
                $rs=load($sql);
                $newid=$rs->fetch_assoc();
                $id=$newid['Id']+1;
                $username=$_POST['txtUsername'];
                $password=$_POST['txtPWD'];
                $diachi=$_POST['txtDiaChi'];
                $sdt=$_POST['txtSDT'];
                $email=$_POST['txtEmail'];
                $sql="insert into nguoidung values($id,'$username','$password','$sdt','$diachi','$email','null',0)";
                write($sql);
                if(!isset($_SESSION['username']))
                    {$_SESSION['username']=$username;}
                header('Location: http://localhost:8081/CuoiKyWeb');
            }
            else
            {
                $_SESSION['captchaalert']='<script>alert("CapCha không hợp lệ");$("#txtUserInput").focus();</script>';
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
    <title>
        Welcome to FlatShop
    </title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,300italic,400italic,500,700,500italic,100italic,100' rel='stylesheet' type='text/css'>
    <link href="bootstrap/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bootstrap/css/flexslider.css" type="text/css" media="screen" />
    <link href="bootstrap/css/style.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="assets/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js">
    </script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js">
    </script>
    <![endif]-->
</head>
<body>
    <div class="wrapper">
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-2">
                        <div class="logo">
                            <a href="index.php">
                                <img src="bootstrap/images/logo.png" alt="FlatShop">
                            </a>
                        </div>
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
                                        <li>
                                            <?php if(isset($_SESSION['username']))
                                            {
                                                echo '<a href="#" class="log">'.$_SESSION['username'].'</a>';
                                            }
                                            else
                                            {                                        
                                                echo '<a href="login.php" class="log">Login</a>';
                                            }?>
                                        </li>
                                        <?php if(isset($_SESSION['username']))
                                           { echo '<li><a href="#" id="signout" class="reg">Sign Out</a></li>';
                                           }
                                        ?>
                                        <li>
                                            <a href="register.php" class="reg">Register</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                        
                        <div class="header_bottom">
                            <ul class="option">
                                <li id="search" class="search">
                                    <form><input class="search-submit" type="submit" value=""><input class="search-input" placeholder="Enter your search term..." type="text" value="" name="search"></form>
                                </li>
                                <li class="option-cart">
                                    <a href="Cart.html" class="cart-icon">cart <span class="cart_no">02</span></a>
                                    <ul class="option-cart-item">
                                        <li>
                                            <div class="cart-item">
                                                <div class="image"><img src="bootstrap/images/Bàn-ghế/GoFGUC0028.jpg" alt=""></div>
                                                <div class="item-description">
                                                    <p class="name">GoFGUC0028</p>
                                                    <p>Quantity: <span class="light-red">01</span></p>
                                                </div>
                                                <div class="right">
                                                    <p class="price">$300</p>
                                                    <a href="#" class="remove"><img src="bootstrap/images/remove.png" alt="remove"></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="cart-item">
                                                <div class="image"><img src="bootstrap/images/Bàn-ghế/GoFGUC003.jpg" alt=""></div>
                                                <div class="item-description">
                                                    <p class="name">GoFGUC003</p>
                                                    <p>Quantity: <span class="light-red">01</span></p>
                                                </div>
                                                <div class="right">
                                                    <p class="price">$250</p>
                                                    <a href="#" class="remove"><img src="bootstrap/images/remove.png" alt="remove"></a>
                                                </div>
                                            </div>
                                        </li>
                                        <li><span class="total">Total <strong>$550</strong></span><button class="checkout" onClick="location.href='Cart.html'">CheckOut</button></li>
                                    </ul>
                                </li>
                            </ul>
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                    <span class="sr-only">
                                        Toggle navigation
                                    </span>
                                    <span class="icon-bar">
                                    </span>
                                    <span class="icon-bar">
                                    </span>
                                    <span class="icon-bar">
                                    </span>
                                </button>
                            </div>
                            <div class="navbar-collapse collapse">
                                <ul class="nav navbar-nav">
                                    <li><a href="index.php">Home</a></li>
                                    <?php
                                    $sql = "SELEct * from danhmuc LIMIT 0,5";
                                    $rs = load($sql);
                                    $dem = 0;
                                    while ($row = $rs->fetch_assoc()) :
                                    ?>
                                    <li><a href="productsByCat.php?id=<?= $row["Id"] ?>&x=1"><?= $row["Ten"]?></a></li>
                                    <?php
                                    endwhile
                                    ?>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
            <div class="clearfix"></div>
            
            <div class="page-index">
                <div class="container">
                    Đăng ký
                </div>
            </div>
        </div>
        </div>
        <div class="clearfix"></div>
        
        <div class="container_fullwidth">
            <div class="container">
                <div class="row">
                    <div class="col-md-9">
                        
                    <form id="f" action="" method="POST" role="form">
					<legend>Đăng ký tài khoản</legend>
				
					<div class="form-group">
						<label for="txtUsername">Tên đăng nhập</label>
						<input type="text" class="form-control" id="txtUsername" name="txtUsername">
					</div>
					<div class="form-group">
						<label for="txtPWD">Mật khẩu</label>
						<input type="password" class="form-control" id="txtPWD" name="txtPWD">
					</div>
					<div class="form-group">
						<label for="txtPWD2">Xác nhận</label>
						<input type="password" class="form-control" id="txtPWD2" name="txtPWD2">
                    </div>
                    <div class="form-group">
						<label for="txtSDT">Số điện thoại</label>
						<input type="text" class="form-control" id="txtSDT" name="txtSDT" placeholder="">
                    </div>
                    <div class="form-group">
						<label for="txtDiaChi">Địa chỉ</label>
						<input type="text" class="form-control" id="txtDiaChi" name="txtDiaChi">
                    </div>
                    <div class="form-group">
						<label for="txtEmil">Email</label>
						<input type="text" class="form-control" id="txtEmail" name="txtEmail" placeholder="abcdef@gmail.com">
                    </div>
                    <div class="form-group">
						<label for="txtHinhAnh">Hình ảnh</label>
					</div>
					<div class="form-group">
						<?php
							$builder = new CaptchaBuilder;
							$builder->build();
							$_SESSION["captcha"] = $builder->getPhrase();
						?>
						<img src="<?= $builder->inline() ?>" alt="captcha" width="300" height="300"/>
					</div>
					<div class="form-group">
						<label for="txtUserInput">Captcha</label>
						<input type="text" class="form-control" id="txtUserInput" name="txtUserInput">
                    </div>
                    <?php if(isset($_SESSION['captchaalert']))
                        {   echo $_SESSION['captchaalert'];
                            unset($_SESSION['captchaalert']);
                            echo '<script>history.back()</script>';
                        }
                    ?>
                    <div class="alert alert-danger hidden"></div>
					<button name="btnRegister" type="submit" class="btn btn-primary" >
						<span class="glyphicon glyphicon-ok"></span>
						Đăng ký
                    </button>
                    <!---<a href="register.php?btnsubmit1=1" >
                    <input type="button" value="Đăng ký">    
                    </a>--->
                    </form>
                    <script src="assets/jquery-3.1.1.min.js"></script>
                    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
                    <script type="text/javascript">
                       $('#f').on('submit', function (e) {
                            e.preventDefault();

                            var form = this;

                            var username = $('#txtUsername').val();
                            if (username.length === 0) {
                                alert('Username không để trống');
                                $('#txtUsername').focus();
                                return;
                            }
                            var pass=$('#txtPWD').val();
                            if(pass==="")
                            {
                                alert('Mật khẩu không để trống!');
                                $('#txtPWD').focus();
                                return;
                                }
                            if(pass.length<6)
                            {   alert('Mật khẩu phải dài hơn 6 kí tự');
                                $('#txtPWD').focus();
                                return;
                            }
                            var cofirmpass=$('#txtPWD2').val();
                            if(pass!==cofirmpass)
                            {   alert('Xác nhận mật khẩu chưa chính xác!');
                                $('#txtPWD2').focus();
                                return;}
                            var sdt=$('#txtSDT').val();
                            var numcc = /((09|03|07|08|05)+([0-9]{8})\b)/g;
                            if(sdt !==""){
                                if (numcc.test(sdt) == false) 
                                {
                                    alert('Số điện thoại của bạn không đúng định dạng!');
                                    $('#txtSDT').focus();
                                    return;
                                }
                            }else{
                                alert('Bạn chưa điền số điện thoại!');
                                $('#txtSDT').focus();
                                return;
                            }
                            if($('#txtDiaChi').val()==="")
                            {
                                alert('Địa chỉ không để trống!');
                                $('#txtDiaChi').focus();
                                return;
                            }
                            var email=$('#txtEmail').val();
                            if(email==="")
                            {
                                alert('Email không để trống!');
                                $('#txtEmail').focus();
                                return;
                            }
                            var reg_email =/^[A-Za-z0-9]+([_\.\-]?[A-Za-z0-9])*@[A-Za-z0-9]+([\.\-]?[A-Za-z0-9]+)*(\.[A-Za-z]+)+$/;
                            if(reg_email.test(email)==false)
                            {
                                alert('Email không hợp lệ!');
                                $('#txtEmail').focus();
                                return;
                            }
                            if($('#txtUserInput').val()==="")
                            {
                                alert('CaptCha không để trống!');
                                $('#txtUserInput').focus();
                                return;
                            }
                            var url = './api/user_check.php?user=' + username;
                            $.getJSON(url, function (data) {
                                if(data===1)
                                {
                                    alert('Tài khoản Đã tồn tại!');  
                                    $('#txtUsername').focus();
                                    return;
                                }else{
                                    <?php $_SESSION['btnsubmit1']=1; ?>
                                    form.submit();
                                }                    
                            });
                        });
                    </script>
                    </div>
                </div>
            </div>
        </div>
            <script type="text/javascript">
                $("#signout").click(function(){
                    <?php unset($_SESSION['username']) ?>;
                    this.load();
                   });
            </script>
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
    </div>
    <!-- Bootstrap core JavaScript==================================================-->
    <script type="text/javascript" src="bootstrap/js/jquery-1.10.2.min.js">
    </script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js">
    </script>
    <script defer src="bootstrap/js/jquery.flexslider.js">
    </script>
    <script type="text/javascript" src="bootstrap/js/jquery.carouFredSel-6.2.1-packed.js">
    </script>
    <script type="text/javascript" src='bootstrap/js/jquery.elevatezoom.js'>
    </script>
    <script type="text/javascript" src="bootstrap/js/script.min.js">
    </script>
</body>
</html>