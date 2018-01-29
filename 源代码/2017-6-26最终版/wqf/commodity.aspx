<%@ Page Language="C#" AutoEventWireup="true" CodeFile="commodity.aspx.cs" Inherits="wqf_commodity" %>

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
        #he:hover {
            color: black;
        }

        .at:hover {
            color: black;
        }
        #TextBox1{
            float:left;
            width:45%;
        }
        #Button1{
            float:left;
        }
    </style>
</head>
<body>
    <form method="post" action="" runat="server">
        <div class="panel admin-panel">
            <div class="panel-head"><strong class="icon-reorder">商品管理</strong></div>
            <div class="padding border-bottom">
                <ul class="search">
                    <li>
                        <button type="button" class="button border-green" id="checkall"><span class="icon-check"></span>全选</button>
                        <asp:Button ID="delete" CssClass="button border-red icon-trash-o" runat="server" Text="批量删除" />
                        <a class="at" href="commodity_insert.aspx">
                            <div id="he" class="button border-blue">上架商品</div>
                        </a>
                        <div><span>商品名称:</span></div><asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server"></asp:TextBox>
                        <asp:Button ID="Button1" CssClass="btn btn-info" runat="server" Text="查询" />
                    </li>
                </ul>
            </div>
            <table class="table table-hover text-center">
                <tr>
                    <th width="120">选中</th>
                    <th>商品名称</th>
                    <th>关键词</th>
                    <th>价格</th>
                    <th>销量</th>
                    <th>保质期</th>
                    <th>备注</th>
                    <th>图片</th>
                    <th>操作</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <input type="checkbox" name="che" value="<%#Eval("ids") %>" />
                            </td>
                            <td><%#Eval("comname ") %></td>
                            <td><%#Eval("KEY_word ") %></td>
                            <td><%#Eval("price ") %></td>
                            <td><%#Eval("Sales_volume ") %></td>
                            <td><%#Eval("Shelf_life") %></td>
                            <td><%#Eval("Remarks") %></td>
                            <td style="width: 120px">
                                <img style="width: 100%; height: 45px" src="<%#Eval("Comimg ") %>" /></td>
                            <td>

                                <div class="button-group"><a class="button border-red" href="javascript:void(0)" onclick="return del(<%#Eval("ids") %>)"><span class="icon-trash-o"></span>删除</a> </div>
                            </td>
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
        </div>
    </form>
</body>
</html>
<script type="text/javascript">

    function del(id) {
        if (confirm("您确定要删除吗?")) {
            window.location.href = "commodity_delete.aspx?id=" + id + "";
        }
    }

    $("#checkall").click(function () {
        var cke = document.getElementsByName('che');
        for (var i = 0; i < cke.length; i++) {
            cke[i].checked = true;
        }
    })

    function DelSelect() {
        var Checkbox = false;
        $("input[name='id[]']").each(function () {
            if (this.checked == true) {
                Checkbox = true;
            }
        });
        if (Checkbox) {
            var t = confirm("您确认要删除选中的内容吗？");
            if (t == false) return false;
        }
        else {
            alert("请选择您要删除的内容!");
            return false;
        }
    }

</script>
