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
    public partial class AdminNewUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }

        protected void SendButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var NotificationSend = button.NamingContainer.FindControl("NotificationSend");
            var User = button.NamingContainer.FindControl("User") as Label;
            var SendButton = button.NamingContainer.FindControl("SendButton");
            var SendMessageWarning = button.NamingContainer.FindControl("SendMessageWarning");
            var SendMessage = button.NamingContainer.FindControl("SendMessage") as TextBox;


            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string notifications = "Message From Admin Panel: " + SendMessage.Text;
                SqlCommand cmd = new SqlCommand("noti", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ClientID", User.Text);
                cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }



            NotificationSend.Visible = true;
            SendMessageWarning.Visible = true;
            SendButton.Visible = false;
            SendMessage.Visible = false;
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
           

                    var button = (Control)sender;
                    var User = button.NamingContainer.FindControl("User") as Label;
                    
                    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                    using (SqlConnection sqlCon = new SqlConnection(cs))
                    {
                        sqlCon.Open();
                        string query = "DELETE FROM Signup WHERE ID =" + User.Text;
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                       
                        sqlCmd.ExecuteNonQuery();
                       
                        sqlCon.Close();

                        Response.Redirect("AdminNewUser.aspx");

                    }
           
                
       
        }

        protected void NotificationSend_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var NotificationSend = button.NamingContainer.FindControl("NotificationSend");
            var SendButton = button.NamingContainer.FindControl("SendButton");
            var SendMessage = button.NamingContainer.FindControl("SendMessage") as TextBox;

            NotificationSend.Visible = false;
            SendButton.Visible = true;
            SendMessage.Visible = true;

        }
    }
}