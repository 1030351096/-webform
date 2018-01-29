<%@ Page Language="C#" AutoEventWireup="true" CodeFile="personnel.aspx.cs" Inherits="wqf_personnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit" />
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/pintuer.css" />
    <link rel="stylesheet" href="css/admin.css" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <script src="js/pintuer.js"></script>
    <style type="text/css">
        #TextBox1 {
        }

        #Button1 {
            margin-top: 32%;
        }

        body {
            background-color: #F8F8F8;
            -moz-user-select: none; /*火狐*/
            -webkit-user-select: none; /*webkit浏览器*/
            -ms-user-select: none; /*IE10*/
            -khtml-user-select: none; /*早期浏览器*/
            user-select: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="panel admin-panel">
            <div class="panel-head"><strong class="icon-user">用户管理</strong></div>
        </div>
        <div style="float: left">
            用户名:<asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        <div style="float: left">
            <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="查询" />
        </div>



        <table class="table table-bordered table-hover">

            <tr>
                <td>用户名</td>
                <td>余额</td>
                <td>姓名</td>
                <td>昵称</td>
                <td>邮箱</td>
                <td>地址</td>
                <td>状态</td>
                <td>操作</td>
            </tr>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td style="text-align:center;width:14%"><%#Eval("usersname") %></td>
                        <td style="text-align:center;width:14%"><%#Eval("balance") %></td>
                        <td style="text-align:center;width:14%"><%#Eval("nikename") %></td>
                        <td style="text-align:center;width:14%"><%#Eval("name") %></td>
                        <td style="text-align:center;width:14%"><%#Eval("email") %></td>
                        <td  style="text-align:center;width:14%"><%#Eval("Detailed") %></td>
                        <td><%#Eval("statestr") %></td>
                        <td style="width:6%">
                            <asp:Button ID="Button4" CssClass="button btn-info" ForeColor="#eee" runat="server" Text='<%#Eval("bit") %>' CommandName="xg" CommandArgument='<%#Eval("ids") %>' /></td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>

        </table>
        <div style="margin-left: 34%">
            当前<asp:Label ID="Label_now" runat="server" ForeColor="#5bc0de" Text="Label"></asp:Label>/
            <asp:Label ID="Label_max" ForeColor="#5bc0de" runat="server" Text="Label"></asp:Label>页 &nbsp;共<asp:Label ID="Label1" ForeColor="#5bc0de" runat="server" Text="Label"></asp:Label>条信息
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="首页" />
            <asp:Button ID="Button_prey" CssClass="btn btn-info" runat="server" Text="上一页" />
            <asp:Button ID="Button_next" CssClass="btn btn-info" runat="server" Text="下一页" />
            <asp:Button ID="Button3" CssClass="btn btn-success" runat="server" Text="末页" />
            <asp:DropDownList ID="DropDownList1" AutoPostBack="true" runat="server"></asp:DropDownList>

        </div>
    </form>
</body>
</html>
