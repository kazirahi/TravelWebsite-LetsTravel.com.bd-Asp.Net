using System;
using System.Collections;
using System.Text;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Web.UI;

namespace ExploreBangla.Pages
{
    public partial class LetsTravelAdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            using (SqlConnection con = new SqlConnection(mainconn))
            {

                string notifications = EmailIDTextBox.Text + "Just logged in account";
                SqlCommand cmd = new SqlCommand("AdminNoti", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ClientID", EmailIDTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            using (SqlConnection sqlConnection = new SqlConnection(mainconn))
            {
                sqlConnection.Open();
                string query = "Select count(1) from AdminPanel where username=@username and password=@password";
                SqlCommand sqlCommand = new SqlCommand(query, sqlConnection);
                sqlCommand.Parameters.AddWithValue("@username", EmailIDTextBox.Text.Trim());
                sqlCommand.Parameters.AddWithValue("@password", PasswordTextBox.Text.Trim());
                int count = Convert.ToInt32(sqlCommand.ExecuteScalar());
                if (count == 1)
                {
                    Session["admin"] = EmailIDTextBox.Text.Trim();
                    Response.Redirect("AdminPanel/AdminHome.aspx");
                    sqlConnection.Close();
                }
                else
                {
                    WarningLabel.Visible = true;
                    WarningLabel.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                    sqlConnection.Close();
                }
            }


        }
    }
}