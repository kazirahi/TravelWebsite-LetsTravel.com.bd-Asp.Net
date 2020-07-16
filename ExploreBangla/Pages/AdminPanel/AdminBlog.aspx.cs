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
    public partial class AdminBlog : System.Web.UI.Page
    {
        static int x = 0;
        static int y = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("~/Pages/Home.aspx");
            }
            if (!IsPostBack)
            {

                
                bindata1();
            }
        }
      
        private void bindata1()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select * from[dbo].[BlogUpdate]";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Close();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlcmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                y = ds.Tables[0].Rows.Count;
                DataTable dt = ds.Tables[0];
                PagedDataSource pg1 = new PagedDataSource();
                pg1.DataSource = dt.DefaultView;
                pg1.AllowPaging = true;
                pg1.CurrentPageIndex = x;
                pg1.PageSize = 20;
                Button4.Visible = true;
                Button7.Visible = true;
                Button8.Visible = true;
                Button9.Visible = true;
                if (pg1.IsFirstPage)
                {
                    Button4.BackColor = System.Drawing.Color.Gray;
                    Button4.ForeColor = System.Drawing.Color.White;
                    Button7.BackColor = System.Drawing.Color.Gray;
                    Button7.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button4.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button4.ForeColor = System.Drawing.Color.White;
                    Button7.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button7.ForeColor = System.Drawing.Color.White;
                }
                if (pg1.IsLastPage)
                {
                    Button8.BackColor = System.Drawing.Color.Gray;
                    Button8.ForeColor = System.Drawing.Color.White;
                    Button9.BackColor = System.Drawing.Color.Gray;
                    Button9.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button8.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button8.ForeColor = System.Drawing.Color.White;
                    Button9.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button9.ForeColor = System.Drawing.Color.White;


                }
                Button4.Enabled = !pg1.IsFirstPage;
                Button7.Enabled = !pg1.IsFirstPage;
                Button8.Enabled = !pg1.IsLastPage;
                Button9.Enabled = !pg1.IsLastPage;
                //Binding pg to datalist
                DataList1.DataSource = pg1;//dl is datalist
                DataList1.DataBind();


                sqlcon.Close();
            }
            else
            {
                

                Button4.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                Button9.Visible = false;

                sqlcon.Close();
            }

            sqlcon.Close();


        }
        protected void Button4_Click1(object sender, EventArgs e)
        {
            x = 0;
            bindata1();
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (x == 0)
            {

            }
            else
            {
                x = x - 1;
                bindata1();
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (x == y - 1)
            {

            }
            else
            {
                x = x + 1;
                bindata1();
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            x = (y / 10) - 1;
            bindata1();
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
            var button = (Control)sender;
            var GetID1 = button.NamingContainer.FindControl("GetID") as Label;
            var BlogName = button.NamingContainer.FindControl("BlogName") as Label;
            var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string notifications = "Your " + BlogName.Text + " Has been approved. Enjoy travel, knowing place and bloging this page for reach the information all over the world. Thank You.";
                SqlCommand cmd = new SqlCommand("noti", con);
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


                string query = "UPDATE BlogUpdate SET Status=@Status WHERE [ID]=" + BlogID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Status", "Accepted");
                

                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();

                
                
                Response.Redirect("AdminBlog.aspx");
            }
            
            
        }


        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            var GetID1 = button.NamingContainer.FindControl("GetID") as Label;
            var BlogName = button.NamingContainer.FindControl("BlogName") as Label;
            var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string notifications = "Your " + BlogName.Text + " Has been Declined due to Spam.Please Review Your Blog and submit again. Enjoy travel, knowing place and bloging this page for reach the information all over the world. Thank You.";
                SqlCommand cmd = new SqlCommand("noti", con);
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


                string query = "UPDATE BlogUpdate SET Status=@Status WHERE ID = " + BlogID.Text;
                SqlCommand cmd = new SqlCommand(query, con);
                //cmd.CommandType = CommandType.StoredProcedure;


                cmd.Parameters.AddWithValue("@Status", "Declined");


                con.Open();
                cmd.ExecuteNonQuery();

                con.Close();



                Response.Redirect("AdminBlog.aspx");
            }
            
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var answerLabel = button.NamingContainer.FindControl("AnswerLabel");
            var btn = button.NamingContainer.FindControl("Button1");

            answerLabel.Visible = true;
            button.Visible = false;
            btn.Visible = true;


        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

            var answerLabel = button.NamingContainer.FindControl("AnswerLabel");
            var btn = button.NamingContainer.FindControl("Button3");

            answerLabel.Visible = false;
            button.Visible = false;
            btn.Visible = true;
        }
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select * from[dbo].[BlogUpdate] ";
            SqlConnection sqlcon = new SqlConnection(cs);
            SqlCommand sqlcmd = new SqlCommand(myq, sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;

            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sqlcon.Close();

                sdr.Close();
                sqlcon.Close();
                try
                {

                    var button = (Control)sender;
                    var BlogName = button.NamingContainer.FindControl("BlogName") as Label;
                    var GetID1 = button.NamingContainer.FindControl("GetID") as Label;
                    var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
                    using (SqlConnection con = new SqlConnection(cs))
                    {

                        string notifications = "Your " + BlogName.Text + " Has been Deleted. Enjoy travel, knowing place and bloging this page for reach the information all over the world. Thank You.";
                        SqlCommand cmd = new SqlCommand("noti", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@ClientID", GetID1.Text);
                        cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                        cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }

                    using (SqlConnection sqlCon = new SqlConnection(cs))
                    {
                        sqlCon.Open();
                        string query = "DELETE FROM BlogUpdate WHERE ID =" + BlogID.Text;
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id", BlogID.Text);
                        sqlCmd.ExecuteNonQuery();
                        bindata1();
                        sqlCon.Close();

                        Response.Redirect("AdminBlog.aspx");

                    }
                }
                catch (Exception ex)
                {
                    NoBlog.Visible = true;
                }
            }
            else
            {
                NoBlog.Visible = true;
            }
        }
    }
}