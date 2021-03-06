﻿using System;
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
    public partial class Notifications : System.Web.UI.Page
    {
        static int x = 0;
        static int y = 0;
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

                    GetID1.Text = ds.Tables[0].Rows[0]["ID"].ToString();
                    sqlConnection.Close();
                    bindata1();
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
            y = ds.Tables[0].Rows.Count;
            CountRow.Text = "(" + y + ")";
            sqlcon.Close();

        }
        private void bindata1()
        {
           
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select* from[dbo].[Notifications] where ClientID='" + GetID1.Text.Trim() + "'order by Time desc ";
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
                pg1.PageSize = 10;
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
                NoBlog.Visible = true;
                Button4.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                Button9.Visible = false;

                sqlcon.Close();
            }

            sqlcon.Close();


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
        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session.Abandon();


            Response.Redirect("Signin.aspx");
        }

        protected void SettingButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profilesetting.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void MyBlogButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyBlogs.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void CreateBlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateBlog.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void Notifications_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notifications.aspx?EmailID=" + ProfileEmailID.Text.Trim());
        }

        protected void ClearNotification_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select * from[dbo].[Notifications] where ClientID='" + GetID1.Text.ToString() + " 'order by ID";
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
                    var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
                    

                    using (SqlConnection sqlCon = new SqlConnection(cs))
                    {
                        sqlCon.Open();
                        string query = "DELETE FROM Notifications WHERE ClientID =" + GetID1.Text;
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@id", GetID1.Text);
                        sqlCmd.ExecuteNonQuery();
                        bindata1();
                        sqlCon.Close();

                        Response.Redirect("Notifications.aspx?EmailID=" + ProfileEmailID.Text.Trim());

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