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
    public partial class CreateBlog : System.Web.UI.Page
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
                    
                    id.Text= ds.Tables[0].Rows[0]["ID"].ToString();
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
            String myq = "select* from[dbo].[Notifications] where ClientID='" + id.Text.Trim() + "'order by Time desc ";
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
        public void placeImage()
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

                    string notifications = ProfileName.Text+ "("+ProfileEmailID.Text+")" + " Has been posted a ("+ BlogName.Text + ") new blog, and pending for admin approval.";
                    SqlCommand cmd = new SqlCommand("AdminNoti", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ClientID", id.Text.Trim());
                    cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                    cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                using (SqlConnection con = new SqlConnection(cs))
                {

                    string notifications = "Your " + BlogName.Text + " Has been Submitted, and pending for admin approval. Enjoy travel, knowing place and bloging this page for reach the information all over the world. Thank You.";
                    SqlCommand cmd = new SqlCommand("noti", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ClientID", id.Text.Trim());
                    cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                    cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                using (SqlConnection con = new SqlConnection(cs))
                {
                    Random r = new Random();
                    int id1 = r.Next();
                    SqlCommand cmd = new SqlCommand("aahan", con);
                    
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id1);
                    cmd.Parameters.AddWithValue("@ClientID",id.Text.Trim());
                    cmd.Parameters.AddWithValue("@BlogName", BlogName.Text.Trim());
                    cmd.Parameters.AddWithValue("@BlogerName", ProfileName.Text.Trim());
                    cmd.Parameters.AddWithValue("@BlogLocation", BlogLocation.Text.Trim());
                    cmd.Parameters.AddWithValue("@BlogDate", DateTime.Now.ToString("D"));
                    cmd.Parameters.AddWithValue("@BlogTime", DateTime.Now.ToString("T"));
                    cmd.Parameters.AddWithValue("@BlogDescription", BlogDescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@Status", "Pending");


                    SqlParameter blogimage = new SqlParameter()
                    {
                        ParameterName = "@BlogPic",
                        Value = bytes


                    };
                    cmd.Parameters.Add(blogimage);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    WarningLabel.Visible = true;
                    WarningLabel.Text = "Your Blog was created. Our Admin Panel was check your blog then published your blog.Thank You";
                    WarningLabel.ForeColor = System.Drawing.Color.Green;
                    Response.Redirect("MyBlogs.aspx?EmailID=" + ProfileEmailID.Text.Trim());
                }
               
            }
            else
            {
                WarningLabel.Visible = true;
                WarningLabel.Text = "Only images(.jpg .png .gif) can be uploaded";
                WarningLabel.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            placeImage();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();


            Response.Redirect("Signin.aspx");
        }

        protected void Notifications_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notifications.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }
    }
}