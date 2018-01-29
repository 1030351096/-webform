//每页显示多少条
var pcount = 20;
var tuijiancount = 4;
//现在的页
var now = 1;

var xiaoliangok = 0;
var jiageok = 0;
var sousuo = "";



//页面一加载就加载数据默认排序
data();
max();
tuijian();



//点击搜索按钮模糊搜索
$("#sousuoanniu").click(function () {
    sousuo = $("#sousuokuang").val();
    data();
    max();
});
$("#xuanfu_sousuoanniu").click(function () {
    sousuo = $("#xuanfu_sousuokuang").val();
    data();
    max();
});










//锚点鼠标移入
$(".topapp").mouseover(function () {
    $(".topapperweima").css("display", "block");
});
//锚点鼠标移出
$(".topapp").mouseleave(function () {
    $(".topapperweima").css("display", "none");
});






//底部鼠标移入第一个
$(".dibu_2_1_2_v1").mouseover(function () {
    $(".dibu_2_1_2_v11").css("display", "block");
});
//底部鼠标移出第一个
$(".dibu_2_1_2_v1").mouseleave(function () {
    $(".dibu_2_1_2_v11").css("display", "none");
});
//底部鼠标移入第二个
$(".dibu_2_1_2_v2").mouseover(function () {
    $(".dibu_2_1_2_v21").css("display", "block");
});
//底部鼠标移出第二个
$(".dibu_2_1_2_v2").mouseleave(function () {
    $(".dibu_2_1_2_v21").css("display", "none");
});
//底部鼠标移入第三个
$(".dibu_2_1_2_v3").mouseover(function () {
    $(".dibu_2_1_2_v31").css("display", "block");
});
//底部鼠标移出第三个
$(".dibu_2_1_2_v3").mouseleave(function () {
    $(".dibu_2_1_2_v31").css("display", "none");
});


//每日签到鼠标移入移出
$(".meiriqiandao").mouseover(function () {
    $(".meiriqiandao").css("color", "red");
});
$(".meiriqiandao").mouseleave(function () {
    $(".meiriqiandao").css("color", "black");
});

//我的订单鼠标移入移出
$(".wodedingdan").mouseover(function () {
    $(".wodedingdan").css("color", "red");
});
$(".wodedingdan").mouseleave(function () {
    $(".wodedingdan").css("color", "black");
});


//个人中心鼠标移入
$(".gerenzhongxin1").mousemove(function () {
    $(".gerenzhongxin1xiala").css("display", "block");
    $(".gerenzhopngxinzi").css("color", "red");
});
//个人中心鼠标移出
$(".gerenzhongxin1").mouseleave(function () {
    $(".gerenzhongxin1xiala").css("display", "none");
    $(".gerenzhopngxinzi").css("color", "black");
});
//我的优惠券鼠标移入移出
$(".grzx11").mouseover(function () {
    $(".grzx11").css("color", "red");
});
$(".grzx11").mouseleave(function () {
    $(".grzx11").css("color", "black");
});
//我的食趣豆鼠标移入移出
$(".grzx12").mouseover(function () {
    $(".grzx12").css("color", "red");
});
$(".grzx12").mouseleave(function () {
    $(".grzx12").css("color", "black");
});
//账户安全鼠标移入移出
$(".grzx13").mouseover(function () {
    $(".grzx13").css("color", "red");
});
$(".grzx13").mouseleave(function () {
    $(".grzx13").css("color", "black");
});
//我的实名认证鼠标移入移出
$(".grzx14").mouseover(function () {
    $(".grzx14").css("color", "red");
});
$(".grzx14").mouseleave(function () {
    $(".grzx14").css("color", "black");
});
//我的收藏鼠标移入移出
$(".grzx15").mouseover(function () {
    $(".grzx15").css("color", "red");
});
$(".grzx15").mouseleave(function () {
    $(".grzx15").css("color", "black");
});
//我的关注鼠标移入移出
$(".grzx16").mouseover(function () {
    $(".grzx16").css("color", "red");
});
$(".grzx16").mouseleave(function () {
    $(".grzx16").css("color", "black");
});
//售后管理鼠标移入移出
$(".grzx17").mouseover(function () {
    $(".grzx17").css("color", "red");
});
$(".grzx17").mouseleave(function () {
    $(".grzx17").css("color", "black");
});


//客户服务鼠标移入移出
$(".kehufuwu").mouseover(function () {
    $(".kehufuwu").css("color", "red");
});
$(".kehufuwu").mouseleave(function () {
    $(".kehufuwu").css("color", "black");
});

//充值中心鼠标移入移出
$(".chongzhizhongxin").mouseover(function () {
    $(".chongzhizhongxin").css("color", "red");
});
$(".chongzhizhongxin").mouseleave(function () {
    $(".chongzhizhongxin").css("color", "black");
});

//消费者告知书鼠标移入移出
$(".gaozhi").mouseover(function () {
    $(".gaozhi").css("color", "red");
});
$(".gaozhi").mouseleave(function () {
    $(".gaozhi").css("color", "black");
});

//更多鼠标移入移出
$(".gengduo").mouseover(function () {
    $(".gengduo").css("color", "red");
});
$(".gengduo").mouseleave(function () {
    $(".gengduo").css("color", "black");
});
















//登陆1鼠标移入
$(".denglu_1").mousemove(function () {
    $(".denglu_1").css("color", "red");
});
//登陆1鼠标移出
$(".denglu_1").mouseleave(function () {
    $(".denglu_1").css("color", "black");
});
//登陆2鼠标移入
$(".denglu_2").mousemove(function () {
    $(".denglu_2").css("color", "red");
});
//登陆1鼠标移出
$(".denglu_2").mouseleave(function () {
    $(".denglu_2").css("color", "black");
});
//登陆3鼠标移入
$(".denglu_3").mousemove(function () {
    $(".denglu_3").css("color", "red");
});
//登陆1鼠标移出
$(".denglu_3").mouseleave(function () {
    $(".denglu_3").css("color", "black");
});






$(window).scroll(function () {
    if ($(window).scrollTop() > 300)
        $('.xuanfukuang').show();
    else
        $('.xuanfukuang').hide();
});











//锚点出现位置
$(window).scroll(function () {
    if ($(window).scrollTop() > 800)
        $('.maodiandingwei').show();
    else
        $('.maodiandingwei').hide();
});
//锚点定位回到顶部
$('.top').click(function () {
    $('html, body').animate({ scrollTop: 0 }, 1000);
});


























//下一页
$(".xiayiye").click(function () {
    var a = $(".sum").html();
    now++;
    if($(".now").html() == a)
    {
        return false;
    }
    data();
});
//上一页
$(".shangyiye").click(function () {
    now--;
    if ($(".now").html() == 1) {
        return false;
    }
    data();
});
//首页
$(".shouye").click(function () {
    now = 1;
    data();
});
//尾页
$(".weiye").click(function () {
    var a = $(".sum").html();
    now = a;
    data();
});
//下拉跳转
$(".xuanze").click(function () {
    now = parseInt($(".xuanze").val());
    data();
});













//获取最大页数
function max() {
    $.ajax({
        url: "ajax/sum.ashx",
        data: { "mohusousuo": sousuo, },
        type: "post",
        dataType: "json",
        success: function (msg) {
            //a是共有多少条数据
            var a = msg.cn;
            $(".all").html(a);
            //b是计算有多少页
            var b = Math.ceil(a / (pcount * 1.0));

            $(".sum").html(b);

            $(".xuanze").empty();
            for (var i = 1; i <= b; i++) {
                var str = "<option value=\"" + i + "\">" + i + "</option>";
                $(".xuanze").append(str);
            }

        },
        error: function () {
            alert('服务器连接失败！！！');
        },
        beforeSend: function () {

        }
    });
}












//点击综合排序，正常刷新数据
$("#pxzonghe").click(function () {
    xiaoliangok = 0;
    jiageok = 0;
    data();
});


//点击销量排序，点一下降序，再点一下升序
$("#pxxiangliang").click(function () {

    xiaoliangok = 1;
    jiageok = 0;

    if (xiaoliangok == 1) {
        data();
        xiaoliangok = 2;
    }
    if (xiaoliangok == 2) {

        data();
        xiaoliangok = 1;
    }
});



//点击价格排序，点一下降序，再点一下升序
$("#pxjiage").click(function () {

    jiageok = 1;
    xiaoliangok = 0;
    if (jiageok == 1) {
        jiageok = 2;
        data();
    }
    if (jiageok == 2) {
        jiageok = 1;
        data();
    }
});








//正常刷新数据
function data() {
    $.ajax({
        url: "ajax/Handler.ashx",
        data: { "pt": pcount, "now": now, "xiaoliang": xiaoliangok,"jiage":jiageok,"mohusousuo":sousuo, },
        type: "post",
        dataType: "json",
        success: function (msg) {
            $(".zhanshihang").empty();
            for (var i in msg) {
                var str = "<div class=\"zhanshikuang col-md-3 col-sm-6 col-xs-12\">";
                str += "<a href=\"../lc/introduction.aspx?id=" + msg[i].zhanshiids + "\">";
                str += "<div class=\"zhanshi\" style=\"float:left;\"><div class=\"zhanshitu\"><img class=\"zhanshiimg\" src=" + msg[i].zhanshiimg + " /></div><div style=\"width: 100%; height: 1px; border-top: 1px solid #e0e0e0;\"></div>";
                str += "<div class=\"zhanshiprice\">" + msg[i].zhanshiprice + "</div>";
                str += "<div class=\"zhanshioldprice\">" + msg[i].zhanshioldprice + "</div>";
                str += "<div class=\"zhanshiname\">" + msg[i].zhanshiname + "</div><div class=\"zhanshiguanjianci\"><img src=\"images/ziying.jpg\" style=\"width: 100%; height: 100%;\" /></div>";
                str += "<div class=\"zhanshixiaoliang\">销量：" + msg[i].zhanshixiaoliang + "</div>";
                str += "<div class=\"zhanshichandi\">" + msg[i].zhanshichandi + "</div></div></a></div>";

                $(".zhanshihang").append(str);
                $(".now").html(now);
                $(".xuanze").val(now);
            }
        },
        error: function () {
            alert('服务器连接失败！！！');
        },
        beforeSend: function () {

        }

    });
}





//推荐
function tuijian() {
    $.ajax({
        url: "ajax/tuijian.ashx",
        data: { "ptt": tuijiancount, },
        type: "post",
        dataType: "json",
        success: function (msg) {
            $(".tuijian").empty();
            for (var i in msg) {
                var str = "<div class=\"tuijiankuang col-md-3 col-sm-6 col-xs-12\">";
                str += "<a href=\"aaa.aspx?id=" + msg[i].zhanshiids + "\">";
                str += "<div class=\"tuijianzhanshi\" style=\"float:left;\"><div class=\"tuijianzhanshitu\"><img class=\"tuijianzhanshiimg\" src=" + msg[i].zhanshiimg + " /></div><div style=\"width: 100%; height: 1px; border-top: 1px solid #e0e0e0;\"></div>";
                str += "<div class=\"tuijianzhanshiprice\">" + msg[i].zhanshiprice + "</div>";
                str += "<div class=\"tuijianzhanshioldprice\">" + msg[i].zhanshioldprice + "</div>";
                str += "<div class=\"tuijianzhanshiname\">" + msg[i].zhanshiname + "</div><div class=\"tuijianzhanshiguanjianci\"><img src=\"images/ziying.jpg\" style=\"width: 100%; height: 100%;\" /></div>";
                str += "<div class=\"tuijianzhanshixiaoliang\">销量：" + msg[i].zhanshixiaoliang + "</div>";
                str += "<div class=\"tuijianzhanshichandi\">" + msg[i].zhanshichandi + "</div></div></a></div>";

                $(".tuijian").append(str);
            }
        },
        error: function () {
            alert('服务器连接失败！！！');
        },
        beforeSend: function () {

        }

    });
}


