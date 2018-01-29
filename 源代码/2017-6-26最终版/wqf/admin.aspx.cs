using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button1.Click += Button1_Click;
    }

    void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminndex.aspx");
    }
}