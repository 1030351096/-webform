<%@ WebHandler Language="C#" Class="Shopping_" %>

using System;
using System.Web;
using System.Linq;

public class Shopping_ : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        DataClassesDataContext con = new DataClassesDataContext();
        string id = context.Request["id"];
        string number = context.Request["number"];
        string json = "{\"ok\":\"false\"}";
        if (context.Request.Cookies["id"] != null)
        {
            string cook = context.Request.Cookies["id"].Value;
            Shopping_Cart sp = con.Shopping_Cart.Where(r => r.userscode.ToString() == cook && r.Commocode.ToString() == id).FirstOrDefault();
            if (sp != null)
            {
                sp.Number += Convert.ToInt32(number);
                con.SubmitChanges();
            }
            else
            {
                Shopping_Cart sc = new Shopping_Cart();
                Commodity com = con.Commodity.Where(r => r.ids.ToString() == id).FirstOrDefault();
                sc.userscode = Convert.ToInt32(cook);
                sc.Commocode = Convert.ToInt32(id);
                sc.Unit_Price = com.price;
                sc.Number = Convert.ToInt32(number);
                con.Shopping_Cart.InsertOnSubmit(sc);
                con.SubmitChanges();
            }
            json = "{\"ok\":\"true\"}";
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