<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="wqf_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <link href="css/admin.css" rel="stylesheet" />
    <link href="css/pintuer.css" rel="stylesheet" />
    <script src="js/jquery2.1.1jquery.min.js"></script>
    <script src="js/pintuer.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg"></div>
        <div class="container">
            <div class="line bouncein">
                <div class="xs6 xm4 xs3-move xm4-move">
                    <div style="height: 150px;"></div>
                    <div class="media media-y margin-big-bottom">
                    </div>
                    <div class="panel loginbox">
                        <div class="text-center margin-big padding-big-top">
                            <h1>后台管理中心</h1>
                        </div>
                        <div class="panel-body" style="padding: 30px; padding-bottom: 10px; padding-top: 10px;">
                            <div class="form-group">
                                <div class="field field-icon-right">
                                    <asp:TextBox ID="TextBox1" CssClass="input input-big" placeholder="登录账号" data-validate="required:请填写账号" runat="server"></asp:TextBox>
                                    <span class="icon icon-user margin-small"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="field field-icon-right">
                                    <asp:TextBox ID="TextBox2" TextMode="Password" CssClass="input input-big" placeholder="登录密码" data-validate="required:请填写密码" runat="server"></asp:TextBox>
                                    <span class="icon icon-key margin-small"></span>
                                </div>
                            </div>
                        </div>
                        <div style="padding: 30px;">
                            <asp:Button ID="Button1" CssClass="button button-block bg-main text-big input-big" runat="server" Text="登录" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
