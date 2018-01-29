<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="wqf_register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
            background-image: url(img/registerimg.png);
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row" style="background: #fff; border: 1px solid #e1e1e1">
            <div class="col-md-1"></div>
            <div class="col-md-3">
                <a href="../xgf/index.aspx">
                <img style="width: 50%;" src="img/logo.jpg" /></a>
            </div>
            <div class="col-md-5"></div>
            <div class="col-md-3" style="margin-top: 50px">
                <span style="">您好，欢迎光临食趣！<a href="login.aspx">请登录</a></span>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5" style="margin: 0 auto;">
                <div style="margin-top: 16%; width: 88%; padding-right: 6%">
                    <h4 style="text-align: center; font-weight: bold; font-size: 24px; color: #333">食趣注册</h4>
                    <input style="width: 76%; margin: 6% auto" id="username" type="text" class="form-control" placeholder="昵称" />
                    <input style="width: 76%; margin: 6% auto" id="number" type="text" class="form-control" placeholder="手机号" />
                    <input style="width: 76%; margin: 6% auto" id="pwd" type="password" class="form-control" placeholder="设置密码" />
                    <input style="width: 76%; margin: 6% auto" id="pwds" type="password" class="form-control" placeholder="确认密码" />
                    <span style="margin-left: 12%; line-height: 30px;">点击注册，表示您同意食趣<a href="#">《服务协议》</a></span><br />
                    <input style="width: 76%; margin-left: 12%;" id="subtn" type="button" value="同意协议并注册" class="btn btn-info" />
                    <div style="height: 60px; color: red"><span id="ts" style="margin-left: 30%"></span></div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5" style="margin-left: 4%">沪ICP备16050468号|沪B2-20170039|营业执照</div>
        </div>
        <div class="row">
            <div class="col-md-4" style="color: #333;"></div>
            <div class="col-md-5" style="color: #333; margin-left: 4%">Copyright © 食趣网上超市 2007-2017，All Rights Reserved</div>
        </div>

    </div>

</body>
</html>
<script type="text/javascript">
    $("#subtn").click(function () {
        var username = $("#username");
        var number = $("#number");
        var pwd = $("#pwd");
        var pwds = $("#pwds");
        username.attr("placeholder", "用户名");
        username.css("border", "1px solid blue ");
        if (username.val().trim().length == 0) {
            username.attr("placeholder", "请输入用户名");
            username.css("border", "1px solid red");
            username.focus();
            username.select();
            return false;
        }
        number.attr("placeholder", "手机号");
        number.css("border", "1px solid blue ");
        if (number.val().trim().length == 0) {
            number.attr("placeholder", "请输入手机号");
            number.css("border", "1px solid red");
            number.focus();
            number.select();
            return false;
        }
        pwd.attr("placeholder", "设置密码");
        pwd.css("border", "1px solid blue ");
        if (pwd.val().trim().length < 6) {
            pwd.val("");
            pwd.attr("placeholder", "密码不能少于6位");
            pwd.css("border", "1px solid red");
            pwd.focus();
            pwd.select();
            return false;
        }
        pwds.attr("placeholder", "确认密码");
        pwds.css("border", "1px solid blue ");
        if (pwds.val().trim().length < 6) {
            pwds.val("");
            pwds.attr("placeholder", "密码不能少于6位");
            pwds.css("border", "1px solid red");
            pwds.focus();
            pwds.select();
            return false;
        }
        number.attr("placeholder", "手机号");
        number.css("border", "1px solid blue ");
        if (!(/^1[34578]\d{9}$/.test(number.val()))) {
            number.val("");
            number.attr("placeholder", "手机号格式有误");
            number.css("border", "1px solid red");
            number.focus();
            number.select()
            return false;
        }
        pwds.attr("placeholder", "确认密码");
        pwds.css("border", "1px solid blue ");
        if (pwd.val() != pwds.val()) {
            pwds.val("");
            pwds.attr("placeholder", "两次密码不一致");
            pwds.css("border", "1px solid red");
            pwds.focus();
            pwds.select();
            return false;
        }
        else {
            $.ajax({
                url: "ajax/isok.ashx",
                data: { "number": number.val() },
                type: "post",
                dataType: "json",
                success: function (data) {
                    console.log(data);
                    if (data.ok == "yes") {
                        $.ajax({
                            url: "ajax/register.ashx",
                            data: { "username": username.val(), "pwd": pwd.val(), "number": number.val() },
                            type: "post",
                            dataType: "json",
                            success: function (data) {
                                if (data.ok == "ok") {
                                    window.location.href = "login.aspx";
                                }
                            }
                        });
                    }
                    else {
                        number.val("");
                        number.attr("placeholder", "手机号已被占用");
                        number.css("border", "1px solid red");
                        number.focus();
                        number.select();
                    }
                }
            })


        }


    })
</script>
