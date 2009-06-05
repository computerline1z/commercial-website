using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DTO;
using BUS;

public partial class The_hien_DangNhap : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null && Session["Pass"] == null)
        {
           
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Label2.Text = (string) Session["User"];
        }
        if (Session["IsAdmin"] != null)
        {
            int n = (int)Session["IsAdmin"];
            if (n == 1)
            {
                Label1.Visible = true;
                Menu1.Visible = true;
            }
        }
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string str = Server.MapPath("..\\App_Data\\CSDL_TraCuuDiemThiDH.mdb");
        UserBUS uBus = new UserBUS();
        ArrayList ds = uBus.LayDS(str);
        string user = txtUser.Text;
        string pass = txtPass.Value;

        for (int i = 0; i < ds.Count; i++)
        {
            UserDTO obj = (UserDTO)ds[i];
            int n = obj.MaLoai;
            if (user == obj.User)
                if (pass == obj.Password)
                {
                    Session["User"] = user;
                    Session["Pass"] = pass;
                    Session["IsAdmin"] = n;
                    
                    if (n == 1)
                    {
                        Label1.Visible = true;
                        Menu1.Visible = true;
                    }
                  
                    Panel1.Visible = false;
                    Panel2.Visible = true;
                    Label2.Text = user;
                    break;
                }
        }
    }
}
