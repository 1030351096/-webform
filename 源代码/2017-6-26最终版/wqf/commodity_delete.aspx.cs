using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_commodity_delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request["id"];
        DataClassesDataContext con = new DataClassesDataContext();
        Commodity com = con.Commodity.Where(r => r.ids == Convert.ToInt32(id)).FirstOrDefault();
        if(com!=null)
        {
            con.Commodity.DeleteOnSubmit(com);
            con.SubmitChanges();
            Response.Redirect("commodity.aspx");
        }
        else
        {
            Response.Redirect("commodity.aspx");
        }
    }
}