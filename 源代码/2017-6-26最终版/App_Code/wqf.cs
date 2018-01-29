using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// wqf 的摘要说明
/// </summary>
public class wqf
{
    public wqf()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }


}

public partial class users
{
    public string statestr
    {
        get
        {
            return Convert.ToBoolean(this.state) ? "正常" : "停用";
        }
    }

    public string bit
    {
        get
        {
            return Convert.ToBoolean(this.state) ? "停用" : "开启";
        }
    }
}
public partial class Shopping_Cart
{
    DataClassesDataContext con = new DataClassesDataContext();
    public string Cartname
    {
        get{
            Commodity cs = con.Commodity.Where(r => r.ids == this.Commocode).FirstOrDefault();
            return cs.comname;
        }

    }

    public string Cartimg
    {
        get
        {
            Commodity cs = con.Commodity.Where(r => r.ids == this.Commocode).FirstOrDefault();
            return cs.Comimg;
        }
    }
}