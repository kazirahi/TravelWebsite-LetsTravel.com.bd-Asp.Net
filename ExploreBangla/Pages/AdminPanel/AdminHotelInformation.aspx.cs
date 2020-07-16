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
    public partial class AdminHotelInformation : System.Web.UI.Page
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
                int x = 200;
                SqlCommand cmd = new SqlCommand("Hotel", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID", PlaceID.Text.Trim());
                cmd.Parameters.AddWithValue("@PlaceName", DropDownList1.SelectedItem.Text.ToString());
                cmd.Parameters.AddWithValue("@HotelName", HotelName.Text.Trim());
                cmd.Parameters.AddWithValue("@Adrees", Address.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelDescription", HotelDescription.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelContactNo", HotelContactNo.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelStatus", HotelImageURL.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelImageURl", HotelStatus.Text.Trim()); 

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Response.Redirect("AdminHotelInformation.aspx");

            }
        }



        protected void Delete_Click(object sender, EventArgs e)
        {

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;



            var button = (Control)sender;
            var HotelID = button.NamingContainer.FindControl("HotelID") as Label;


            using (SqlConnection sqlCon = new SqlConnection(cs))
            {
                sqlCon.Open();
                string query = "DELETE FROM HotelInfo WHERE ID =" + HotelID.Text;
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);

                sqlCmd.ExecuteNonQuery();

                sqlCon.Close();

                Response.Redirect("AdminHotelInformation.aspx");

            }
        }



        

      

        protected void UpdatteButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var HotelID = button.NamingContainer.FindControl("HotelID") as Label;
            var HotelPlaceName = button.NamingContainer.FindControl("HotelPlaceName") as TextBox;
            var HotelHotelName = button.NamingContainer.FindControl("HotelHotelName") as TextBox;
            var HotelAddress = button.NamingContainer.FindControl("HotelAddress") as TextBox;
            var HotelContactNo1 = button.NamingContainer.FindControl("HotelContactNo1") as TextBox;
            var HotelDescription1 = button.NamingContainer.FindControl("HotelDescription1") as TextBox;
            var HotelStatus1 = button.NamingContainer.FindControl("HotelStatus1") as TextBox;
            var hotelImageURl1 = button.NamingContainer.FindControl("hotelImageURl1") as TextBox;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {


                string query = "UPDATE HotelInfo SET ID=@ID,PlaceName=@PlaceName,HotelName=@HotelName,Adrees=@Adrees,HotelDescription=@HotelDescription,HotelContactNo=@HotelContactNo,HotelImageURl=@HotelImageURl,HoteleStatus=@HotelStatus where ID=@ID";
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@ID", HotelID.Text.Trim());
                cmd.Parameters.AddWithValue("@PlaceName", HotelPlaceName.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelName", HotelHotelName.Text.Trim());
                cmd.Parameters.AddWithValue("@Adrees", HotelAddress.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelDescription", HotelDescription1.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelContactNo", HotelContactNo1.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelImageURl", hotelImageURl1.Text.Trim());
                cmd.Parameters.AddWithValue("@HotelStatus", HotelStatus1.Text.Trim());


                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();
                Response.Redirect("AdminHotelInformation.aspx");

            }
        }
    }
}