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
    public partial class AdminOurTeam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }

        protected void Update_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            var Name = button.NamingContainer.FindControl("Name") as TextBox;
            var Designation = button.NamingContainer.FindControl("Designation") as TextBox;
            var FaceBook = button.NamingContainer.FindControl("FaceBook") as TextBox;
            var Instagram = button.NamingContainer.FindControl("Instagram") as TextBox;
            var LinkedIn = button.NamingContainer.FindControl("LinkedIn") as TextBox;
            var ID = button.NamingContainer.FindControl("ID") as Label;


            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            

            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE ourteam SET name=@name, designation=@designation, facebooklink=@facebooklink, intagramlink=@intagramlink, linkedinlink=@linkedinlink  WHERE ID = " + ID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@name", Name.Text);
                cmd.Parameters.AddWithValue("@designation", Designation.Text);
                cmd.Parameters.AddWithValue("@facebooklink", FaceBook.Text);
                cmd.Parameters.AddWithValue("@intagramlink", Instagram.Text);
                cmd.Parameters.AddWithValue("@linkedinlink", LinkedIn.Text);
                

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                
                Response.Redirect("AdminOurTeam.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
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

                    string query = "UPDATE ourteam SET image=@image WHERE ID = @ID";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@ID", ID.Text.Trim());
                    


                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@image",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();
                 
                    Response.Redirect("AdminOurTeam.aspx");

                }
            }
            else
            {
                Response.Redirect("AdminOurTeam.aspx");
            }
        }
    }
    
}