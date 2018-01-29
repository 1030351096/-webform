<%@ WebHandler Language="C#" Class="register" %>

using System;
using System.Web;
using System.Linq;
public class register : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        DataClassesDataContext con = new DataClassesDataContext();
        string username = context.Request["username"];
        string number = context.Request["number"];
        string pwd = context.Request["pwd"];
        string json = "{\"ok\":\"no\"}"; 

        users u = new users();
        u.usersname = number;
        u.password = pwd;
        u.balance = 0;
        u.nikename = username;
        u.email = "";
        u.name = "";
        u.Payment = "123456";
        u.state = true;
        u.address = "";
        u.sex = true;
        u.Detailed = "";
        con.users.InsertOnSubmit(u);
        con.SubmitChanges();
        json = "{\"ok\":\"ok\"}";


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