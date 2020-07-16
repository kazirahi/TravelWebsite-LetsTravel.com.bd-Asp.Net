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
    public partial class Admin_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
            count();
            Blogcount();
            NotificationCo();
            UserCo();
            HotelCo(); RestCo(); ClientReCo(); AdminCO();
        }
        private void count()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[PlaceInfo]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            PlaceCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void Blogcount()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[BlogUpdate]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            BlogCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void NotificationCo()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ClientID] from[dbo].[AdminNotifications]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            NotificationCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void UserCo()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[Signup]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            UserCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void HotelCo()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[HotelInfo]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            HotelCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void RestCo()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[RestaurentInfo]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            RestaurentCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void ClientReCo()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[Client]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            ClientCount.Text = y.ToString();
            sqlcon.Close();

        }
        private void AdminCO()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID] from[dbo].[AdminPanel]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();

            sdr.Close();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = sqlcmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            int y = ds.Tables[0].Rows.Count;
            AdminCount.Text = y.ToString();
            sqlcon.Close();

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPlaceInfo.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBlog.aspx");
        }



        protected void LinkButton3_Click1(object sender, EventArgs e)
        {
            Response.Redirect("AdminNotification.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminNewUser.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHotelInformation.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRestaurentInformation.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminClient.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAdmin.aspx");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var ID = button.NamingContainer.FindControl("ID") as Label;
            var FileUpload1 = button.NamingContainer.FindControl("FileUpload1") as FileUpload;



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

                    string query = "UPDATE LandingPage SET MainImage=@MainImage WHERE ID = @ID";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@ID", ID.Text);



                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@MainImage",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();

                    Response.Redirect("AdminHome.aspx");

                }
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            var ID = button.NamingContainer.FindControl("ID") as Label;
            var MainHeading = button.NamingContainer.FindControl("MainHeading") as TextBox;
            var SubHeadingTextBox = button.NamingContainer.FindControl("SubHeadingTextBox") as TextBox;
            
            

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE LandingPage SET MainHeading=@MainHeading, SubHeading=@SubHeading WHERE ID = @ID";
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@ID", ID.Text);
                cmd.Parameters.AddWithValue("@MainHeading", MainHeading.Text);
                cmd.Parameters.AddWithValue("@SubHeading", SubHeadingTextBox.Text);
             



                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminHome.aspx");
            }
        }
    }
}