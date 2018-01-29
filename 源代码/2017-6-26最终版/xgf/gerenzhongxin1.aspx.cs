using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class xgf_gerenzhongxin1 : System.Web.UI.Page
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
                username.InnerText = u.nikename;
            }




        }
        tuichudenglu.Click += tuichudenglu_Click;
        baocunxiugai.Click += baocunxiugai_Click;
    }

    void baocunxiugai_Click(object sender, EventArgs e)
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
                u.nikename = nicheng.Value;
                u.name = xingming.Value;
                if (xingbie.SelectedValue == "true")
                {
                    u.sex = true;
                }
                else { u.sex = false; }
                u.birthday = Convert.ToDateTime(shengri.Value);
                u.email = youxiang.Value;
                con.SubmitChanges();
                Response.Write("<script>alert('修改成功！');</script>");

                nicheng.Value = "";
                xingming.Value = "";
                shengri.Value = "";
                youxiang.Value = "";
            }

        }



    }

    void tuichudenglu_Click(object sender, EventArgs e)
    {
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-10);
        yonghu.InnerText = "食趣";
        username.InnerText = "小叮当";
    }
}