using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lc_success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string mon = Request["men"];
        DataClassesDataContext con = new DataClassesDataContext();
        if (!IsPostBack)
        {
            ms.InnerText = mon;
            if (Request.Cookies["id"] != null)
            {
                users u = con.users.Where(r => r.ids.ToString() == Request.Cookies["id"].Value).FirstOrDefault();
                if (u != null)
                {
                    shr.InnerText = "收货人:" + u.nikename + "";
                    dianhua.InnerText = "联系电话：" + u.usersname + "";
                }
            }
        }
    }
}