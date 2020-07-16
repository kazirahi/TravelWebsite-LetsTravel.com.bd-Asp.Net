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
    public partial class TransportService : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                DataList2.DataSource = sdr;
                DataList2.DataBind();
            }
            sqlcon.Close();
        }
    }
}