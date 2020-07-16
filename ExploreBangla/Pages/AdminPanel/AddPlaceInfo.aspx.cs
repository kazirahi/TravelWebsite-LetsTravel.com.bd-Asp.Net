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
    public partial class AddPlaceInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
            if (!IsPostBack)
            {
                
            }
            
        }
        public void placeImage()
        {
            
            //placecover
            HttpPostedFile postedFile1 = placecoverimage.PostedFile;
            string fileName1 = Path.GetFileName(postedFile1.FileName);
            string fileExtension1 = Path.GetExtension(fileName1);
            int fileSize1 = postedFile1.ContentLength;
            //foodimage
            HttpPostedFile postedFile2 = foodimage.PostedFile;
            string fileName2 = Path.GetFileName(postedFile2.FileName);
            string fileExtension2 = Path.GetExtension(fileName2);
            int fileSize2 = postedFile2.ContentLength;
            

            if ( fileExtension1.ToLower() == ".jpg" || fileExtension1.ToLower() == ".gif" || fileExtension1.ToLower() == ".png" || fileExtension2.ToLower() == ".jpg" || fileExtension2.ToLower() == ".gif" || fileExtension2.ToLower() == ".png" )
            {
                

                //place cover
                Stream stream1 = postedFile1.InputStream;
                BinaryReader binaryReader1 = new BinaryReader(stream1);
                byte[] bytes1 = binaryReader1.ReadBytes((int)stream1.Length);

                //foodimage
                Stream stream2 = postedFile2.InputStream;
                BinaryReader binaryReader2 = new BinaryReader(stream2);
                byte[] bytes2 = binaryReader2.ReadBytes((int)stream2.Length);

               

                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


                using (SqlConnection con = new SqlConnection(cs))
                {
                    int x = 200;
                    SqlCommand cmd = new SqlCommand("adde", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PlaceID", placeid.Text.Trim());
                    cmd.Parameters.AddWithValue("@PlaceName", placename.Text.Trim());
                    cmd.Parameters.AddWithValue("@DistrictID", districtid.Text.Trim());
                    cmd.Parameters.AddWithValue("@DistrictName", districtname.Text.Trim());
                    cmd.Parameters.AddWithValue("@PlaceDescription", placedescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@TransportID", transportid.Text.Trim());
                    cmd.Parameters.AddWithValue("@TransportDescription", transportdescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@FoodID", foodid.Text.Trim());
                    cmd.Parameters.AddWithValue("@FoodName", foodname.Text.Trim());
                    cmd.Parameters.AddWithValue("@FoodDescription", fooddescription.Text.Trim());
                    cmd.Parameters.AddWithValue("@position", PlaceRanking.Text.Trim());

                  
                   
                    //place cover
                    SqlParameter placeimage2 = new SqlParameter()
                    {
                        ParameterName = "@PlaceCImage",
                        Value = bytes1


                    };
                    cmd.Parameters.Add(placeimage2);
                    //food
                    SqlParameter placeimage3 = new SqlParameter()
                    {
                        ParameterName = "@FoodImage",
                        Value = bytes2


                    };
                    cmd.Parameters.Add(placeimage3);

                    

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();


                    Response.Redirect("AddPlaceInfo.aspx");
                    
                }

            }
            else
            {
                lblsubmit.Visible = true;
                lblsubmit.Text = "Only images(.jpg .png .gif) can be uploaded";
                lblsubmit.ForeColor = System.Drawing.Color.Red;
            }
        }
        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var PlaceID = button.NamingContainer.FindControl("PlaceID") as TextBox;
            var ID = button.NamingContainer.FindControl("ID") as Label;
            var PlaceName = button.NamingContainer.FindControl("PlaceName") as TextBox;
            var DistrictID = button.NamingContainer.FindControl("DistrictID") as TextBox;
            var DistrictName = button.NamingContainer.FindControl("DistrictName") as TextBox;
            var PlaceDescription = button.NamingContainer.FindControl("PlaceDescription") as TextBox;
            var FoodID = button.NamingContainer.FindControl("FoodID") as TextBox;
            var FoodName = button.NamingContainer.FindControl("FoodName") as TextBox;
            var FoodDescription = button.NamingContainer.FindControl("FoodDescription") as TextBox;
            var TransportID = button.NamingContainer.FindControl("TransportID") as TextBox;
            var TransportDescription = button.NamingContainer.FindControl("TransportDescription") as TextBox;
            var warning = button.NamingContainer.FindControl("warning") as Label;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {


                string query = "UPDATE PlaceInfo SET PlaceID=@PlaceID,DistrictID=@DistrictID,PlaceName=@PlaceName,DistrictName=@DistrictName,PlaceDescription=@PlaceDescription,TransportID=@TransportID,TransportDescription=@TransportDescription,FoodID=@FoodID,FoodName=@FoodName,FoodDescription=@FoodDescription where ID="+ID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@PlaceID", PlaceID.Text.Trim());
                cmd.Parameters.AddWithValue("@DistrictID", DistrictID.Text.Trim());
                cmd.Parameters.AddWithValue("@PlaceName", PlaceName.Text.Trim());
                cmd.Parameters.AddWithValue("@DistrictName", DistrictName.Text.Trim());
                cmd.Parameters.AddWithValue("@PlaceDescription", PlaceDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@TransportID", TransportID.Text.Trim());
                cmd.Parameters.AddWithValue("@TransportDescription", TransportDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@FoodID", FoodID.Text.Trim());
                cmd.Parameters.AddWithValue("@FoodName", FoodName.Text.Trim());
                cmd.Parameters.AddWithValue("@FoodDescription", FoodDescription.Text.Trim());


                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();


                warning.Visible = true;
                warning.Text = "Updated";
            }

        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;



            var button = (Control)sender;
           
            var ID = button.NamingContainer.FindControl("ID") as Label;



            using (SqlConnection sqlCon = new SqlConnection(cs))
                    {
                        sqlCon.Open();
                        string query = "DELETE FROM PlaceInfo WHERE ID =" + ID.Text;
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        
                        sqlCmd.ExecuteNonQuery();

                        sqlCon.Close();

                        Response.Redirect("AddPlaceInfo.aspx");

                    }

                
        }

        protected void PlaceImageUploadButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var PlaceID = button.NamingContainer.FindControl("PlaceID") as TextBox;
            var PlaceImageUpload = button.NamingContainer.FindControl("PlaceImageUpload") as FileUpload;
            var warning = button.NamingContainer.FindControl("warning") as Label;




            HttpPostedFile postedFile = PlaceImageUpload.PostedFile;
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

                    string query = "UPDATE PlaceInfo SET PlaceCImage=@PlaceCImage WHERE PlaceID = @PlaceID";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@PlaceID", PlaceID.Text.Trim());



                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@PlaceCImage",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();
                    warning.Visible = true;
                    Response.Redirect("AddPlaceInfo.aspx");

                }
            }
            else
            {
                Response.Redirect("AddPlaceInfo.aspx");
            }
        }

        protected void FoodImageUploadButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var PlaceID = button.NamingContainer.FindControl("PlaceID") as TextBox;
            var FoodImageUpload = button.NamingContainer.FindControl("FoodImageUpload") as FileUpload;
            var warning = button.NamingContainer.FindControl("warning") as Label;




            HttpPostedFile postedFile = FoodImageUpload.PostedFile;
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

                    string query = "UPDATE PlaceInfo SET FoodImage=@FoodImage WHERE PlaceID = @PlaceID";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@PlaceID", PlaceID.Text.Trim());



                    SqlParameter PersonImages = new SqlParameter()
                    {
                        ParameterName = "@FoodImage",
                        Value = bytes


                    };
                    cmd.Parameters.Add(PersonImages);








                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    con.Close();
                    warning.Visible = true;
                    Response.Redirect("AddPlaceInfo.aspx");

                }
            }
            else
            {
                Response.Redirect("AddPlaceInfo.aspx");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(cs);
            String myq = "select * from[dbo].[PlaceInfo] where PlaceName=@PlaceName";

            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);

            sqlcon.Open();
            sqlcmd.Parameters.AddWithValue("@PlaceName", DropDownList1.SelectedItem.Text.ToString());
            SqlDataReader sdr = sqlcmd.ExecuteReader();
            if (sdr.HasRows)
            {
                DataList1.DataSource = sdr;
                DataList1.DataBind();
            }
            sqlcon.Close();
        }

        protected void submitbutton_Click(object sender, EventArgs e)
        {
            placeImage();
        }

        
    }
}