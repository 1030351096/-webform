<%@ Page Language="C#" AutoEventWireup="true" CodeFile="introduction.aspx.cs" Inherits="lc_introduction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.min.js"></script>
    <link href="css/amazeui.css" rel="stylesheet" />
    <link href="css/amazeui.magnifier.min.css" rel="stylesheet" />
    <link href="css/demo.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <script src="js/amazeui.magnifier.min.js"></script>
    <script src="js/amazeui.js"></script>
    <script src="js/list.js"></script>
    <link href="../xgf/css/StyleSheet.css" rel="stylesheet" />
    <title>食趣自营嗨购  产品详情</title>
</head>
<body>
    <div class="container-fluid">
        <%--618活动横幅--%>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-xs" style="cursor: pointer;">
                <img src="../xgf/images/618tiaofu.jpg" style="width: 100%;" />
            </div>
        </div>



        <%--登陆，个人中心等一行--%>
        <div class="row">
            <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
            <%--登陆--%>
            <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12 denglu">
                <div class="denglua">
                    <span id="yonghu" runat="server">食趣</span>&nbsp;欢迎您！
                        <input type="button" value="退出登录" class="btn" />
                </div>
            </div>
            <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12 denglu">
                <a href="../wqf/login.aspx">
                    <div class="denglua denglu_1">登陆</div>
                </a>
                <div class="denglua">|</div>
                <a href="../wqf/register.aspx">
                    <div class="denglua denglu_2">免费注册</div>
                </a>
                <div class="denglua xiaoshouji" style="background-image: url(../xgf/images/icon1.png); background-position: -7px -250px;"></div>
                <div class="denglua denglu_3">手机食趣APP</div>

            </div>
            <%--个人中心--%>
            <div class="col-md-4 gerenzhongxin">
                <div class="gerenzhongxina xiaoqiandao" style="background-image: url(../xgf/images/icon1.png); background-position: -49px -65px;"></div>
                <div class="gerenzhongxina meiriqiandao">每日签到</div>
                <div class="gerenzhongxina">|</div>
                <div class="gerenzhongxina wodedingdan">我的订单</div>
                <div class="gerenzhongxina">|</div>

                <a href="gerenzhongxin.aspx">
                    <div class="gerenzhongxin1">
                        <div class="gerenzhongxina gerenzhopngxinzi">个人中心</div>
                        <div class="gerenzhongxina" style="width: 12px; height: 6px; margin-top: 11px; background-image: url(../xgf/images/xiajiantou.jpg); background-repeat: round;"></div>
                        <%--个人中心下拉列表--%>
                        <div class="gerenzhongxin1xiala">
                            <div class="grzx1 grzx11">&nbsp;&nbsp;&nbsp;我的优惠卷</div>
                            <div class="grzx1 grzx12">&nbsp;&nbsp;&nbsp;我的食趣豆</div>
                            <div style="width: 100%; height: 1px; border-bottom: 1px solid #808080;"></div>
                            <div class="grzx1 grzx13">&nbsp;&nbsp;&nbsp;账户安全</div>
                            <div class="grzx1 grzx14">&nbsp;&nbsp;&nbsp;我的实名认证</div>
                            <div style="width: 100%; height: 1px; border-bottom: 1px solid #808080;"></div>
                            <div class="grzx1 grzx15">&nbsp;&nbsp;&nbsp;我收藏的商品</div>
                            <div class="grzx1 grzx16">&nbsp;&nbsp;&nbsp;我关注的商品</div>
                            <div style="width: 100%; height: 1px; border-bottom: 1px solid #808080;"></div>
                            <div class="grzx1 grzx17">&nbsp;&nbsp;&nbsp;售后管理</div>
                        </div>
                    </div>
                </a>



                <div class="gerenzhongxina">|</div>
                <div class="gerenzhongxina kehufuwu">客户服务</div>
                <div class="gerenzhongxina">|</div>
                <div class="gerenzhongxina chongzhizhongxin">充值中心</div>
                <div class="gerenzhongxina">|</div>
                <div class="gerenzhongxina gaozhi">消费者告知书</div>
                <div class="gerenzhongxina">|</div>
                <div class="gerenzhongxina gengduo">更多</div>


            </div>
        </div>


        <%--logo图标、搜索框、购物车图标--%>
        <div class="row sousuodeng">
            <div class="col-lg-2 col-md-6 col-sm-12 col-xs-12"></div>
            <%--logo图标--%>
            <a href="../xgf/index.aspx">
                <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12">
                    <img src="../xgf/images/logo.jpg" class="logo" style="width: 60%; margin-top: -30px;" />
                </div>
            </a>
            <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12"></div>
            <%--搜索--%>
            <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 sousuo">
                <%--空行--%>
                <div style="height: 15%;"></div>
                <%--搜索框--%>
                <input type="text" id="sousuokuang" class="form-control" placeholder="食趣自营店" />
                <%--搜索按钮--%>
                <div id="sousuoanniu" class="btn btn-info btn-lg">
                    <span class="glyphicon glyphicon-search"></span>
                </div>
            </div>
            <%--购物车--%>
            <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12">
                <a href="../lc/pay.aspx">
                    <div class="gouwuche">
                        <%--购物车小图标--%>
                        <div id="gouwuchexiaotubiao">
                            <img src="../xgf/images/icon1.png" style="position: relative; left: -940px; top: -195px;" />
                        </div>
                        <div id="gouwuchewenzi">购物车</div>
                    </div>
                </a>
            </div>
            <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12" style="cursor: pointer;">
                <img src="../xgf/images/618dongtu.gif" />
            </div>
        </div>








        <div style="width: 100%; height: 1px; border-bottom: 2px solid #ff0000; margin-top: 30px; margin-bottom: 50px;"></div>

















        <!--分类-->
        <div class="nav-table">
            <div class="long-title"><span class="all-goods">全部分类</span></div>
            <div class="nav-cont">
                <ul>
                    <li class="index"><a href="#">首页</a></li>
                </ul>
            </div>
        </div>
        <ol class="am-breadcrumb am-breadcrumb-slash">
            <li><a href="#">首页</a></li>
            <li><a href="#">分类</a></li>
            <li class="am-active">内容</li>
        </ol>
        <!--放大镜-->
        <div class="item-inform">
            <div class="clearfixLeft" id="clearcontent">
                <div class="box">
                    <div class="tb-booth tb-pic" style="width: 300px;">

                        <figure class="am-magnifier">
                            <img width="300" id="daimg" runat="server" height="300" style="border: 1px solid red;" alt="Bing square image" data-am-magnify />
                            <div data-am-shape="square"></div>
                            <div class="am-margin-left-sm">
                                <img width="900" id="xiaoimg" runat="server" height="900" alt="Bing square image" />
                            </div>
                        </figure>

                    </div>
                    <ul class="tb-thumb" id="thumblist">
                        <li>
                            <div class="tb-pic tb-s40" style="border: 1px solid red">
                                <img id="img1" runat="server" class="imgs" />
                            </div>
                        </li>
                        <li class="">
                            <div class="tb-pic tb-s40">
                                <img id="img2" runat="server" class="imgs" />
                            </div>
                        </li>
                        <li class="">
                            <div class="tb-pic tb-s40">
                                <img id="img3" runat="server" class="imgs" />
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="clear"></div>
            </div>
            <div class="clearfixRight">
                <!--规格属性-->
                <!--名称-->
                <div class="tb-detail-hd">
                    <h1 id="name" runat="server"></h1>
                </div>
                <div class="tb-detail-list">
                    <!--价格-->
                    <div class="tb-detail-price" style="height: 260px;">
                        <li class="price iteminfo_price">
                            <dt>促销价</dt>
                            <dd><em>¥</em><b class="sys_item_price" id="csj" runat="server"></b>  </dd>
                        </li>
                        <li class="price iteminfo_mktprice">
                            <dt>原价</dt>
                            <dd><em>¥</em><b class="sys_item_mktprice" id="yj" runat="server"></b></dd>
                        </li>
                        <li class="price iteminfo_mktprice">
                            <dt>关键词</dt>
                            <dd style="font-size: 14px; color: #808080" id="gjc" runat="server"></dd>
                        </li>
                        <li class="price iteminfo_mktprice">
                            <dt>产地</dt>
                            <dd id="cd" style="line-height: 30px;" runat="server"></dd>
                        </li>
                        <li class="price iteminfo_mktprice">
                            <dt>保质期</dt>
                            <dd id="bzq" runat="server"></dd>
                            天
                        </li>
                        <div class="clear"></div>
                    </div>

                    <div class="clear"></div>
                    <!--销量-->
                    <ul class="tm-ind-panel">
                        <li class="tm-ind-item tm-ind-sellCount canClick">
                            <div class="tm-indcon"><span class="tm-label">月销量</span><span id="xl" runat="server" class="tm-count"></span></div>
                        </li>
                        <li class="tm-ind-item tm-ind-sumCount canClick">
                            <div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count">6015</span></div>
                        </li>
                    </ul>
                    <div class="clear"></div>
                    <!--各种规格-->
                    <dl class="iteminfo_parameter sys_item_specpara">
                        <dt class="theme-login">
                            <div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div>
                        </dt>
                        <dd>
                            <!--操作页面-->
                            <div class="theme-popover-mask"></div>
                            <div class="theme-popover">
                                <div class="theme-span"></div>
                                <div class="theme-poptit">
                                    <a href="javascript:;" title="关闭" class="close">×</a>
                                </div>
                                <div class="theme-popbod dform">
                                    <form class="theme-signin" name="loginform" action="" runat="server" method="post">
                                        <div class="theme-signin-left">
                                            <div class="theme-options">
                                                <div class="cart-title number">数量</div>

                                                <dd>
                                                    <input id="min" class="am-btn am-btn-default" name="" type="button" value="-" />
                                                    <input id="text_box" name="" type="text" value="1" style="width: 30px;" readonly="true" />
                                                    <input id="add" class="am-btn am-btn-default" name="" type="button" value="+" />
                                                </dd>
                                            </div>
                                            <div class="clear"></div>
                                            <div class="btn-op">
                                                <div class="btn am-btn am-btn-warning">确认</div>
                                                <div class="btn close am-btn am-btn-warning">取消</div>
                                            </div>
                                        </div>
                                        <div class="theme-signin-right">
                                            <div class="img-info">
                                                <img src="../images/songzi.jpg" />
                                            </div>
                                            <div class="text-info">
                                                <span class="J_Price price-now">¥39.00</span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="clear"></div>
                                <!--活动	-->
                                <div class="shopPromotion gold">
                                    <div class="clear"></div>
                                    <div class="coupon">
                                        <dt class="tb-metatit"></dt>
                                    </div>
                                </div>

                                <div class="pay">
                                    <div class="pay-opt">
                                        <a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
                                        <a><span class="am-icon-heart am-icon-fw">收藏</span></a>

                                    </div>
                                    <li>
                                        <div class="clearfix tb-btn tb-btn-buy theme-login">
                                            <a id="LikBuy" title="点此按钮到下一步确认购买信息" href="javascript:void(0)">立即购买</a>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="clearfix tb-btn tb-btn-basket theme-login">
                                            <a id="LikBasket" title="加入购物车" href="javascript:void(0)"><i></i>加入购物车</a>
                                            <p id="isp" style="display: none">
                                                <button type="button" class="am-btn am-btn-secondary am-animation-delay-2">添加购物车成功!</button>
                                            </p>
                                        </div>
                                    </li>
                                </div>


                                <div class="clear"></div>





                                <!-- introduce-->
                                <div class="introduce">
                                    <div class="browse">
                                        <div class="mc">
                                            <ul>
                                                <div class="mt">
                                                    <h2>看了又看</h2>
                                                </div>

                                                <li class="first">
                                                    <div class="p-img">

                                                        <a href="#">
                                                            <img src="images/11.jpg" />
                                                        </a>
                                                    </div>
                                                    <div class="p-name">
                                                        <a href="#">【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
                                                        </a>
                                                    </div>
                                                    <div class="p-price"><strong>￥35.90</strong></div>
                                                </li>

                                                <hr />
                                                <li class="first">
                                                    <div class="p-img">

                                                        <a href="#">
                                                            <img src="images/21.jpg" />
                                                        </a>
                                                    </div>
                                                    <div class="p-name">
                                                        <a href="#">【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
                                                        </a>
                                                    </div>
                                                    <div class="p-price"><strong>￥35.90</strong></div>
                                                </li>

                                                <hr />
                                                <li class="first">
                                                    <div class="p-img">

                                                        <a href="#">
                                                            <img src="images/22.jpg" />
                                                        </a>
                                                    </div>
                                                    <div class="p-name">
                                                        <a href="#">【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
                                                        </a>
                                                    </div>
                                                    <div class="p-price"><strong>￥35.90</strong></div>
                                                </li>

                                                <hr />
                                                <li class="first">
                                                    <div class="p-img">

                                                        <a href="#">
                                                            <img src="images/13.webp.jpg" />
                                                        </a>
                                                    </div>
                                                    <div class="p-name">
                                                        <a href="#">【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
                                                        </a>
                                                    </div>
                                                    <div class="p-price"><strong>￥35.90</strong></div>
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="introduceMain">
                                    <div class="am-tabs" data-am-tabs>
                                        <ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
                                            <li class="am-active">
                                                <a href="#">
                                                    <span class="index-needs-dt-txt">宝贝详情</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="index-needs-dt-txt">全部评价</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="index-needs-dt-txt">猜你喜欢</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <div class="am-tabs-bd">
                                            <div class="am-tab-panel am-fade am-in am-active">
                                                <div class="J_Brand">
                                                    <div class="attr-list-hd tm-clear">
                                                        <h4>产品参数：</h4>
                                                    </div>
                                                    <div class="clear"></div>
                                                    <ul id="J_AttrUL">
                                                        <li title="">产品类型:&nbsp;<span id="lx" runat="server"></span></li>
                                                        <li title="">原料产地:&nbsp;巴基斯坦</li>
                                                        <li title="">产地:&nbsp;湖北省武汉市</li>
                                                        <li title="">配料表:&nbsp;进口松子、食用盐</li>
                                                        <li title="">产品规格:&nbsp;210g</li>
                                                        <li title="">保质期:&nbsp;180天</li>
                                                        <li title="">产品标准号:&nbsp;GB/T 22165</li>
                                                        <li title="">生产许可证编号：&nbsp;QS4201 1801 0226</li>
                                                        <li title="">储存方法：&nbsp;请放置于常温、阴凉、通风、干燥处保存 </li>
                                                        <li title="">食用方法：&nbsp;开袋去壳即食</li>
                                                    </ul>
                                                    <div class="clear"></div>
                                                </div>
                                                <div class="details">
                                                    <div class="attr-list-hd after-market-hd">
                                                        <h4>商品细节</h4>
                                                    </div>
                                                    <div class="twlistNews" id="listxq" runat="server">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="divid" runat="server" style="display: none"></div>
</body>
</html>
<script type="text/javascript">

    $(".imgs").click(function () {
        $(".imgs").parent().css("border", "0px solid red")
        $(this).parent().css("border", "1px solid red")
        $("#daimg").attr("src", $(this).attr("src"));
        $("#xiaoimg").attr("src", $(this).attr("src"));
    })


    $("#LikBasket").click(function () {

        var id = $("#divid").text();//编号
        var number = $("#text_box").val();//数量
        $.ajax({
            url: "ajax/Shopping .ashx",
            data: { "id": id, "number": number },
            type: "post",
            dataType: "json",
            success: function (data) {
                console.log(data);
                if (data.ok == "true") {
                    $("#isp").fadeIn();
                    window.setTimeout(function () {
                        $("#isp").fadeOut();
                    }, 3000)
                }
                else {
                    window.location.href = "../wqf/login.aspx";
                }
            }
        });
    })


</script>
