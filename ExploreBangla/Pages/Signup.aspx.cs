using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;

namespace ExploreBangla.Pages
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

                    string notifications = EmailIDTextBox.Text+ "Open a new Blog Account";
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
                using (SqlConnection con = new SqlConnection(cs))
                {
                Random r = new Random();
                int id = r.Next();
                    SqlCommand cmd = new SqlCommand("SignIn", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@ID", id);
                    cmd.Parameters.AddWithValue("@FirstName", FirstNameTextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@LastName", LastNameTextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@EmailID", EmailIDTextBox.Text.Trim());
                    cmd.Parameters.AddWithValue("@Password", PasswordTextBox.Text.Trim());





                    SqlParameter blogimage = new SqlParameter()
                    {
                        ParameterName = "@PersonImages",
                        Value = bytes


                    };
                    cmd.Parameters.Add(blogimage);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    
                    Response.Redirect("Signin.aspx");
                }


               

               
                    
                }

            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            placeImage();
        }

        protected void ConfirmEmailIDTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}