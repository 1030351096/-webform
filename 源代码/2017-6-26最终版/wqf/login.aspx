<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="wqf_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="../xgf/css/swiper-3.4.2.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title></title>
    <style type="text/css">
        body {
            background-color: #F8F8F8;
            -moz-user-select: none; /*火狐*/
            -webkit-user-select: none; /*webkit浏览器*/
            -ms-user-select: none; /*IE10*/
            -khtml-user-select: none; /*早期浏览器*/
            user-select: none;
        }

        * {
            margin: 0px;
            padding: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row" style="background-color: white">
                <div class="col-md-1"></div>
                <div class="col-md-3">
                    <a href="../xgf/index.aspx">
                        <img style="width: 60%; margin-left: 100px;" src="img/logo.jpg" /></a>
                </div>
                <div class="col-md-3"></div>
                <div class="col-md-5">
                    <img src="img/logintop.jpg" style="margin-top:36px;" />
                </div>
            </div>
            <div class="row" style="background-image:url(img/1.jpg);background-repeat:no-repeat;background-size:100%;">
                <div class="col-md-5""></div>
                <div class="col-md-3" style="border: 1px solid #333; border-radius: 15px; margin-left: 15%; margin-top: 7%;margin-bottom:7%; background-color: #fff; padding-top: 4%; padding-left: 4%">
                    <span class="h3" style="font-family: 微软雅黑; font-weight: bold; font-size: 22px;">登录食趣账户</span><br />
                    <input style="margin-top: 3%; width: 84%" type="text" id="number" class="form-control" placeholder="手机号" />
                    <input style="margin-top: 3%; width: 84%" type="password" id="pwd" class="form-control" placeholder="密码" />
                    <input type="checkbox" id="cke" style="margin-top: 3%" /><label for="cke" style="font-size: 12px; color: #999;">7天内免登陆</label>
                    <a href="#" style="float: right; margin-right: 16%; margin-top: 3%">忘记密码?</a><br />
                    <input type="button" style="width: 64%; margin-left: 14%; margin-top: 3%" class="btn btn-info" id="btn" value="登陆" /><br />
                    <span style="color: #666; font-size: 14px; margin-left: 14%;">没有食趣账户？</span><a href="register.aspx"> 立即免费注册>></a>
                    <h5 id="tl" style="color: white; margin-left: 24%">账号或密码错误!</h5>
                    <div style="height: 30px; width: 100%; background-color: white; color: white">
                        1
                    </div>
                    <div style="width: 100%; background-color: white; color: white">
                        1
                 
                    </div>
                </div>
            </div>
            <div class="row" style="margin-top: 1%; background-color: #fff">
                <div class="col-md-12" style="margin-top: 4%">
                    <ul style="list-style: none">
                        <li style="float: left; margin-left: 18%"><a href="#" style="color: #808080">NetEase</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">公司简介</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">联系方法</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">友情链接</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">招聘信息</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">客户服务</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">隐私政策</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">网络营销</a></li>
                        <li style="float: left; margin-left: 2%; margin-right: 2%;">|</li>
                        <li style="float: left;"><a href="#" style="color: #808080">网站地图</a></li>
                    </ul>

                </div>
            </div>


        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    $("#btn").click(function () {
        var number = $("#number");
        var pwd = $("#pwd");
        var cke = document.getElementById("cke");
        $("#tl").css("color", "white");
        if (number.val().trim().length == 0) {
            number.attr("placeholder", "请输入手机号");
            number.css("border", "1px solid red");
            number.focus();
            number.select();
            return false;
        }
        if (pwd.val().trim().length == 0) {
            pwd.attr("placeholder", "请输入密码");
            pwd.css("border", "1px solid red");
            pwd.focus();
            pwd.select();
            return false;
        }
        if (!(/^1[34578]\d{9}$/.test(number.val()))) {
            number.val("");
            number.attr("placeholder", "手机号格式有误");
            number.css("border", "1px solid red");
            number.focus();
            number.select()
            return false;
        }
        else {
            $.ajax({
                url: "ajax/login.ashx",
                data: { "number": number.val(), "pwd": pwd.val(), "cke": cke.checked },
                type: "post",
                dataType: "json",
                success: function (data) {
                    if (data.ok == "ok") {
                        window.location.href = "../xgf/index.aspx";
                    }
                    else {
                        $("#tl").css("color", "red");
                    }
                }
            });
        }

    })
</script>
