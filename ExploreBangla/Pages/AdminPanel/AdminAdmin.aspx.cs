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
    public partial class AdminAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }

        protected void InsertHotel_Click(object sender, EventArgs e)
        {


            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                //String query = "Insert Into AdminPanel(ID, username, password) values (@ID, @username, @password)" ;
                SqlCommand cmd = new SqlCommand("adm", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", AdminID.Text.Trim());
                cmd.Parameters.AddWithValue("@username", adminusername.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                con.Close();

                Response.Redirect("AdminAdmin.aspx");
            }
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            var button = (Control)sender;
            var AdminID = button.NamingContainer.FindControl("AdminID") as Label;


            using (SqlConnection sqlCon = new SqlConnection(cs))
            {
                sqlCon.Open();
                string query = "DELETE FROM AdminPanel WHERE ID =" + AdminID.Text;
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                sqlCmd.ExecuteNonQuery();

                sqlCon.Close();

                Response.Redirect("AdminAdmin.aspx");

            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            var AdminID = button.NamingContainer.FindControl("AdminID") as Label;
            var AdminUserName = button.NamingContainer.FindControl("AdminUserName") as TextBox;
            var AdminPassword = button.NamingContainer.FindControl("AdminPassword") as TextBox;
            


            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE AdminPanel SET username=@username, password=@password WHERE ID = @ID";
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@ID", AdminID.Text);
                cmd.Parameters.AddWithValue("@username", AdminUserName.Text);
                cmd.Parameters.AddWithValue("@password", AdminPassword.Text);
                



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminAdmin.aspx");
            }
        }
    }
}