<%@ WebHandler Language="C#" Class="load" %>

using System;
using System.Web;
using System.Linq;
using System.Collections.Generic;

public class load : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{
    
    public void ProcessRequest (HttpContext context) {
        DataClassesDataContext con=new DataClassesDataContext();
        string json = "{\"ok\":\"null\"}";
        if(context.Request.Cookies["id"]!=null)
        {
            json = "[";
            string id = context.Request.Cookies["id"].Value;
            List<Shopping_Cart> sp = con.Shopping_Cart.Where(r => r.userscode.ToString() == id).ToList();
            int count=0;
            decimal he = 0;
            foreach (var i in sp)
            {
                if (count > 0)
                {
                    json += ",";
                }
                decimal sum = Convert.ToDecimal(i.Unit_Price * i.Number);
                he += sum;
                json += "{\"ids\":\"" + i.ids + "\",\"userscode\":\"" + i.userscode + "\",\"Commocode\":\"" + i.Commocode + "\",\"Unit_Price\":\"" + i.Unit_Price + "\",\"Number\":\"" + i.Number + "\",\"Cartname\":\""+i.Cartname+"\",\"Cartimg\":\""+i.Cartimg+"\",\"sum\":\""+sum+"\",\"he\":\""+he+"\"}";
                count++;   
            }
            json += "]";
            
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