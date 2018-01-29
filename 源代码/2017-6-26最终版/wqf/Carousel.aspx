<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Carousel.aspx.cs" Inherits="wqf_Carousel" %>

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

        <div class="panel admin-panel">
            <div class="panel-head"><strong class="icon-reorder">内容列表</strong></div>
            <div class="padding border-bottom">
                <button type="button" class="button border-yellow" onclick="window.location.href='#add'"><span class="icon-plus-square-o"></span>添加内容</button>
            </div>
            <table class="table table-hover text-center">
                <tr>
                    <th style="width: 10%">ID</th>
                    <th style="width: 20%">图片</th>
                    <th style="width: 15%">名称</th>
                    <th style="width: 20%">描述</th>
                    <th style="width: 15%">操作</th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <tr>
                            <td><%#Eval("ids") %></td>
                            <td>
                                <img src="<%#Eval("imgurl") %>" alt="" width="120" height="50" /></td>
                            <td>首页焦点图</td>
                            <td>描述文字....</td>
                            <td>
                                <div class="button-group">
                                    <a class="button border-main" href="javascript:void(0)" onclick="return update(<%#Eval("ids") %>)"><span class="icon-edit"></span>修改</a>
                                    <a class="button border-red" href="javascript:void(0)" onclick="return del(<%#Eval("ids") %>)"><span class="icon-trash-o"></span>删除</a>
                                </div>
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
        <div class="panel admin-panel margin-top" id="add">
            <div class="panel-head"><strong><span class="icon-pencil-square-o"></span>增加内容</strong></div>
            <div class="body-content">

                <div class="form-group">
                    <div class="label">
                        <label>图片：</label>
                    </div>
                    <div class="field">
                        <asp:FileUpload ID="FileUpload1" CssClass="bg-blue margin-left" accept=".jpg,.png" runat="server" />
                                                <img src="" runat="server" id="xmTanImg" />
                        <div id="xmTanDiv"></div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="label">
                        <label></label>
                    </div>
                    <div class="field">
                        <asp:Button ID="Button1" CssClass="button bg-main icon-check-square-o" runat="server" Text="提交" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<script type="text/javascript">
    function del(id) {
        if (confirm("您确定要删除吗?")) {
            $.ajax({
                url: "ajax/Carousel_delete.ashx",
                data: { "id": id },
                type: "post",
                dataType: "json",
                success:function(data)
                {
                    if(data.aa=="true")
                    {
                        alert("删除成功!");
                        window.location.href = "Carousel.aspx";
                    }

                }
            });
        }
    }
    function update(id) {
        window.location.href = "Carousel_update.aspx?id="+id+"";
    }
    $("#Button1").click(function () {
        var up = $("#FileUpload1");
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
    $("#FileUpload1").change(function () {
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
</script>
