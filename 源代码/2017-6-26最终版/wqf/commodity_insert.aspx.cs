using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_commodity_insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
        }
        Button2.Click += Button2_Click;
    }

    void Button2_Click(object sender, EventArgs e)
    {
        string math = "../img/" + DateTime.Now.ToString("yyyyMMddhhssms") + xdaTanFileImg.FileName;
        string th = Server.MapPath(math);
        xdaTanFileImg.SaveAs(th);

        Commodity com = new Commodity();
        com.comname = exampleInputEmail1.Text;
        com.KEY_word = exampleInputPassword1.Text;
        com.price = Convert.ToDecimal(exampleInputAmount.Text);
        com.reference_price = Convert.ToDecimal(exas.Text);
        com.Specifications = guige.Text;
        com.type = leixing.Text;
        com.Sales_volume = 0;
        com.Shelf_life = Convert.ToInt32(baozhiqi.Text);
        com.component = chengfen.Text;
        com.Comimg = math;
        com.place = chandi.Text;
        com.Remarks = beozhu.Text;
        using(DataClassesDataContext con=new DataClassesDataContext())
        {
            con.Commodity.InsertOnSubmit(com);
            con.SubmitChanges();
            Commoimg img = new Commoimg();
            img.Commoimg1 = com.ids.ToString();
            img.Commoimg2 = "";
            img.Commoimg3 = "0";
            img.Commoimg4 = "0";
            con.Commoimg.InsertOnSubmit(img);
            con.SubmitChanges();
            Response.Write("<script>alert('添加成功!');window.location.href ='img_insert.aspx?id="+com.ids+"'</script>");
        }
    }
}