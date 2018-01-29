<%@ WebHandler Language="C#" Class="tuijian" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class tuijian : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        int p = Convert.ToInt32(context.Request["ptt"]);



        int count = 0;
        string end = "[";
        DataClassesDataContext con = new DataClassesDataContext();
        List<Commodity> clist = con.Commodity.ToList();
        List<Commodity> cclist = clist.Take(p).ToList();
        foreach (Commodity c in cclist)
        {
            if (count > 0)
            {
                end += ",";
            }
            end += "{\"zhanshiids\":\"" + c.ids + "\",\"zhanshiimg\":\"" + c.Comimg + "\",\"zhanshiprice\":\"" + c.price + "\",\"zhanshioldprice\":\"" + c.reference_price + "\",\"zhanshiname\":\"" + c.comname + "\",\"zhanshixiaoliang\":\"" + c.Sales_volume + "\",\"zhanshichandi\":\"" + c.place + "\"}";
            count++;
        }
        end += "]";

        context.Response.Write(end);
        context.Response.End();
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}