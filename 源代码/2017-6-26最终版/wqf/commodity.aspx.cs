using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_commodity : System.Web.UI.Page
{
    DataClassesDataContext con = new DataClassesDataContext();
    int Pagecount = 4;//一页显示多少条
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Repeater1.DataSource = select().Take(Pagecount);
            Repeater1.DataBind();
            Label_now.Text = "1";
            Label_max.Text = maxcount().ToString();
            Label1.Text = select().ToList().Count.ToString();


            for (int i = 1; i <= maxcount(); i++)
            {
                DropDownList1.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }
        }
        delete.Click += delete_Click;
        Button_next.Click += Button_next_Click;
        Button_prey.Click += Button_prey_Click;
        Button1.Click += Button1_Click;
        Button2.Click += Button2_Click;
        Button3.Click += Button3_Click;
        DropDownList1.SelectedIndexChanged += DropDownList1_SelectedIndexChanged;
    }

    void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int biao = Convert.ToInt32(DropDownList1.SelectedValue);
        Repeater1.DataSource = select().Skip(Pagecount * (biao - 1)).Take(Pagecount);
        Repeater1.DataBind();
        Label_now.Text = biao.ToString();
        Label_max.Text = maxcount().ToString();
        Label1.Text = select().ToList().Count.ToString();
    }

    void Button3_Click(object sender, EventArgs e)
    {
        Repeater1.DataSource = select().Skip(maxcount() - 1).Take(Pagecount);
        Repeater1.DataBind();
        Label_now.Text = maxcount().ToString();
        DropDownList1.SelectedValue = maxcount().ToString();
    }

    void Button2_Click(object sender, EventArgs e)
    {
        Repeater1.DataSource = select().Skip(1 - 1).Take(Pagecount);
        Repeater1.DataBind();
        Label_now.Text = "1";
        DropDownList1.SelectedValue = "1";
    }

    void Button1_Click(object sender, EventArgs e)
    {

        Repeater1.DataSource = select().Take(Pagecount).ToList();
        Repeater1.DataBind();
        Label_now.Text = "1";
        Label_max.Text = maxcount().ToString();
        Label1.Text = select().ToList().Count.ToString();
        DropDownList1.Items.Clear();
        for (int i = 1; i <= maxcount(); i++)
        {
            DropDownList1.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }

    void Button_prey_Click(object sender, EventArgs e)
    {
        //上一页让当前页数-1,判断如果小于1就不执行,跳过{一页多少条乘当前页数-1},显示四条
        int Nowcount = Convert.ToInt32(Label_now.Text) - 1;
        if (Nowcount < 1)
        {
            return;
        }
        Repeater1.DataSource = select().Skip(Pagecount * (Nowcount - 1)).Take(Pagecount);
        Repeater1.DataBind();
        Label_now.Text = Nowcount.ToString();
        Label1.Text = select().ToList().Count.ToString();
        DropDownList1.SelectedValue = Nowcount.ToString();
    }

    void Button_next_Click(object sender, EventArgs e)
    {
        //下一页让当前页数+1,判断如果大于最大页数就不执行,跳过{一页多少条乘当前页数-1},显示四条
        int Nowcount = Convert.ToInt32(Label_now.Text) + 1;
        if (Nowcount > maxcount())
        {
            return;
        }
        Repeater1.DataSource = select().Skip(Pagecount * (Nowcount - 1)).Take(Pagecount);
        Repeater1.DataBind();
        Label_now.Text = Nowcount.ToString();
        Label1.Text = select().ToList().Count.ToString();
        DropDownList1.SelectedValue = Nowcount.ToString();
    }

    void delete_Click(object sender, EventArgs e)
    {
        string end = Request["che"];
        if (end != null)
        {
            Array list = end.Split(',');

            foreach (var i in list)
            {
                Commodity c = con.Commodity.Where(r => r.ids == Convert.ToInt32(r.ids)).FirstOrDefault();
                con.Commodity.DeleteOnSubmit(c);
                con.SubmitChanges();
                Repeater1.DataSource = con.Commodity.ToList();
                Repeater1.DataBind();
            }
        }


    }
    /// <summary>
    /// 查询方法
    /// </summary>
    /// <param name="con"></param>
    /// <returns></returns>
    public IQueryable<Commodity> select()
    {
        IQueryable<Commodity> ALL = con.Commodity.AsQueryable();
        string a = TextBox1.Text.Trim();
        if (a.Length > 0)//文本框输入有内容 取集合的交集
        {
            var Nlist = con.Commodity.Where(r => r.comname.Contains(a));
            ALL = ALL.Intersect(Nlist);
        }
        return ALL;
    }

    /// <summary>
    /// 获取表中有多少条数据
    /// </summary>
    /// <returns></returns>
    public int count()
    {
        return con.Commodity.ToList().Count;
    }
    /// <summary>
    /// 取有多少页
    /// </summary>
    public int maxcount()
    {
        //先获取符合查询信息的条数,除去一页显示多少条，获得共多少页
        var all = select();
        double nu = all.ToList().Count / (Pagecount * 1.0);
        int num = Convert.ToInt32(Math.Ceiling(nu));
        return num;

    }
}