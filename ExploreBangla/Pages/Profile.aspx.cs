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
    public partial class Profile : System.Web.UI.Page
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
                if(Request.QueryString["EmailID"] != null)
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
                    ProfileName.Text= ds.Tables[0].Rows[0]["FirstName"].ToString() +" " + ds.Tables[0].Rows[0]["LastName"].ToString();
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
            string accepted = "Accepted";
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select* from[dbo].[BlogUpdate] where Status='" + accepted.Trim() + "'order by ID ";
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
            
            
            var CommentatorName = button.NamingContainer.FindControl("CommentatorName");
            var CommentatorName1 = button.NamingContainer.FindControl("CommentatorName1");
            var Comment1 = button.NamingContainer.FindControl("Comment1");
            var Button31 = button.NamingContainer.FindControl("Button31");
            var Button3 = button.NamingContainer.FindControl("Button3");
            var Update = button.NamingContainer.FindControl("Update") as Label;
            var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
            var CommentDataList = button.NamingContainer.FindControl("CommentDataList") as DataList;


            Button3.Visible = false;
           
            //CommentatorName1.Visible = true;
            //Comment1.Visible = true;





            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select top 10 * from[dbo].[CommentTable] where BlogID=" + BlogID.Text.ToString() ;
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

                CommentDataList.DataSource = ds;//dl is datalist
                CommentDataList.DataBind();


                sqlcon.Close();
            }
            else
            {
                Update.Visible = true;
                Update.Text = "No Comments in this blog";
                

                sqlcon.Close();
            }

            sqlcon.Close();










            //CommentatorName1.Visible = true;
            //Comment1.Visible = true;


        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;

           
           
            var ComentTextBox = button.NamingContainer.FindControl("ComentTextBox") as TextBox;
            var AddCommentButton = button.NamingContainer.FindControl("AddCommentButton") as Button;
            var CommentatorName = button.NamingContainer.FindControl("CommentatorName");
            var Comment = button.NamingContainer.FindControl("Comment");
            var Button41 = button.NamingContainer.FindControl("Button41");
            var Button1 = button.NamingContainer.FindControl("Button1");
            var Update = button.NamingContainer.FindControl("Update") as Label;
            var CommentDataList = button.NamingContainer.FindControl("CommentDataList") as DataList;
           
            
            ComentTextBox.Visible = true;
            Button41.Visible = true;
            Button1.Visible = false;
            AddCommentButton.Visible = true;
            
            
          
            
            
        }


        
        protected void Button41_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;



            var ComentTextBox = button.NamingContainer.FindControl("ComentTextBox") as TextBox;
            var AddCommentButton = button.NamingContainer.FindControl("AddCommentButton") as Button;
            var CommentatorName = button.NamingContainer.FindControl("CommentatorName");
            var Comment = button.NamingContainer.FindControl("Comment");
            var Button41 = button.NamingContainer.FindControl("Button41");
            var Button1 = button.NamingContainer.FindControl("Button1");
            var Update = button.NamingContainer.FindControl("Update") as Label;
            var CommentDataList = button.NamingContainer.FindControl("CommentDataList") as DataList;

            Button41.Visible = false;
            Button1.Visible = true;
            ComentTextBox.Visible = false;
            AddCommentButton.Visible = false;





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
        protected void AddCommentButton_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;
            var ComentTextBox = button.NamingContainer.FindControl("ComentTextBox") as TextBox;
            var AddCommentButton = button.NamingContainer.FindControl("AddCommentButton") as Button;
            var ClientID = button.NamingContainer.FindControl("ClientID") as Label;
            var BlogID = button.NamingContainer.FindControl("BlogID") as Label;
            var BlogName = button.NamingContainer.FindControl("BlogName") as Label;
            var Update = button.NamingContainer.FindControl("Update") as Label;
            string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {

                string notifications = ProfileName.Text+" has been comented on your "+ BlogName.Text+" post";
                SqlCommand cmd = new SqlCommand("noti", con);
                cmd.CommandType = CommandType.StoredProcedure;
                Random r = new Random();
                int x = r.Next();
                cmd.Parameters.AddWithValue("@ClientID", ClientID.Text.Trim());
                cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));
                cmd.Parameters.AddWithValue("@CommentID", Convert.ToInt32(x));





                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            using (SqlConnection con = new SqlConnection(cs))
            {
               
                SqlCommand cmd = new SqlCommand("comment", con);

                cmd.CommandType = CommandType.StoredProcedure;
                
                cmd.Parameters.AddWithValue("@ProfileID", GetID1.Text.Trim());
                cmd.Parameters.AddWithValue("@ProfileName", ProfileName.Text.Trim());
                cmd.Parameters.AddWithValue("@ClientID", ClientID.Text.Trim());
                cmd.Parameters.AddWithValue("@BlogID", BlogID.Text.Trim());
                cmd.Parameters.AddWithValue("@CommentDescription", ComentTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                cmd.Parameters.AddWithValue("@Time",DateTime.Now.ToString("T"));
                


         


                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Update.Visible = true;
                
                Update.Text = "Your Comment hasbeen posted";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;



            var Paragraph = button.NamingContainer.FindControl("Paragraph") ;
            var Paragraph1 = button.NamingContainer.FindControl("Paragraph1") ;
            var LinkButton2 = button.NamingContainer.FindControl("LinkButton3");
            var LinkButton1 = button.NamingContainer.FindControl("LinkButton1");
            
            LinkButton1.Visible = false;
            LinkButton2.Visible = true;
            Paragraph.Visible = false;
            Paragraph1.Visible = true;


        }

        

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            var button = (Control)sender;



            var Paragraph = button.NamingContainer.FindControl("Paragraph");
            var Paragraph1 = button.NamingContainer.FindControl("Paragraph1");
            var LinkButton2 = button.NamingContainer.FindControl("LinkButton3");
            var LinkButton1 = button.NamingContainer.FindControl("LinkButton1");
            LinkButton2.Visible = false;
            LinkButton1.Visible = true;
            Paragraph.Visible = true;
            Paragraph1.Visible = false;
        }
    }
}