<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class Handler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        int p = Convert.ToInt32(context.Request["pt"]);
        int n = Convert.ToInt32(context.Request["now"]);
        int xlok = Convert.ToInt32(context.Request["xiaoliang"]);
        int jgok = Convert.ToInt32(context.Request["jiage"]);
        string mhss = context.Request["mohusousuo"];

        string zhanshiids = context.Request["zhanshiids"];
        string zhanshiimg = context.Request["zhanshiimg"];
        decimal zhanshiprice = Convert.ToDecimal(context.Request["zhanshiprice"]);
        decimal zhanshioldprice = Convert.ToDecimal(context.Request["zhanshioldprice"]);
        string zhanshiname = context.Request["zhanshiname"];
        string zhanshixiaoliang = context.Request["zhanshixiaoliang"];
        string zhanshichandi = context.Request["zhanshichandi"];

        int count = 0;
        string end = "[";
        DataClassesDataContext con = new DataClassesDataContext();
        List<Commodity> clist = con.Commodity.ToList();
        List<Commodity> cclist = clist;
        cclist = cclist.Skip(p * (n - 1)).Take(p).ToList();
        if (mhss!="")
        {
            cclist = clist.Where(r => (r.comname.Contains(mhss))).ToList();
            cclist = cclist.Skip(p * (n - 1)).Take(p).ToList();
        }
        if (xlok == 1)
        {
            cclist = clist.OrderBy(r => r.Sales_volume).ToList();
            cclist = cclist.Skip(p * (n - 1)).Take(p).ToList();
        }
        if (xlok == 2)
        {
            cclist = clist.OrderByDescending(r => r.Sales_volume).ToList();
            cclist = cclist.Skip(p * (n - 1)).Take(p).ToList();
        }
        if (jgok == 1)
        {
            cclist = clist.OrderBy(r => r.price).ToList();
            cclist = cclist.Skip(p * (n - 1)).Take(p).ToList();
        }
        if (jgok == 2)
        {
            cclist = clist.OrderByDescending(r => r.price).ToList();
            cclist = cclist.Skip(p * (n - 1)).Take(p).ToList();
        }





        //List<Commodity> cclist = clist.OrderByDescending(r => r.price).ToList();
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

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}