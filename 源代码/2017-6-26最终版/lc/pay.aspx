<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="lc_pay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>结算页面</title>

    <link href="css/amazeui.css" rel="stylesheet" />
    <link href="css/demo.css" rel="stylesheet" />
    <link href="css/cartstyle.css" rel="stylesheet" />
    <link href="css/jsstyle.css" rel="stylesheet" />
    <script src="js/address.js"></script>
    <style type="text/css">
        .price-now {
            outline: none;
            border: none;
        }

        .number {
            outline: none;
            border: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="am-form am-form-horizontal">
        <div class="clear"></div>
        <div class="concent">
            <!--地址 -->
            <div class="paycont">
                <div class="address">
                    <h3>确认收货地址 </h3>
                    <div class="control">
                        <div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
                    </div>
                    <div class="clear"></div>
                    <ul>
                        <div class="per-border"></div>
                        <li class="user-addresslist defaultAddr">

                            <div class="address-left">
                                <div class="user DefaultAddr">

                                    <span class="buy-address-detail">
                                        <span class="buy-user">艾迪 </span>
                                        <span class="buy-phone">15888888888</span>
                                    </span>
                                </div>
                                <div class="default-address DefaultAddr">
                                    <span class="buy-line-title buy-line-title-type">收货地址：</span>
                                    <span class="buy--address-detail">
                                        <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">洪山</span>区
										<span class="street">雄楚大道666号(中南财经政法大学)</span>
                                    </span>

                                    </span>
                                </div>
                                <ins class="deftip">默认地址</ins>
                            </div>
                            <div class="address-right">
                                <a href="../person/address.html">
                                    <span class="am-icon-angle-right am-icon-lg"></span></a>
                            </div>
                            <div class="clear"></div>

                            <div class="new-addr-btn">
                                <a href="#" class="hidden">设为默认</a>
                                <span class="new-addr-bar hidden">|</span>
                                <a href="#">编辑</a>
                                <span class="new-addr-bar">|</span>
                                <a href="javascript:void(0);" onclick="delClick(this);">删除</a>
                            </div>

                        </li>
                        <div class="per-border"></div>
                        <li class="user-addresslist">
                            <div class="address-left">
                                <div class="user DefaultAddr">

                                    <span class="buy-address-detail">
                                        <span class="buy-user">艾迪 </span>
                                        <span class="buy-phone">15877777777</span>
                                    </span>
                                </div>
                                <div class="default-address DefaultAddr">
                                    <span class="buy-line-title buy-line-title-type">收货地址：</span>
                                    <span class="buy--address-detail">
                                        <span class="province">湖北</span>省
										<span class="city">武汉</span>市
										<span class="dist">武昌</span>区
										<span class="street">东湖路75号众环大厦9栋9层999</span>
                                    </span>

                                    </span>
                                </div>
                                <ins class="deftip hidden">默认地址</ins>
                            </div>
                            <div class="address-right">
                                <span class="am-icon-angle-right am-icon-lg"></span>
                            </div>
                            <div class="clear"></div>

                            <div class="new-addr-btn">
                                <a href="#">设为默认</a>
                                <span class="new-addr-bar">|</span>
                                <a href="#">编辑</a>
                                <span class="new-addr-bar">|</span>
                                <a href="javascript:void(0);" onclick="delClick(this);">删除</a>
                            </div>

                        </li>

                    </ul>

                    <div class="clear"></div>
                </div>
                <!--物流 -->
                <div class="logistics">
                    <h3>选择物流方式</h3>
                    <ul class="op_express_delivery_hot">
                        <li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position: 0px -468px"></i>圆通<span></span></li>
                        <li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position: 0px -1008px"></i>申通<span></span></li>
                        <li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position: 0px -576px"></i>韵达<span></span></li>
                        <li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right" style="background-position: 0px -324px"></i>中通<span></span></li>
                        <li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right" style="background-position: 0px -180px"></i>顺丰<span></span></li>
                    </ul>
                </div>
                <div class="clear"></div>

                <!--订单 -->
                <div class="concent">
                    <div id="payTable">
                        <h3>确认订单信息</h3>
                        <div class="cart-table-th">
                            <div class="wp">

                                <div class="th th-item">
                                    <div class="td-inner">商品信息</div>
                                </div>
                                <div class="th th-price">
                                    <div class="td-inner">单价</div>
                                </div>
                                <div class="th th-amount">
                                    <div class="td-inner">数量</div>
                                </div>
                                <div class="th th-sum">
                                    <div class="td-inner">金额</div>
                                </div>
                                <div class="th th-sum">
                                    <div class="td-inner">操作</div>
                                </div>


                            </div>
                        </div>
                        <div class="clear"></div>


                        <div id="xmain">
                        </div>




                        <div class="clear"></div>
                    </div>


                    </tr>
                </div>
                <div class="clear"></div>
                <div class="pay-total">
                    <!--留言-->
                    <div class="order-extra">
                        <div class="order-user-info">
                            <div id="holyshit257" class="memo">
                                <label>买家留言：</label>
                                <input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
                                <div class="msg hidden J-msg">
                                    <p class="error">最多输入500个字符</p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="clear"></div>
                </div>

                <!--信息 -->
                <div class="order-go clearfix">
                    <div class="pay-confirm clearfix">
                        <div class="box">
                            <div tabindex="0" id="holyshit267" class="realPay">
                                <em class="t">实付款：</em>
                                <span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="hesum">00 .00</em>
                                </span>
                            </div>

                            <div id="holyshit268" class="pay-address">

                                <p class="buy-footer-address">
                                    <span class="buy-line-title buy-line-title-type">寄送至：</span>
                                    <span class="buy--address-detail">
                                        <span class="province">湖北</span>省
												<span class="city">武汉</span>市
												<span class="dist">洪山</span>区
												<span class="street">雄楚大道666号(中南财经政法大学)</span>
                                    </span>
                                    </span>
                                </p>
                                <p class="buy-footer-address">
                                    <span class="buy-line-title">收货人：</span>
                                    <span class="buy-address-detail">
                                        <span class="buy-user">艾迪 </span>
                                        <span class="buy-phone">15871145629</span>
                                    </span>
                                </p>
                            </div>
                        </div>

                        <div id="holyshit269" class="submitOrder">
                            <div class="go-btn-wrap">
                                <a id="Go" href="javascript:void(0)" class="btn-go" onclick="tj()" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
                                <p id="isp" style="display: none">
                                    <button type="button" class="am-btn am-btn-secondary am-animation-delay-2">账户余额不足请充值!</button>
                                </p>
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>

            <div class="clear"></div>
        </div>
        </div>

			<div class="theme-popover-mask"></div>
        <div class="theme-popover">

            <!--标题 -->
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
            </div>
            <hr />

            <div class="am-u-md-12">

                <div class="am-form-group">
                    <label for="user-name" class="am-form-label">收货人</label>
                    <div class="am-form-content">
                        <input type="text" id="user-name" placeholder="收货人">
                    </div>
                </div>

                <div class="am-form-group">
                    <label for="user-phone" class="am-form-label">手机号码</label>
                    <div class="am-form-content">
                        <input id="user-phone" placeholder="手机号必填" type="email">
                    </div>
                </div>

                <div class="am-form-group">
                    <label for="user-phone" class="am-form-label">所在地</label>
                    <div class="am-form-content address">
                        <select data-am-selected>
                            <option value="a">浙江省</option>
                            <option value="b">湖北省</option>
                        </select>
                        <select data-am-selected>
                            <option value="a">温州市</option>
                            <option value="b">武汉市</option>
                        </select>
                        <select data-am-selected>
                            <option value="a">瑞安区</option>
                            <option value="b">洪山区</option>
                        </select>
                    </div>
                </div>

                <div class="am-form-group">
                    <label for="user-intro" class="am-form-label">详细地址</label>
                    <div class="am-form-content">
                        <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
                        <small>100字以内写出你的详细地址...</small>
                    </div>
                </div>

                <div class="am-form-group theme-poptit">
                    <div class="am-u-sm-9 am-u-sm-push-3">
                        <div class="am-btn am-btn-danger">保存</div>
                        <div class="am-btn am-btn-danger close">取消</div>
                    </div>
                </div>
            </div>

        </div>

        <div class="clear"></div>
    </form>
</body>
</html>
<script type="text/javascript">
    function tj() {
        var men = $("#hesum").text();
        if ($("#hesum").text() == "00 .00") {
            return false;
        }
        else {
            $.ajax({
                url: "ajax/tijiao.ashx",
                data: { "men": men },
                type: "post",
                dataType: "json",
                success: function (data) {
                    if (data.ok == "no") {
                        window.location.href = "../wqf/login.aspx";
                    }
                    if (data.ok == "wu") {
                        $("#isp").fadeIn();
                        window.setTimeout(function () {
                            $("#isp").fadeOut();
                            window.location.href = "../wqf/recharge.aspx";
                        }, 3000)
                    }
                    if (data.ok == "you") {
                        window.location.href = "success.aspx?men="+men+"";
                    }
                }
            });
        }
    }
    $("#btn1").click(function () {

    })

    load();
    function minjian(id) {
        var number = 0;
        var pri = 0;
        var adds = document.getElementsByClassName("text_box");
        for (var i = 0; i < adds.length; i++) {

            if (adds[i].name == id) {
                var he = parseInt(adds[i].value)
                if (he != 1) {
                    adds[i].value = he - 1;
                    number = he - 1;
                }

            }
        }
        var price = document.getElementsByClassName("price-now");
        for (var i = 0; i < price.length; i++) {
            if (price[i].name == id) {
                pri = price[i].value;

            }
        }
        var sum = document.getElementsByClassName("number");
        for (var i = 0; i < sum.length; i++) {
            if (sum[i].name == id) {
                if (number != 0) {
                    sum[i].value = (number * pri).toFixed(2);
                }

            }
        }
        var sumdo = document.getElementsByClassName("number");
        var sumhe = 0;
        for (var i = 0; i < sumdo.length; i++) {

            sumhe += parseInt(sum[i].value);
        }
        $("#hesum").text(sumhe.toFixed(2));
        $.ajax({
            url: "ajax/number.ashx",
            data: { "id": id, "pr": "min" },
            type: "post",
            dataType: "json",
            success: function (data) {
                if (data.ok != "no") {
                    //load();
                }
            }

        });
    }

    function add(id) {

        var number = 0;
        var pri = 0;
        var adds = document.getElementsByClassName("text_box");
        for (var i = 0; i < adds.length; i++) {

            if (adds[i].name == id) {
                var he = parseInt(adds[i].value)
                adds[i].value = he + 1;
                number = he + 1;
            }
        }
        var price = document.getElementsByClassName("price-now");
        for (var i = 0; i < price.length; i++) {
            if (price[i].name == id) {
                pri = price[i].value;

            }
        }
        var sum = document.getElementsByClassName("number");
        for (var i = 0; i < sum.length; i++) {
            if (sum[i].name == id) {
                sum[i].value = (number * pri).toFixed(2);

            }
        }
        var sumdo = document.getElementsByClassName("number");
        var sumhe = 0;
        for (var i = 0; i < sumdo.length; i++) {

            sumhe += parseInt(sum[i].value);
        }
        $("#hesum").text(sumhe.toFixed(2));
        $.ajax({
            url: "ajax/number.ashx",
            data: { "id": id, "pr": "add" },
            type: "post",
            dataType: "json",
            success: function (data) {
                if (data.ok != "no") {
                    //load();
                }
            }

        });
    }
    function deletes(id) {
        $.ajax({
            url: "ajax/number.ashx",
            data: { "id": id, "pr": "delete" },
            type: "post",
            dataType: "json",
            success: function (data) {
                if (data.ok != "no") {
                    load()
                }
            }

        });
    }
    function load() {
        $.ajax({
            url: "ajax/load.ashx",
            data: {},
            type: "post",
            dataType: "json",
            success: function (data) {
                if (data.ok == "null") {
                    window.location.href = "../wqf/login.aspx";
                }
                else {
                    $("#xmain").html("");
                    var str = "";
                    if (data.length == 0) {
                        $("#hesum").text("00 .00");
                    }
                    console.log(data);
                    for (var i in data) {
                        str += "<div class=\"bundle  bundle-last\">"
                        str += "<div class=\"bundle-main\">";
                        str += "<ul class=\"item-content clearfix\">";
                        str += "<div class=\"pay-phone\">";
                        str += "<li class=\"td td-item\">";
                        str += "<div class=\"item-pic\">";
                        str += "<img src=\"" + data[i].Cartimg + "\" style=\"width: 100%\" class=\"\" />";
                        str += "</div>";
                        str += "<div class=\"item-info\">";
                        str += "<div class=\"item-basic-info\" style=\"line-height:40px\">";
                        str += data[i].Cartname;
                        str += "</div>";
                        str += "</div>";
                        str += "</li>";
                        str += "<li class=\"td td-price\">";
                        str += "<div class=\"item-price price-promo-promo\">";
                        str += "<div class=\"price-content\" style=\"line-height:40px\">";
                        str += "<input class=\"price-now\"readonly=\"true\" name=\"" + data[i].ids + "\" value=\"" + data[i].Unit_Price + "\" ></input>";
                        str += "</div>";
                        str += "</div>";
                        str += "</li>";
                        str += "</div>";
                        str += "<li class=\"td td-amount\">";
                        str += "<div class=\"amount-wrapper \">";
                        str += "<div class=\"item-amount \">";
                        str += "<span class=\"phone-title\">购买数量</span>";
                        str += "<div class=\"sl\" style=\"line-height:50px;\">";
                        str += "<input class=\"min am-btn\" name=\"\" type=\"button\" value=\"-\" style=\"float: left; margin-left: 50px;\" onclick=\"minjian(" + data[i].ids + ")\" >";
                        str += "<input class=\"text_box\" name=\"" + data[i].ids + "\" type=\"text\" value=\"" + data[i].Number + "\" style=\"width: 30px; float: left\" />";
                        str += "<input class=\"add am-btn\" name=\"" + data[i].ids + "\" type=\"button\" value=\"+\" style=\"float: left\" onclick=\"add(" + data[i].ids + ")\" />";
                        str += "</div>";
                        str += "</div>";
                        str += "</div>";
                        str += "</li>";
                        str += "<li class=\"td td-sum\">";
                        str += "<div class=\"td-inner\">";
                        str += "<input tabindex=\"0\" class=\"number\" readonly=\"true\"  name=\"" + data[i].ids + "\" value=\"" + data[i].sum + "\"></input>";
                        str += "</div>";
                        str += "</li>";
                        str += "<li class=\"td td-sum\">";
                        str += "<div class=\"td-inner\">";
                        str += "<input type=\"button\" value=\"删除\" class=\"am-btn am-btn-primary\" onclick=\"deletes(" + data[i].ids + ")\" />";
                        str += "</div>";
                        str += "</li>";
                        str += "</ul>";
                        str += "<div class=\"clear\"></div>";
                        str += "</div>";
                    }
                    $("#hesum").text(data[data.length - 1].he);
                    $("#xmain").append(str);



                }
            }
        });
    }
</script>
