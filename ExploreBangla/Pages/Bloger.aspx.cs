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

    public partial class Blog : System.Web.UI.Page
    {
        static int c = 0;
        static int t = 0;
        static int x = 0;
        static int y = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["username"] == null)
                {
                    BlogLink.Visible = true;
                }
                bindata();

                bindata1();
            }
            

        

            
        }
        private void bindata()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myquery = "Select [ID],[PlaceName],[PlaceCImage] from PlaceInfo";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand(myquery, con);
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            t = ds.Tables[0].Rows.Count;
            DataTable dt = ds.Tables[0];
            PagedDataSource pg = new PagedDataSource();
            pg.DataSource = dt.DefaultView;
            pg.AllowPaging = true;
            pg.CurrentPageIndex = c;
            pg.PageSize = 2;
            Button2.Visible = true;
            Button41.Visible = true;
            Button5.Visible = true;
            Button6.Visible = true;
            if (pg.IsFirstPage)
            {
                Button2.Visible = false;
                Button41.Visible = false;
            }
            if (pg.IsLastPage)
            {
                Button5.Visible = false;
                Button6.Visible = false;
            }
            Button2.Enabled = !pg.IsFirstPage;
            Button41.Enabled = !pg.IsFirstPage;
            Button5.Enabled = !pg.IsLastPage;
            Button6.Enabled = !pg.IsLastPage;
            //Binding pg to datalist
            DataList7.DataSource = pg;//dl is datalist
            DataList7.DataBind();
            con.Close();
        }
        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void bindata1()
        {
            string accepted = "Accepted";
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select * from[dbo].[BlogUpdate] where Status='"+ accepted.Trim() + "'order by ID ";
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
        
        protected void Button31_Click(object sender, EventArgs e)
        {
            c = 0;

            bindata();
        }

        protected void Button41_Click(object sender, EventArgs e)
        {
            if (c == 0)
            {

            }
            else
            {
                c = c - 1;

                bindata();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (c == t - 1)
            {

            }
            else
            {
                c = c + 1;
                bindata();
            }


        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            c = (t / 2) - 1;
            bindata();

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
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
           



        }
     
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                string to = "kazirahi1234@gmail.com";
                string from = TextBox1.Text.Trim();

                MailMessage message = new MailMessage(from, to);
                message.Subject = TextBox1.Text;
                message.Body = TextBox1.Text + "       He or She want to JOIN as a newsletter";

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

                client.Credentials = new System.Net.NetworkCredential("kazirahi1234@gmail.com", "mxhmhzhvvacmgoui");

                client.EnableSsl = true;
                client.Send(message);
                Label2.Text = TextBox1.Text + ", E-mail Send Successfully";
                if (Label2.ForeColor != System.Drawing.Color.Green)
                {
                    Label2.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    Label2.ForeColor = new System.Drawing.Color();
                }
                
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {

                    string notifications = TextBox1.Text+" he/she wants to join as a Newsletter";
                    SqlCommand cmd = new SqlCommand("AdminNoti", con);
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@ClientID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                    cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                    cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                TextBox1.Text = "";
            }

            catch
            {
               
                Response.Redirect("Bloger.aspx");
                

            }


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

        protected void DataList7_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "clickmore1")
            {
                Response.Redirect("info.aspx?PlaceName=" + e.CommandArgument.ToString());
            }
        }
    }

       
        
    }
