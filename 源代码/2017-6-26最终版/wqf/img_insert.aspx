<%@ Page Language="C#" AutoEventWireup="true" CodeFile="img_insert.aspx.cs" Inherits="wqf_img_insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/IMGUP.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="../ueditor.config.js"></script>
    <script src="../ueditor.all.js"></script>
    <script src="../lang/zh-cn/zh-cn.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel admin-panel margin-top" id="add">
            <div class="panel-head">
                <p>

                    <span class="glyphicon glyphicon-folder-open"></span>
                    上传图片:
                </p>

            </div>
            <div class="body-content">
            </div>
        </div>
        <h3>商品图片
        <small>缩略图</small>
        </h3>

        <asp:HiddenField ID="HiddenField1" runat="server" />
        <!--图片选择对话框-->
        <div id="div_imgfile">选择图 片</div>

        <!--图片预览容器-->
        <div id="div_imglook">
            <div style="clear: both;"></div>
        </div>

        <h3>商品图片
        <small>详情图</small>
        </h3>
        <div style="width: 100%">
                <script id="editor" type="text/plain" style="width:1024px;height:500px;"></script>

            <div id="btns">
</div>
           
        </div>

        <!--确定上传按钮-->
        <input type="button" value="确定上传" class="btn btn-info" id="btn_ImgUpStart" />
        <script src="js/IMGUP.js"></script>
    </form>
</body>
</html>