<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recharge.aspx.cs" Inherits="wqf_recharge" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>充值</title>
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, user-scalable=no, maximum-scale=1.0" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <meta content="yes" name="apple-mobile-web-app-capable" />
    <meta content="black" name="apple-mobile-web-app-status-bar-style" />
    <meta content="telephone=no" name="format-detection" />
    <link href="css/userPay.css" rel="stylesheet" />
    <style>
        a:link {
            text-decoration: none;
        }

        　　 a:active {
            text-decoration: blink;
        }

        　　 a:hover {
            text-decoration: underline;
        }

        　　 a:visited {
            text-decoration: none;
        }

        *, :after, :before {
            /* -webkit-box-sizing: border-box; */
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        button, html input[type=button], input[type=reset], input[type=submit] {
            -webkit-appearance: button;
            cursor: pointer;
        }
    </style>
    <!--[if lt IE 9]>
    <script src="/Scripts/html5shiv.min.js"></script>
    <script src="/Scripts/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <div id="loadingPicBlock" style="max-width: 720px; margin: 0 auto;" class="pay">
        <header class="g-header">

            <div class="head-r">
                <a href="../xgf/index.aspx" class="z-HReturn" data-dismiss="modal" aria-hidden="true"><s></s><b>返回</b></a>
            </div>
        </header>

        <div class="g-Total gray9">请选择需要充值的金额</div>
        <section class="clearfix g-member">
            <div class="g-Recharge">
                <ul id="ulOption">
                    <li money="200"><a href="javascript:;">200元<s></s></a></li>
                </ul>
            </div>
            <form action="http://codepay.fateqq.com:52888/creat_order" method="get">
                <article class="clearfix mt10 m-round g-pay-ment g-bank-ct">
                    <ul id="ulBankList">
                        <li class="gray6" style="width: 100%; padding: 0px 0px 0px 10px">您选择充值：<label class="input" style="border: 1px solid #EAEAEA; height: 15px; font-size: 24px;">
                            <input type="text" name="price" id="price" placeholder="如：100" value="1" style="width: 72px; color: red; font-size: 14px;">
                        </label>
                            元</li>
                        <li class="gray6" style="width: 100%; padding: 0px 0px 0px 10px">充值用户：<label class="input" style="border: 1px solid #EAEAEA; height: 15px; font-size: 24px;">
                            <input type="text" name="pay_id" id="pay_id" placeholder="用户名" value="" style="width: 120px; font-size: 14px;">
                        </label>
                        </li>
                        <li paytype="1" class="gray9" type="codePay" style="width: 33%">
                            <a href="javascript:;" class="z-initsel">
                                <img src="./img/alipay.jpg" /><s></s></a>


                        </li>
                        <li paytype="3" class="gray9" type="codePay" style="width: 33%">
                            <a href="javascript:;">
                                <img src="./img/weixin.jpg" /><s></s></a>


                        </li>
                    </ul>
                </article>
                <input type="hidden" value="1" name="type" id="pay_type">
                <input type="hidden" name="token" value="D0PUDnybC7H5htuHLkynCizO1XXm6fKh" />
                <input type="hidden" name="act" value="0" />
                <input type="hidden" name="id" value="10215" />
                <input type="hidden" name="debug" value="0" />
                <input type="hidden" name="notify_url" value="" />
                <input type="hidden" name="return_url" value="" />
                <input type="hidden" name="pay_type" value="1" />

                <div class="mt10 f-Recharge-btn">
                    <button id="btnSubmit" type="submit" onsubmit="return false " href="javascript:;" class="orgBtn">确认支付</button>
                </div>
            </form>
        </section>

        <input id="hidIsHttps" type="hidden" value="0" />



    </div>
</body>
</html>
<script language="javascript" type="text/javascript">

    $(function () {
        var c;
        var g = false;
        var a = null;
        var e = function () {
            $("#ulOption > li").each(function () {
                var n = $(this);
                n.click(function () {
                    g = false;
                    c = n.attr("money");
                    n.children("a").addClass("z-sel");
                    n.siblings().children().removeClass("z-sel").removeClass("z-initsel");
                    var needMoney = parseFloat(n.attr("money")).toFixed(2);
                    if (needMoney <= 0) needMoney = 0.01;
                    $("#price").val(needMoney);
                })
            });
            $("#ulBankList > li").each(function (m) {
                var n = $(this);
                n.click(function () {
                    if (m < 2) return;
                    $("#pay_type").val(n.attr("payType"));
                    n.children("a").addClass("z-initsel");
                    n.siblings().children().removeClass("z-initsel");
                })
            });

        };
        e()
    });
    $("#btnSubmit").click(function () {
        var id = $("#price").val();
        var price = $("#pay_id").val();
        if (id.trim().length == 0 || price.trim().length == 0) {
            alert("用户或金额为空!");
            return false;
        }

    })
</script>


