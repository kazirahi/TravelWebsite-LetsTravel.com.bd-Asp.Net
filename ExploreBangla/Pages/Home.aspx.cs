using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;         
using System.IO;

namespace ExploreBangla.Pages
  
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

               
            }
            
        }

        protected void DataList3_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
        {
            if (e.CommandName == "clickmore1")
            {
                Response.Redirect("info.aspx?PlaceName=" + e.CommandArgument.ToString());
            }
        }
        protected void hotelbutton_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {

        }

        protected void transportbutton_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {

        }


        protected void facebookbtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("http://fb.com");
        }

        protected void linkedinbtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("http://linkedin.com");
        }

        protected void instrabtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("http://www.intragram.com");
        }

        protected void twitterbtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("http://www.twitter.com");
        }

        protected void youtubebtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("http://www.youtube.com");
        }

        
        protected void Contactbtn_Click(object sender, EventArgs e)
        {

        }

        protected void joinbtn_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var DropDownList1 = button.NamingContainer.FindControl("DropDownList1") as DropDownList;

            Response.Redirect("info.aspx?PlaceName=" + DropDownList1.SelectedItem.ToString());
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var button = (Control)sender;
            var HomepageSearchBox = button.NamingContainer.FindControl("HomepageSearchBox") as TextBox;
            Response.Redirect("info.aspx?PlaceName=" + HomepageSearchBox.Text);
        }

        protected void DataList1_ItemCommand(object source, System.Web.UI.WebControls.DataListCommandEventArgs e)
        {
            if (e.CommandName == "clickmore1")
            {
                Response.Redirect("info.aspx?PlaceName=" + e.CommandArgument.ToString());
            }
        }

        
    }
}