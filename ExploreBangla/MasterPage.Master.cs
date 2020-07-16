using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExploreBangla
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

                Label1.Visible = false;
                LinkButton1.Visible = true;
                LinkButton1.Text ="  " + Session["username"].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("info.aspx?PlaceName=" + TextBox1.Text);
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Admin/Loginpage.aspx");
            
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("info.aspx");

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void HomepagesearchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("info.aspx?PlaceName=" + TextBox2.Text);
        }

        

        protected void LinkButton1_Click1(object sender, EventArgs e)
        {
            if(Session["username"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            else
            {
                Response.Redirect("Profile.aspx?EmailID=" + Session["username"].ToString());
            }
            
            
        }
    }
}