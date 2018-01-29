using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class xgf_password : System.Web.UI.Page
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
            }




        }
        //点击退出登录
        tuichudenglu.Click += tuichudenglu_Click;
        xiugaimima.Click += xiugaimima_Click;
    }

    void xiugaimima_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["id"] == null)
        {
            Response.Write("<script>alert('请先登录！');window.location.href='../wqf/Login.aspx';</script>");
        }
        else
        {
            string id = Request.Cookies["id"].Value;

            DataClassesDataContext con = new DataClassesDataContext();

            users u = con.users.Where(r => r.ids.ToString() == id).FirstOrDefault();
            if (u != null)
            {
                if (yuanshimima.Text != u.password)
                {
                    Response.Write("<script>alert('密码错误！');</script>");
                }
                else {
                    u.password = querenmima.Text;
                    Response.Write("<script>alert('修改成功！请牢记您的密码：" + querenmima.Text + "');</script>");
                    con.SubmitChanges();
                    yuanshimima.Text = "";
                    xinmima.Text = "";
                    querenmima.Text = "";
                }

            }
        }
    }

    void tuichudenglu_Click(object sender, EventArgs e)
    {
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-10);
        yonghu.InnerText = "食趣";
    }
}