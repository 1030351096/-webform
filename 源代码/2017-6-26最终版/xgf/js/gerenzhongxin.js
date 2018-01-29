


var tuijiancount = 2;

tuijian();


















//推荐
function tuijian() {
    $.ajax({
        url: "ajax/tuijian.ashx",
        data: { "ptt": tuijiancount, },
        type: "post",
        dataType: "json",
        success: function (msg) {
            $(".cainixihuandiv").empty();
            for (var i in msg) {
                var str = "<img src=\"" + msg[i].zhanshiimg + "\" />";
                str += "<div class=\"cainixihuandivp\">￥&nbsp;" + msg[i].zhanshiprice + "</div>";

                $(".cainixihuandiv").append(str);
            }
        },
        error: function () {
            alert('服务器连接失败！！！');
        },
        beforeSend: function () {

        }

    });
}
