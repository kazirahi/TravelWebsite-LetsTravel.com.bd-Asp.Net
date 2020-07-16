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
    public partial class AdminRanked : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {

            var button = (Control)sender;

            var PositionView = button.NamingContainer.FindControl("PositionView") as TextBox;
            var PlaceID = button.NamingContainer.FindControl("PlaceID") as Label;
          
           
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;



            using (SqlConnection con = new SqlConnection(cs))
            {

                string query = "UPDATE PlaceInfo SET position=@position WHERE PlaceID = " + PlaceID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@position", PositionView.Text);
                

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                
                Response.Redirect("AdminRanked.aspx");
            }
        }
    }
}