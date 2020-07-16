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
    public partial class AboutUs : System.Web.UI.Page
    {
        static int c = 0;
        static int t = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(mainconn);
            string sqlquery = "select * from [dbo].[ourteam]";
            string sqlquery1 = "select [ID] from [dbo].[BlogUpdate]";
            string sqlquery2 = "select [PlaceID] from [dbo].[PlaceInfo]";
            string myquery = "select * from [dbo].[about]";
            SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);
            SqlCommand sqlCommand1 = new SqlCommand(sqlquery1, sqlConnection);
            SqlCommand sqlCommand2 = new SqlCommand(sqlquery2, sqlConnection);
            SqlCommand cmd = new SqlCommand(myquery, sqlConnection);
            sqlConnection.Open();

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlCommand;
            DataSet ds = new DataSet();
            sda.Fill(ds);

            DataList3.DataSource = ds;

            DataList3.DataBind();

            
            cmd.CommandText = myquery;
            cmd.Connection = sqlConnection;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds2 = new DataSet();
            da.Fill(ds2);

            sqlCommand1.CommandText = sqlquery1;
            sqlCommand1.Connection = sqlConnection;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = sqlCommand1;
            DataSet ds3 = new DataSet();
            da1.Fill(ds3);

            sqlCommand2.CommandText = sqlquery2;
            sqlCommand2.Connection = sqlConnection;
            SqlDataAdapter da2 = new SqlDataAdapter();
            da2.SelectCommand = sqlCommand2;
            DataSet ds4 = new DataSet();
            da2.Fill(ds4);

            Label1.Text = ds4.Tables[0].Rows.Count.ToString();
            Label3.Text = ds3.Tables[0].Rows.Count.ToString();
            Label4.Text = ds2.Tables[0].Rows[0]["itemmm"].ToString();
            Label5.Text = ds2.Tables[0].Rows[0]["itemD"].ToString();
            Label6.Text = ds2.Tables[0].Rows[0]["itemmD"].ToString();
            Label7.Text = ds2.Tables[0].Rows[0]["itemmmD"].ToString();
            paragraph.Text = ds2.Tables[0].Rows[0]["md"].ToString();
            //Label.Text = ds2.Tables[0].Rows[0]["md"].ToString();



            sqlConnection.Close();
            blog();
            //bindata();
        }
        /*private void bindata()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myquery = "Select [ID],[PlaceName], [PlaceCImage] from PlaceInfo";
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
        }*/
        /*protected void Button31_Click(object sender, EventArgs e)
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

        }*/
        private void blog()
        {
            string mainconn = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlConnection sqlConnection = new SqlConnection(mainconn);
            string sqlquery = "select Top 3 [BlogName],[BlogerName],[BlogPic] from [dbo].[BlogUpdate]";

            SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);

            sqlConnection.Open();

            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = sqlCommand;
            DataSet ds = new DataSet();
            sda.Fill(ds);

            DataList1.DataSource = ds;

            DataList1.DataBind();




            sqlConnection.Close();
        }
        protected void DataList3_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void searchButton_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
            Response.Redirect("info.aspx?PlaceName=" + HomepageSearchBox.Text);
        }
        
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("info.aspx?PlaceName=" + DropDownList1.SelectedItem.ToString());
            
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
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

                Response.Redirect("AboutUS.aspx");


            }
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