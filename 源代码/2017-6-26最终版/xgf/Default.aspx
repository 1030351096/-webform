<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="xgf_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/StyleSheet.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">





        <div class="container-fluid">
            <%--618活动横幅--%>
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 hidden-xs" style="cursor: pointer;">
                    <img src="images/618tiaofu.jpg" style="width: 100%;" />
                </div>
            </div>



            <%--登陆，个人中心等一行--%>
            <div class="row">
                <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12"></div>
                <%--登陆--%>
                <div class="col-lg-2 col-md-12 col-sm-12 col-xs-12 denglu">
                    <div class="denglua">
                        <span id="yonghu" runat="server">食趣</span>&nbsp;欢迎您！
                        <asp:Button ID="tuichudenglu" runat="server" Text="退出登录" />
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
                    <div class="denglua xiaoshouji" style="background-image: url(images/icon1.png); background-position: -7px -250px;"></div>
                    <div class="denglua denglu_3">手机食趣APP</div>

                </div>
                <%--个人中心--%>
                <div class="col-md-4 gerenzhongxin">
                    <div class="gerenzhongxina xiaoqiandao" style="background-image: url(images/icon1.png); background-position: -49px -65px;"></div>
                    <div class="gerenzhongxina meiriqiandao">每日签到</div>
                    <div class="gerenzhongxina">|</div>
                    <div class="gerenzhongxina wodedingdan">我的订单</div>
                    <div class="gerenzhongxina">|</div>

                    <a href="gerenzhongxin.aspx">
                        <div class="gerenzhongxin1">
                            <div class="gerenzhongxina gerenzhopngxinzi">个人中心</div>
                            <div class="gerenzhongxina" style="width: 12px; height: 6px; margin-top: 11px; background-image: url(images/xiajiantou.jpg); background-repeat: round;"></div>
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
                <a href="index.aspx">
                    <div class="col-lg-2 col-md-6 col-sm-6 col-xs-12">
                        <img src="images/logo.jpg" class="logo" />
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
                                <img src="images/icon1.png" style="position: relative; left: -940px; top: -195px;" />
                            </div>
                            <div id="gouwuchewenzi">购物车</div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-1 col-md-6 col-sm-6 col-xs-12" style="cursor: pointer;">
                    <img src="images/618dongtu.gif" />
                </div>
            </div>








            <div style="width: 100%; height: 1px; border-bottom: 2px solid #ff0000; margin-top: 30px; margin-bottom: 50px;"></div>
























            <hr />
            <%--底部第一行--%>
            <div class="row">
                <div class="col-md-2 col-sm-6 col-xs-12"></div>
                <%--底部1--%>
                <div class="col-md-2 col-sm-6 col-xs-12 dibu_1 dibu_1_1">
                    <%--每一个底部图标框--%>
                    <div class="dibu_1_v">
                        <div style="height: 10%;"></div>
                        <%--图片--%>
                        <div class="dibu_1_1_v" style="background-image: url(images/icon1.png); background-position: -751px 0px;"></div>
                        <%--文字--%>
                        <div class="dibu_1_2_v">
                            <span class="dibu_1_2_1">100%正品</span><br />
                            <span class="dibu_1_2_2">正品保障&nbsp;假一赔十</span>
                        </div>


                    </div>
                </div>
                <div class="col-md-2 col-sm-6 col-xs-12 dibu_1 dibu_1_2">
                    <%--每一个底部图标框--%>
                    <div class="dibu_1_v">
                        <div style="height: 10%;"></div>
                        <%--图片--%>
                        <div class="dibu_1_1_v" style="background-image: url(images/icon1.png); background-position: -812px 0px;"></div>
                        <%--文字--%>
                        <div class="dibu_1_2_v">
                            <span class="dibu_1_2_1">低价保障</span><br />
                            <span class="dibu_1_2_2">缩减中间环节&nbsp;确保低价</span>
                        </div>


                    </div>
                </div>
                <div class="col-md-2 col-sm-6 col-xs-12 dibu_1 dibu_1_3">
                    <%--每一个底部图标框--%>
                    <div class="dibu_1_v">
                        <div style="height: 10%;"></div>
                        <%--图片--%>
                        <div class="dibu_1_1_v" style="background-image: url(images/icon1.png); background-position: -873px 0px;"></div>
                        <%--文字--%>
                        <div class="dibu_1_2_v">
                            <span class="dibu_1_2_1">30天无忧退货</span><br />
                            <span class="dibu_1_2_2">国内退货&nbsp;售后无忧</span>
                        </div>


                    </div>
                </div>
                <div class="col-md-2 col-sm-6 col-xs-12 dibu_1 dibu_1_4">
                    <%--每一个底部图标框--%>
                    <div class="dibu_1_v">
                        <div style="height: 10%;"></div>
                        <%--图片--%>
                        <div class="dibu_1_1_v" style="background-image: url(images/icon1.png); background-position: -935px 0px;"></div>
                        <%--文字--%>
                        <div class="dibu_1_2_v">
                            <span class="dibu_1_2_1">满88包邮</span><br />
                            <span class="dibu_1_2_2">部分特殊商品除外</span>
                        </div>


                    </div>
                </div>
            </div>





            <%--底部第二行--%>
            <div class="row">
                <div class="col-md-2 col-sm-6 col-xs-12"></div>
                <%--底部logo、关于我们--%>
                <div class="col-md-2 col-sm-6 col-xs-12 dibu_2 dibu_2_1">
                    <%--底部logo--%>
                    <div class="dibu_2_1_1">
                        <img src="images/logo.jpg" />
                    </div>
                    <%--关于我们--%>
                    <div class="dibu_2_1_2">
                        <div class=" dibu_2_1_2_0"></div>
                        <span class=" dibu_2_1_2_0">关于我们</span>
                        <div class="dibu_2_1_2_v dibu_2_1_2_v1" style="background-image: url(images/icon1.png); background-position: -752px -69px;">
                            <div class="dibu_2_1_2_v11">
                                <img src="images/2dcode-wb.jpg" />
                            </div>
                        </div>
                        <div class="dibu_2_1_2_v dibu_2_1_2_v2" style="background-image: url(images/icon1.png); background-position: -796px -69px;">
                            <div class="dibu_2_1_2_v21">
                                <img src="images/2dcode-wx.jpg" />
                            </div>
                        </div>
                        <div class="dibu_2_1_2_v dibu_2_1_2_v3" style="background-image: url(images/icon1.png); background-position: -840px -69px;">
                            <div class="dibu_2_1_2_v31">
                                <img src="images/2dcode-yx.jpg" />
                            </div>
                        </div>
                        <div style="clear: both"></div>



                    </div>
                </div>

                <%--好多字2--%>
                <div class="col-md-1 col-sm-6 col-xs-6 dibu_2 dibu_2_2">
                    <span class="dibu_2_2_1">考拉保障</span><br />
                    <br />
                    <span class="dibu_2_2_2">假一赔十</span><br />
                    <span class="dibu_2_2_2">廉正监督</span><br />
                </div>
                <div class="col-md-1 col-sm-6 col-xs-6 dibu_2 dibu_2_3">
                    <span class="dibu_2_2_1">新手指南</span><br />
                    <br />
                    <span class="dibu_2_2_2">购物流程</span><br />
                    <span class="dibu_2_2_2">支付方式</span><br />
                    <span class="dibu_2_2_2">通关税费</span><br />
                    <span class="dibu_2_2_2">常见问题</span><br />
                </div>
                <div class="col-md-1 col-sm-6 col-xs-6 dibu_2 dibu_2_4">
                    <span class="dibu_2_2_1">售后服务</span><br />
                    <br />
                    <span class="dibu_2_2_2">退货政策</span><br />
                    <span class="dibu_2_2_2">购物流程</span><br />
                    <span class="dibu_2_2_2">退款说明</span><br />
                    <span class="dibu_2_2_2">联系客服</span><br />
                    <span class="dibu_2_2_2">先行赔付</span><br />
                </div>
                <div class="col-md-1 col-sm-6 col-xs-6 dibu_2 dibu_2_5">
                    <span class="dibu_2_2_1">物流配送</span><br />
                    <br />
                    <span class="dibu_2_2_2">配送方式</span><br />
                    <span class="dibu_2_2_2">配送服务</span><br />
                    <span class="dibu_2_2_2">运费标准</span><br />
                    <span class="dibu_2_2_2">物流跟踪</span><br />
                </div>
                <div class="col-md-1 col-sm-6 col-xs-6 dibu_2 dibu_2_6" style="border: 0px;">
                    <span class="dibu_2_2_1">关于我们</span><br />
                    <br />
                    <span class="dibu_2_2_2">联系我们</span><br />
                    <span class="dibu_2_2_2">招商合作</span><br />
                    <span class="dibu_2_2_2">销售联盟</span><br />
                    <span class="dibu_2_2_2">CEO邮箱</span><br />
                </div>
                <div class="col-md-1 col-sm-6 col-xs-6 dibu_2 dibu_2_7" style="border: 0px;">
                    <div class="dibu_2_7_1">
                        <img src="images/2dcode-app.jpg" />
                    </div>
                    <div class="dibu_2_7_2">
                        <br />
                        <span>&nbsp;&nbsp;&nbsp;&nbsp;扫描下载手机版</span>
                    </div>
                </div>

            </div>





            <%--底部第三行--%>
            <div class="row">
                <%--底部3--%>
                <div class="col-md-12 col-sm-12 col-xs-12 dibu_3">
                    <span>About NetEase - 公司简介 -联系方式 - 友情链接 - 招聘信息 - 客户服务 - 隐私政策 - 网络营销 - 网站地图 - 网易考拉海购</span><br />
                    <span>网络文化经营许可证：浙网文[2016]0155-055号&nbsp;&nbsp;增值电信业务经营许可证：浙B2-20090185-3&nbsp;&nbsp;出版物经营许可证：新出发浙杭经零字第00136号&nbsp;&nbsp;自营经营者信息</span><br />
                    <span>浙公网安备 330100020000066号&nbsp;&nbsp;网易公司版权所有©1997-2017</span><br />
                </div>

            </div>










        </div>
    </form>
</body>
</html>
