using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class wqf_Carousel : System.Web.UI.Page
{
    int Pagecount = 6;//一页显示多少条
    DataClassesDataContext con = new DataClassesDataContext();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            Label_now.Text = "1";
            Label_max.Text = maxcount().ToString();
            Label1.Text = select().ToList().Count.ToString();
            Repeater1.DataSource = select().Take(Pagecount);
            Repeater1.DataBind();

            for (int i = 1; i <= maxcount(); i++)
            {
                DropDownList1.Items.Add(new ListItem(i.ToString(), i.ToString()));
            }


        }
        Button1.Click += Button1_Click;//提交
        Button_next.Click += Button_next_Click;//下一页
        Button_prey.Click += Button_prey_Click;//上一页
        DropDownList1.SelectedIndexChanged += DropDownList1_SelectedIndexChanged;
        Button2.Click += Button2_Click;
        Button3.Click += Button3_Click;
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

    void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int biao = Convert.ToInt32(DropDownList1.SelectedValue);
        Repeater1.DataSource = select().Skip(Pagecount * (biao - 1)).Take(Pagecount);
        Repeater1.DataBind();
        Label_now.Text = biao.ToString();
        Label_max.Text = maxcount().ToString();
        Label1.Text = select().ToList().Count.ToString();
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

    void Button1_Click(object sender, EventArgs e)
    {
        string math = "../img/" + DateTime.Now.ToString("yyyyMMddhhssms") + FileUpload1.FileName;
        Carousel c = new Carousel();
        c.imgurl = math;
        con.Carousel.InsertOnSubmit(c);
        con.SubmitChanges();
        string th = Server.MapPath(math);
        FileUpload1.SaveAs(th);
        Response.Write("<script>alert('上传成功!')</script>");
        Repeater1.DataSource = select().Take(Pagecount);
        Repeater1.DataBind();
    }

    /// <summary>
    /// 查询方法
    /// </summary>
    /// <param name="con"></param>
    /// <returns></returns>
    public IQueryable<Carousel> select()
    {
        IQueryable<Carousel> ALL = con.Carousel.AsQueryable();
        return ALL;
    }
    /// <summary>
    /// 获取表中有多少条数据
    /// </summary>
    /// <returns></returns>
    public int count()
    {
        return con.Carousel.ToList().Count;
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