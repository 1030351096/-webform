<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Carousel_update.aspx.cs" Inherits="wqf_Carousel_update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link href="css/pintuer.css" rel="stylesheet" />
    <link href="css/admin.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <script src="js/pintuer.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel admin-panel margin-top" id="add">
            <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>修改内容</strong></div>
            <div class="body-content">

                <div class="form-group">

                    <div style="border: 1px dashed #eee;">
                        <p>
                            图片：<%--<input type="file" id="xdaTanFileImg" onchange="xmTanUploadImg(this)" accept="image/*" />--%>
                            <asp:FileUpload ID="xdaTanFileImg" CssClass="bg-blue margin-left" accept=".jpg,.png"  runat="server" />
                        </p>
                        <img src="" runat="server" id="xmTanImg" />
                        <div id="xmTanDiv"></div>
                    </div>
                    <hr />
                </div>
                <div class="form-group">
                    <div class="label">
                        <label></label>
                    </div>
                    <div class="field">
                        <asp:Button ID="Button2" CssClass="button bg-main icon-check-square-o" runat="server" Text="提交" />
                    </div>
                </div>
            </div>
        </div>
    </form>


</body>
</html>
<script type="text/javascript">
    //判断浏览器是否支持FileReader接口
    if (typeof FileReader == 'undefined') {
        document.getElementById("xmTanDiv").InnerHTML = "<h1>当前浏览器不支持FileReader接口</h1>";
        //使选择控件不可操作
        document.getElementById("xdaTanFileImg").setAttribute("disabled", "disabled");
    }
    $("#xdaTanFileImg").change(function () {
        var obj = this;
        var file = obj.files[0];
        console.log(obj); console.log(file);
        console.log("file.size = " + file.size);  //file.size 单位为byte
        var reader = new FileReader();
        //读取文件过程方法
        reader.onloadstart = function (e) {
            console.log("开始读取....");
        }
        reader.onprogress = function (e) {
            console.log("正在读取中....");
        }
        reader.onabort = function (e) {
            console.log("中断读取....");
        }
        reader.onerror = function (e) {
            console.log("读取异常....");
        }
        reader.onload = function (e) {
            console.log("成功读取....");
            var img = document.getElementById("xmTanImg");
            img.src = e.target.result;
            //或者 img.src = this.result;  //e.target == this
        }
        reader.readAsDataURL(file)
    })
    $("#Button2").click(function () {
        var up = $("#xdaTanFileImg");
        if (up.val() == '') {
            alert('请选择要上传的文件');
            return false;
        }
        if (up.files[0].size > (4 * 1024 * 1024)) {
            alert("文件过大！！！");
            return false;
        }
        var name = up.val().substring(up.val().length, 3);
        if (name != "jpg" && name != "png") {
            alert('请选择正确的图片格式');
            return false;
        }
    })


</script>
