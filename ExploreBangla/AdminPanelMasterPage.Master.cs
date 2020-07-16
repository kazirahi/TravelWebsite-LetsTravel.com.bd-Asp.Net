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

namespace ExploreBangla
{
    public partial class AdminPanelMasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                UserName.Text = Session["admin"].ToString();
                count();
                count1();
                countNotifiications();
            }
        }
        private void countNotifiications()
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
            NotificationNo.Text = y.ToString();
            sqlcon.Close();

        }
        private void count()
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
            Label1.Text = y.ToString() ;
            sqlcon.Close();

        }
        private void count1()
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
            Label2.Text = y.ToString();
            sqlcon.Close();

        }
        protected void PlaceInformation_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPlaceInfo.aspx");
        }
        

        

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHome.aspx");
        }

        protected void NotificationButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminNotification.aspx");
        }

        protected void BlogButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminBlog.aspx");
        }

        protected void AboutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAbout.aspx");
        }

        protected void RankedPlaceButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRanked.aspx");
        }

        protected void HotelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminHotelInformation.aspx");

        }

      
        

   
       
        protected void RestaurenButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminRestaurentInformation.aspx");
        }

        protected void ClientComment_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminComment.aspx");
        }

        protected void NewUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminNewUser.aspx");
        }

        protected void OurTeam_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminOurTeam.aspx");
        }

        protected void AdminUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAdmin.aspx");
        }

        protected void Client_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminClient.aspx");
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session.Abandon();


            Response.Redirect("~/Pages/Home.aspx");
        }
    }
}