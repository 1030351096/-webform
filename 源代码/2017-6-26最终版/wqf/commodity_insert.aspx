<%@ Page Language="C#" AutoEventWireup="true" CodeFile="commodity_insert.aspx.cs" Inherits="wqf_commodity_insert" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <title></title>
    <style type="text/css">
        body {
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
    <form method="post" class="form-x" runat="server">
        <div class="panel">

            <div class="panel-head"><strong><span class="glyphicon glyphicon-check"></span>上架商品</strong></div>

        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">商品名称</label>
            <asp:TextBox ID="exampleInputEmail1" CssClass="form-control" placeholder="名称" runat="server"></asp:TextBox>
            <label style="color: red" id="lab_name"></label>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">关键词</label>
            <asp:TextBox ID="exampleInputPassword1" CssClass="form-control" placeholder="关键词" runat="server"></asp:TextBox>
            <label style="color: red" id="lab_guanjian"></label>
        </div>
        <div class="form-group">
            <label for="exampleInputAmount">价格</label>
            <label class="sr-only" for="exampleInputAmount">Amount (in dollars)</label>
            <div class="input-group">
                <div class="input-group-addon">$</div>
                <asp:TextBox ID="exampleInputAmount" CssClass="form-control" placeholder="价格" runat="server"></asp:TextBox>
                <label style="color: red" id="lab_jiage"></label>
                <div class="input-group-addon">.00</div>
            </div>
        </div>
        <div class="form-group">
            <label for="exas">参考价</label>
            <label class="sr-only" for="exas">Amount (in dollars)</label>
            <div class="input-group">
                <div class="input-group-addon">$</div>
                <asp:TextBox ID="exas" CssClass="form-control" placeholder="参考价" runat="server"></asp:TextBox>
                <label style="color: red" id="lab_cankao"></label>
                <div class="input-group-addon">.00</div>
            </div>
        </div>
        <div class="form-group">
            <label for="guige">规格</label>
            <asp:TextBox ID="guige" CssClass="form-control" placeholder="规格" runat="server"></asp:TextBox>
            <label style="color: red" id="lab_guige"></label>
        </div>
        <div class="form-group">
            <label for="leixing">类型</label>
            <asp:TextBox ID="leixing" CssClass="form-control" placeholder="类型" runat="server"></asp:TextBox>
            <label style="color: red" id="lab_leixing"></label>
        </div>
        <div class="form-group">
            <label for="baozhiqi">保质期</label>
            <label class="sr-only" for="exas">Amount (in dollars)</label>
            <div class="input-group">
                <asp:TextBox ID="baozhiqi" CssClass="form-control" placeholder="保质期" runat="server"></asp:TextBox>
                <label style="color: red" id="lab_baozhiqi"></label>
                <div class="input-group-addon">天</div>
            </div>
        </div>
        <div class="form-group">
            <label for="chengfen">成分</label>
            <asp:TextBox ID="chengfen" CssClass="form-control" placeholder="成分" runat="server"></asp:TextBox>
            <label style="color: red" id="lab_chengfen"></label>
        </div>
        <div class="form-group">
            <label for="chandi">产地</label>
            <asp:TextBox ID="chandi" CssClass="form-control" placeholder="产地" runat="server"></asp:TextBox>
            <label style="color: red" id="lab_chandi"></label>
        </div>
        <div class="form-group">
            <label for="beozhu">备注</label>
            <asp:TextBox ID="beozhu" CssClass="form-control" placeholder="备注" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="tupian">图片</label>
            <asp:FileUpload ID="xdaTanFileImg" CssClass="btn btn-info" accept=".jpg,.png" runat="server" />
            <img src="" runat="server" id="xmTanImg" />
            <div id="xmTanDiv"></div>
        </div>
        <asp:Button ID="Button2" CssClass="btn btn-default" runat="server" Text="上架" />
    </form>
</body>
</html>
<script src="js/commodity_insert.js"></script>
