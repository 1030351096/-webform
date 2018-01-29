<%@ WebHandler Language="C#" Class="login" %>

using System;
using System.Web;
using System.Linq;
public class login : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string number = context.Request["number"];
        string pwd = context.Request["pwd"];
        string cke = context.Request["cke"];
        
        string json = "{\"ok\":\"no\"}";
        DataClassesDataContext con = new DataClassesDataContext();
        users u = con.users.Where(r => r.usersname == number && r.password == pwd&&r.state==true).FirstOrDefault();
        if(u!=null)
        {
            json = "{\"ok\":\"ok\"}";
            if(cke=="true")
            {
                HttpContext.Current.Response.Cookies["id"].Value = u.ids.ToString();
            }
        }
        context.Response.Write(json);
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}