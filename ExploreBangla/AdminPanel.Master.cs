using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExploreBangla
{
    public partial class AdminPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label1.Text = "Hy, " + Session["username"].ToString();
                usericon.Visible = true;
                logout.Visible = true;
                
            }
            else
            {
                //Label1.Text = "Hello Admin, Welcome!!!";
                usericon.Visible = false;
                logout.Visible = false;
                l12.Visible = true;
                l12.Text = "Welcome Admin!!";

                LinkButton1.Visible = false;

            }
        }

        protected void Image1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Pages/Home.aspx");
            
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            
            l12.Visible = true;
            l12.Text = "Signout Successfulyy!!";
            Response.Redirect("Loginpage.aspx");
            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/Admin/Exbadmin.aspx");

        }
    }
}