<%@ WebHandler Language="C#" Class="number" %>

using System;
using System.Web;
using System.Linq;

public class number : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        DataClassesDataContext con = new DataClassesDataContext();
        string id = context.Request["id"];
        string cz = context.Request["pr"];
        string json = "{\"ok\":\"no\"}";
        Shopping_Cart sp = con.Shopping_Cart.Where(r => r.ids.ToString() == id).FirstOrDefault();
        if (sp != null)
        {
            if (cz == "add")
            {
                con.ExecuteCommand("UPDATE Shopping_Cart SET Number=Number+1 WHERE ids="+id+"");
                json = "{\"ok\":\"ok\"}";
            }
            if(cz=="min")
            {
                if (sp.Number != 1)
                {
                    con.ExecuteCommand("UPDATE Shopping_Cart SET Number=Number-1 WHERE ids=" + id + "");
                    json = "{\"ok\":\"ok\"}";
                }

            }
            if(cz=="delete")
            {
                con.Shopping_Cart.DeleteOnSubmit(sp);
                con.SubmitChanges();
                json = "{\"ok\":\"ok\"}";   
            }
        }
        context.Response.Write(json);
        context.Response.End();
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}