<%@ WebHandler Language="C#" Class="isok" %>

using System;
using System.Web;
using System.Linq;

public class isok : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        string number = context.Request["number"];
        string json = "{\"ok\":\"yes\"}";
        DataClassesDataContext con = new DataClassesDataContext();
        users u = con.users.Where(r => r.usersname == number).FirstOrDefault();
        if(u!=null)
        {
            json = "{\"ok\":\"no\"}";
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