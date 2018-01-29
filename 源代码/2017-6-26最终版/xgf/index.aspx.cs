using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class xgf_index : System.Web.UI.Page, System.Web.SessionState.IRequiresSessionState
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext con = new DataClassesDataContext();
        if (Request.Cookies["id"] == null)
        {
        }
        else
        {
            string id = Request.Cookies["id"].Value;


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

        if (!IsPostBack)
        {
            Repeater1.DataSource = con.Carousel.ToList();
            Repeater1.DataBind();
        }




        tuichudenglu.Click += tuichudenglu_Click;
    }

    void tuichudenglu_Click(object sender, EventArgs e)
    {
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-10);
        yonghu.InnerText = "食趣";
    }
}