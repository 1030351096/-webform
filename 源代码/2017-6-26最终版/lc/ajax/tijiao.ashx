<%@ WebHandler Language="C#" Class="tijiao" %>

using System;
using System.Web;
using System.Linq;
using System.Collections.Generic;

public class tijiao : IHttpHandler, System.Web.SessionState.IRequiresSessionState
{

    public void ProcessRequest(HttpContext context)
    {
        string men = context.Request["men"];
        string json = "{\"ok\":\"no\"}";
        DataClassesDataContext con = new DataClassesDataContext();
        if (context.Request.Cookies["id"] != null)
        {
            string id = context.Request.Cookies["id"].Value;
            users u = con.users.Where(r => r.ids.ToString() == id).FirstOrDefault();
            if (u != null)
            {
                if (u.balance >= Convert.ToDecimal(men))
                {
                    List<Shopping_Cart> sp = con.Shopping_Cart.Where(r => r.userscode.ToString() == id).ToList();
                    foreach (var i in sp)
                    {
                        orders ord = new orders();
                        Commodity sps = con.Commodity.Where(r => r.ids == i.Commocode).FirstOrDefault();
                        sps.Sales_volume += i.Number;
                        ord.orderscode = 230110 + con.orders.Count();
                        ord.o_userscode = Convert.ToInt32(id);
                        ord.o_Commocode = i.Commocode;
                        ord.o_Price = i.Unit_Price;
                        ord.o_Number = i.Number;
                        ord.o_time = DateTime.Now;
                        con.orders.InsertOnSubmit(ord);
                        con.Shopping_Cart.DeleteOnSubmit(i);
                        con.SubmitChanges();

                    }
                    u.balance = u.balance - Convert.ToDecimal(men);
                    con.SubmitChanges();


                    json = "{\"ok\":\"you\"}";
                }
                else
                {
                    json = "{\"ok\":\"wu\"}";
                }
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