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
    public partial class Profilesetting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("Signin.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["EmailID"] != null)
                {
                   

                    string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection sqlConnection = new SqlConnection(mainconn);
                    string sqlquery = "select * from [dbo].[Signup] where EmailID=@EmailID";

                    SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);

                    sqlConnection.Open();
                    sqlCommand.Parameters.AddWithValue("@EmailID", Request.QueryString["EmailID"]);
                    SqlDataReader sdr = sqlCommand.ExecuteReader();
                    sdr.Close();
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = sqlCommand;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    ProfileName.Text = ds.Tables[0].Rows[0]["FirstName"].ToString() + " " + ds.Tables[0].Rows[0]["LastName"].ToString();
                    ProfileEmailID.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
                    FirstNameTextBox.Text = ds.Tables[0].Rows[0]["FirstName"].ToString(); 
                    LastNameTextBox.Text= ds.Tables[0].Rows[0]["LastName"].ToString();
                    EmailIDTextBox.Text = ds.Tables[0].Rows[0]["EmailID"].ToString();
                    PasswordTextBox.Text= ds.Tables[0].Rows[0]["Password"].ToString();
                    GetID1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                    sqlConnection.Close();
                    count();
                }
                else
                {
                    Response.Redirect("Signin.aspx");
                }
            }
        }
        private void count()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select* from[dbo].[Notifications] where ClientID='" + GetID1.Text.Trim() + "'order by Time desc ";
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
            CountRow.Text = "(" + y + ")";
            sqlcon.Close();

        }
        private void UpdateProfile()
        {
            
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;

            
            using (SqlConnection con = new SqlConnection(cs))
            {

                string notifications = ProfileName.Text + " (" + ProfileEmailID.Text + ") " + " Has been updated profile setting";
                SqlCommand cmd = new SqlCommand("AdminNoti", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ClientID", GetID1.Text.Trim());
                cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            using (SqlConnection con = new SqlConnection(cs))
            {
                
                string query = "UPDATE Signup SET FirstName=@FirstName,LastName=@LastName,Password=@Password WHERE EmailID = @EmailID";
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@LastName", LastNameTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@EmailID", EmailIDTextBox.Text.Trim());
               
                cmd.Parameters.AddWithValue("@Password", PasswordTextBox.Text.Trim());
                    








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();
                    WarningLabel.Visible = true;
                    WarningLabel.ForeColor = System.Drawing.Color.Green;
                    WarningLabel.Text = "Your Data has been Updated.. Thank You";
                    Response.Redirect("Profilesetting.aspx?EmailID=" + ProfileEmailID.Text.Trim());

                }
            }
            
       

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Signin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UpdateProfile();
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void MyBlogs_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyBlogs.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void SettingsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profilesetting.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void Createablog_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateBlog.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void Notifications_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notifications.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void ImageAddButton_Click(object sender, EventArgs e)
        {
            HttpPostedFile postedFile = PersonImages.PostedFile;
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

                    string notifications = ProfileName.Text + "(" + ProfileEmailID.Text + ")" + " Has been Changed profile picture";
                    SqlCommand cmd = new SqlCommand("AdminNoti", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ClientID", GetID1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                    cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                using (SqlConnection con = new SqlConnection(cs))
                {

                    string query = "UPDATE Signup SET PersonImages=@PersonImages WHERE EmailID = @EmailID";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@EmailID", EmailIDTextBox.Text.Trim());
                    //cmd.CommandType = CommandType.StoredProcedure;

                    /* cmd.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text.Trim());
                     cmd.Parameters.AddWithValue("@LastName", LastNameTextBox.Text.Trim());
                     cmd.Parameters.AddWithValue("@EmailID", EmailIDTextBox.Text.Trim());

                     cmd.Parameters.AddWithValue("@Password", PasswordTextBox.Text.Trim());*/


                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@PersonImages",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();
                    WarningLabel.Visible = true;
                    WarningLabel.ForeColor = System.Drawing.Color.Green;
                    WarningLabel.Text = "Your Data has been Updated.. Thank You";
                    Response.Redirect("Profilesetting.aspx?EmailID=" + ProfileEmailID.Text.Trim());

                }
            }
            else
            {
                WarningLabel.Visible = true;
                WarningLabel.Text = "Only images(.jpg .png .gif) can be uploaded";
                WarningLabel.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}