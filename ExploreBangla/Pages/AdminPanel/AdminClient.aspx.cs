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
    public partial class AdminClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }

        protected void ClientImageUpdateButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var ClientID = button.NamingContainer.FindControl("ClientID") as Label;
            var FileUpload1 = button.NamingContainer.FindControl("ClientImageUpdate") as FileUpload;



            HttpPostedFile postedFile = FileUpload1.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            int fileSize = postedFile.ContentLength;


            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                using (SqlConnection con = new SqlConnection(cs))
                {

                    string query = "UPDATE Client SET ClientImage=@ClientImage WHERE ID = @ClientID";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@ClientID", ClientID.Text);



                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@ClientImage",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();

                    Response.Redirect("AdminClient.aspx");

                }
            }
            else
            {
                Response.Redirect("AdminClient.aspx");
            }
        }



        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            var button = (Control)sender;
            var ClientID = button.NamingContainer.FindControl("ClientID") as Label;


            using (SqlConnection sqlCon = new SqlConnection(cs))
            {
                sqlCon.Open();
                string query = "DELETE FROM Client WHERE ID =" + ClientID.Text;
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                sqlCmd.ExecuteNonQuery();

                sqlCon.Close();

                Response.Redirect("AdminClient.aspx");

            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            var ClientID = button.NamingContainer.FindControl("ClientID") as Label;
            var ClientName = button.NamingContainer.FindControl("ClientName") as TextBox;
            var ClientReview = button.NamingContainer.FindControl("ClientReview") as TextBox;
            var DisplayAction = button.NamingContainer.FindControl("DisplayAction") as TextBox;


            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE Client SET ClientName=@ClientName, ClientReview=@ClientReview, Display=@Display WHERE ID = @ID";
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@ID", ClientID.Text);
                cmd.Parameters.AddWithValue("@ClientName", ClientName.Text);
                cmd.Parameters.AddWithValue("@ClientReview", ClientReview.Text);
                cmd.Parameters.AddWithValue("@Display", DisplayAction.Text);



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminClient.aspx");
            }
        }

        protected void InsertHotel_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = ClientImage.PostedFile;
            string fileName = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(fileName);
            int fileSize = postedFile.ContentLength;


            if (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif" || fileExtension.ToLower() == ".png")
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                byte[] bytes = binaryReader.ReadBytes((int)stream.Length);
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;



                using (SqlConnection con = new SqlConnection(cs))
                {
                    int x = 200;
                    SqlCommand cmd = new SqlCommand("ClientInfo", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(ClientIDTextBox.Text.Trim()));
                    cmd.Parameters.AddWithValue("@ClientName", ClientNameTextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@ClientReview", ClientReviewTextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@Display", ShowStatusTextBox.Text.Trim());
                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@ClientImage",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);



                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Redirect("AdminClient.aspx");
                }
            }
            else
            {
                Response.Redirect("AdminClient.aspx");
            }
        }
    }
}