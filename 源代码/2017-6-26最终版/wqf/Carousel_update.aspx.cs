using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_Carousel_update : System.Web.UI.Page
{
    DataClassesDataContext con = new DataClassesDataContext();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request["id"];
        if (!IsPostBack)
        {

            Carousel c = con.Carousel.Where(r => r.ids == Convert.ToInt32(id)).FirstOrDefault();
            if (c != null)
            {
                xmTanImg.Src = c.imgurl;
            }
            else
            {
                Response.Redirect("Carousel.aspx");
            }

        }
        Button2.Click += Button2_Click;
    }

    void Button2_Click(object sender, EventArgs e)
    {
        string math = "../img/" + DateTime.Now.ToString("yyyyMMddhhssms") + xdaTanFileImg.FileName;
        Carousel cs = con.Carousel.Where(r => r.ids == Convert.ToInt32(id)).FirstOrDefault();
        cs.imgurl = math;
        con.SubmitChanges();
        string ms = Server.MapPath(math);
        xdaTanFileImg.SaveAs(ms);
        Response.Write("<script>alert('修改成功!');window.location.href ='Carousel.aspx'</script>");
    }
}