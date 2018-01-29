using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class xgf_gerenzhongxin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["id"] == null)
        {
        }
        else
        {
            string id = Request.Cookies["id"].Value;


            DataClassesDataContext con = new DataClassesDataContext();

            users u = con.users.Where(r => r.ids.ToString() == id).FirstOrDefault();
            if (u == null)
            {
                Response.Write("<script>alert('请先登录！');window.location.href='../wqf/Login.aspx';</script>");
            }
            else
            {
                //首页显示用户名
                yonghu.InnerText = u.nikename;
                Label1.Text = u.balance.ToString();
                username.InnerText = u.nikename;
            }




        }
        //点击退出登录
        tuichudenglu.Click += tuichudenglu_Click;
    }

    void tuichudenglu_Click(object sender, EventArgs e)
    {
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-10);
        yonghu.InnerText = "食趣";
        username.InnerText = "小叮当";
    }
}