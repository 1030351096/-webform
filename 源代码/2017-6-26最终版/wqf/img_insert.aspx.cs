﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_img_insert : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request["id"];
        if(!IsPostBack)
        {
            HiddenField1.Value = id;
        }

    }
}