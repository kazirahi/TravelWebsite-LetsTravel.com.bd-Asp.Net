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

namespace ExploreBangla.Pages.AdminPanel
{
    public partial class AdminComment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            var CommentID = button.NamingContainer.FindControl("CommentID") as Label;
            var ProfileID = button.NamingContainer.FindControl("ProfileID") as Label;
            var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
            var CommentDescription = button.NamingContainer.FindControl("CommentDescription") as Label;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(cs))
            {

                string notifications = "Your " +'"' +CommentDescription.Text +'"' + " Has been deleted by Adminstration due to Spam. Enjoy travel, knowing place and bloging this page for reach the information all over the world. Thank You.";
                SqlCommand cmd = new SqlCommand("noti", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ClientID", ProfileID.Text.Trim());
                cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }

            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE CommentTable SET CommentDescription=@CommentDescription WHERE [CommentID] = " + CommentID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@CommentDescription", "This Comment Has been deleted by Adminstrator due to spam");


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminComment.aspx");
            }
        }
    }
}