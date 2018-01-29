<%@ WebHandler Language="C#" Class="Carousel_delete" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public class Carousel_delete : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string id= context.Request["id"];
        string end = "{\"aa\":\"false\"}";
        DataClassesDataContext con = new DataClassesDataContext();
        Carousel c = con.Carousel.Where(r => r.ids == Convert.ToInt32(id)).FirstOrDefault();
        if(c!=null)
        {
            con.Carousel.DeleteOnSubmit(c);
            con.SubmitChanges();
            end = "{\"aa\":\"true\"}";
        }
        context.Response.Write(end);
        context.Response.End();
        
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}