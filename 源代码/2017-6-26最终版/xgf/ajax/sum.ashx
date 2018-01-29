<%@ WebHandler Language="C#" Class="sum" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class sum : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string mhss = context.Request["mohusousuo"];
        string end = "";
        DataClassesDataContext con = new DataClassesDataContext();
        List<Commodity> clist = con.Commodity.ToList();
        if (mhss != "")
        {
            clist = clist.Where(r => (r.comname.Contains(mhss))).ToList();
        }
        
        end = "{\"cn\":\"" + clist.Count() + "\"}";
        context.Response.Write(end);
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}