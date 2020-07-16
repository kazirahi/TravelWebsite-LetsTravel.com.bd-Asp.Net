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

using System;

namespace ExploreBangla.Pages.AdminPanel
{
    public partial class AdminAbout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            var button = (Control)sender;

            var PlaceInformation = button.NamingContainer.FindControl("PlaceInformation") as TextBox;
            var BlogInfo = button.NamingContainer.FindControl("BlogInfo") as TextBox;
            var Review = button.NamingContainer.FindControl("Review") as TextBox;
            var MainDescription = button.NamingContainer.FindControl("MainDescription") as TextBox;
            


            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;



            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE about SET itemD=@itemD,itemmD=@itemmD, itemmmD=@itemmmD, md=@md";
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@itemD", PlaceInformation.Text);
                cmd.Parameters.AddWithValue("@itemmD", BlogInfo.Text);
                cmd.Parameters.AddWithValue("@itemmmD", Review.Text);
                cmd.Parameters.AddWithValue("@md", MainDescription.Text);


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminAbout.aspx");
            }
        }
    }
}