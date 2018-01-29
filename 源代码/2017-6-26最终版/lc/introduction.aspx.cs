using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lc_introduction : System.Web.UI.Page
{
    DataClassesDataContext con = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request["id"] == "")
        {
            Response.Redirect("../xgf/index.aspx");
        }
        else
        {
            string id = Request["id"];
            if (!IsPostBack)
            {
                Commodity cty = con.Commodity.Where(r => r.ids.ToString() == id).FirstOrDefault();
                Commoimg cimg = con.Commoimg.Where(r => r.Commoimg1 == id).FirstOrDefault();
                divid.InnerText = id;
                name.InnerText = cty.comname;
                csj.InnerText = cty.price.ToString();
                yj.InnerText = cty.reference_price.ToString();
                gjc.InnerText = cty.KEY_word;
                cd.InnerText = cty.place;
                bzq.InnerText = cty.Shelf_life.ToString();
                xl.InnerText = cty.Sales_volume.ToString();
                lx.InnerText = cty.type;
                string[] imglist = cimg.Commoimg2.Split(',');
                if (imglist.Count() != 0)
                {
                    daimg.Src = imglist[0];
                    xiaoimg.Src = imglist[0];
                    if (imglist.Count() == 4)
                    {
                        img1.Src = imglist[0];
                        img2.Src = imglist[1];
                        img3.Src = imglist[2];
                    }
                    listxq.InnerHtml = cimg.Commo_details;

                }

            }
        }


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
        //点击退出登录
    }
}