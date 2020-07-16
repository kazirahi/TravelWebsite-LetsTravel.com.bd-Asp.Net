using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
namespace ExploreBangla.Pages
{
    public partial class info : System.Web.UI.Page
    {
       static int c = 0;
        static int t = 0;
        static int x = 0;
        static int y = 0;
        static int a = 0;
        static int b = 0;
        static int p = 0;
        static int q = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                

                if (Request.QueryString["PlaceName"] != null)
                {
                    string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlConnection sqlConnection = new SqlConnection(mainconn);
                    string sqlquery = "select * from [dbo].[PlaceInfo] where PlaceName=@PlaceName";

                    SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);
               
                    sqlConnection.Open();
                    sqlCommand.Parameters.AddWithValue("@PlaceName", Request.QueryString["PlaceName"]);
                    SqlDataReader sdr = sqlCommand.ExecuteReader();

                    
                    if (sdr.HasRows)
                    {
                        sdr.Close();
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = sqlCommand;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        Label1.Text = ds.Tables[0].Rows[0]["DistrictID"].ToString();
                        Label3.Text = "Nearby Place in " + ds.Tables[0].Rows[0]["PlaceName"].ToString();
                        DataList2.DataSource = ds;
                        DataList2.DataBind();
                        blog();
                        hotel();
                        Restaurent();
                       
                        mostpopularplace();
                    }


                    else
                    {
                        Response.Redirect("Home.aspx");

                    }


                    sqlConnection.Close();
                }
                else
                {
                    Response.Redirect("Home.aspx");

                }
              

               
            }
        }
        private void mostpopularplace()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID],[PlaceCImage],[PlaceName] from [dbo].[PlaceInfo] where DistrictID= '" + Label1.Text + " 'order by position";
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
                q = ds.Tables[0].Rows.Count;
                DataTable dt = ds.Tables[0];
                PagedDataSource pg1 = new PagedDataSource();
                pg1.DataSource = dt.DefaultView;
                pg1.AllowPaging = true;
                pg1.CurrentPageIndex = p;
                pg1.PageSize = 3;
                Button13.Visible = true;
                Button14.Visible = true;
                Button15.Visible = true;
                Button16.Visible = true;
                if (pg1.IsFirstPage)
                {
                    Button13.BackColor = System.Drawing.Color.Gray;
                    Button13.ForeColor = System.Drawing.Color.White;
                    Button14.BackColor = System.Drawing.Color.Gray;
                    Button14.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button13.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button13.ForeColor = System.Drawing.Color.White;
                    Button14.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button14.ForeColor = System.Drawing.Color.White;
                }
                if (pg1.IsLastPage)
                {
                    Button15.BackColor = System.Drawing.Color.Gray;
                    Button15.ForeColor = System.Drawing.Color.White;
                    Button16.BackColor = System.Drawing.Color.Gray;
                    Button16.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button15.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button15.ForeColor = System.Drawing.Color.White;
                    Button16.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button16.ForeColor = System.Drawing.Color.White;


                }
                Button13.Enabled = !pg1.IsFirstPage;
                Button14.Enabled = !pg1.IsFirstPage;
                Button15.Enabled = !pg1.IsLastPage;
                Button16.Enabled = !pg1.IsLastPage;
                //Binding pg to datalist
                DataList1.DataSource = pg1;//dl is datalist
                DataList1.DataBind();

                
                sqlcon.Close();
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                Label3.Visible = false;
                sqlcon.Close();
            }

            sqlcon.Close();


        }
        private void blog()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(mainconn);
            string sqlquery = "select top 3 [BlogName],[BlogerName],[BlogPic] from [dbo].[BlogUpdate]";

            SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);

            sqlConnection.Open();

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlCommand;
            DataSet ds = new DataSet();
            sda.Fill(ds);

            DataList3.DataSource = ds;

            DataList3.DataBind();




            sqlConnection.Close();
        }
        private void hotel()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select * from [dbo].[HotelInfo] where PlaceName=@PlaceName";
            SqlConnection sqlcon = new SqlConnection(mycon);
            SqlCommand sqlcmd = new SqlCommand(myq,sqlcon);
            sqlcmd.CommandText = myq;
            sqlcmd.Connection = sqlcon;
            sqlcmd.Parameters.AddWithValue("@PlaceName", Request.QueryString["PlaceName"]);
            sqlcon.Open();
            SqlDataReader sdr = sqlcmd.ExecuteReader();
            if (sdr.HasRows){
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
                pg1.PageSize = 4;
                Button1.Visible = true;
                Button2.Visible = true;
                Button7.Visible = true;
                Button8.Visible = true;
                if (pg1.IsFirstPage)
                {
                    Button1.BackColor = System.Drawing.Color.Gray;
                    Button1.ForeColor = System.Drawing.Color.White;
                    Button2.BackColor = System.Drawing.Color.Gray;
                    Button2.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button1.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button1.ForeColor = System.Drawing.Color.White;
                    Button2.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button2.ForeColor = System.Drawing.Color.White;
                }
                if (pg1.IsLastPage)
                {
                    Button7.BackColor = System.Drawing.Color.Gray;
                    Button7.ForeColor = System.Drawing.Color.White;
                    Button8.BackColor = System.Drawing.Color.Gray;
                    Button8.ForeColor = System.Drawing.Color.White;
                    
                }
                else
                {
                    Button7.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button7.ForeColor = System.Drawing.Color.White;
                    Button8.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button8.ForeColor = System.Drawing.Color.White;
                }
                Button1.Enabled = !pg1.IsFirstPage;
                Button2.Enabled = !pg1.IsFirstPage;
                Button7.Enabled = !pg1.IsLastPage;
                Button8.Enabled = !pg1.IsLastPage;
                //Binding pg to datalist
                DataList5.DataSource = pg1;//dl is datalist
                DataList5.DataBind();
                
                hotellabel.Text ="Nearby Hotels in "+ ds.Tables[0].Rows[0]["PlaceName"].ToString();
                sqlcon.Close();
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;
                hotellabel.Visible = false;
                sqlcon.Close();
            }

            sqlcon.Close();



        }
        
            
        private void Restaurent()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(mainconn);
            //var button = (Control)sender;
            //var answerLabel = NamingContainer.FindControl("placename");
            string sqlquery = "select * from [dbo].[RestaurentInfo] where PlaceName=@PlaceName";

            SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);

            sqlConnection.Open();
            sqlCommand.Parameters.AddWithValue("@PlaceName", Request.QueryString["PlaceName"]);
            
            SqlDataReader sdr = sqlCommand.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Close();
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = sqlCommand;
                DataSet ds = new DataSet();
                sda.Fill(ds);
                b = ds.Tables[0].Rows.Count;
                DataTable dt = ds.Tables[0];
                PagedDataSource pg2 = new PagedDataSource();
                pg2.DataSource = dt.DefaultView;
                pg2.AllowPaging = true;
                pg2.CurrentPageIndex = a;
                pg2.PageSize = 4;
                Button9.Visible = true;
                Button10.Visible = true;
                Button11.Visible = true;
                Button12.Visible = true;
                if (pg2.IsFirstPage)
                {
                    
                    Button9.BackColor = System.Drawing.Color.Gray;
                    Button9.ForeColor = System.Drawing.Color.White;
                    Button10.BackColor = System.Drawing.Color.Gray;
                    Button10.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button9.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button9.ForeColor = System.Drawing.Color.White;
                    Button10.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button10.ForeColor = System.Drawing.Color.White;
                }
                if (pg2.IsLastPage)
                {
                    Button11.BackColor = System.Drawing.Color.Gray;
                    Button11.ForeColor = System.Drawing.Color.White;
                    Button12.BackColor = System.Drawing.Color.Gray;
                    Button12.ForeColor = System.Drawing.Color.White;
                }
                else
                {
                    Button11.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button11.ForeColor = System.Drawing.Color.White;
                    Button12.BackColor = System.Drawing.Color.FromArgb(0xd00040);
                    Button12.ForeColor = System.Drawing.Color.White;
                }
                Button9.Enabled = !pg2.IsFirstPage;
                Button10.Enabled = !pg2.IsFirstPage;
                Button11.Enabled = !pg2.IsLastPage;
                Button12.Enabled = !pg2.IsLastPage;
                DataList6.DataSource = pg2;

                DataList6.DataBind();

                title.Text ="Restaurents in "+ ds.Tables[0].Rows[0]["PlaceName"].ToString();
                


                sqlConnection.Close();
            }
            else
            {
                Button9.Visible = false;
                Button10.Visible = false;
                Button11.Visible = false;
                Button12.Visible = false;
                title.Visible = false;
                sqlConnection.Close();
            }
            sqlConnection.Close();
        }
        

      





        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("info.aspx?PlaceName=" + DropDownList1.SelectedItem.ToString());
            hotel();
            Restaurent();
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

                    string notifications = TextBox1.Text + " he/she wants to join as a Newsletter";
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

                Response.Redirect("info.aspx");


            }
        }
        protected void searchButton_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("info.aspx?PlaceName=" + HomepageSearchBox.Text);
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("https://www.google.com/search?q=" + TextBox5.Text);



        }

       

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            x = 0;
            hotel();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (x == 0)
            {

            }
            else
            {
                x = x - 1;
                hotel();
            }

        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (x == y - 1)
            {

            }
            else
            {
                x = x + 1;
                hotel();
            }

        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            x = (y/5) - 1;
            hotel();
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            a = 0;
            Restaurent();
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (a == 0)
            {

            }
            else
            {
                a = a - 1;
                Restaurent();
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            if (a == b - 1)
            {

            }
            else
            {
                a = a + 1;
                Restaurent();
            }
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            a = (b / 4) - 1;
            Restaurent();
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            a = 0;
            mostpopularplace();
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            if (p == 0)
            {

            }
            else
            {
                p = p - 1;
                mostpopularplace();
            }
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            if (p == q - 1)
            {

            }
            else
            {
                p = p + 1;
                mostpopularplace();
            }
        }
   

        protected void Button16_Click(object sender, EventArgs e)
        {
            p = (q / 3) - 1;
             mostpopularplace();
    }

        protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "clickmore1")
            {
                Response.Redirect("info.aspx?PlaceName=" + e.CommandArgument.ToString());
            }
        }
    }
}

