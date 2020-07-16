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
    public partial class RankedPlace : System.Web.UI.Page
    {
        static int x = 0;
        static int y = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindata();
            }
        }
        private void bindata()
        {
            String mycon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            String myq = "select [ID],[PlaceName],[PlaceCImage],[position] from [dbo].[PlaceInfo] where position>= 2 order by position";
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
                pg1.PageSize = 40;
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
                DataList2.DataSource = pg1;//dl is datalist
                DataList2.DataBind();


                sqlcon.Close();
            }
            else
            {
                Button1.Visible = false;
                Button2.Visible = false;
                Button7.Visible = false;
                Button8.Visible = false;

                sqlcon.Close();
            }

            sqlcon.Close(); 

    
        }
       
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            x = 0;
            bindata();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (x == 0)
            {

            }
            else
            {
                x = x - 1;
                bindata();
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
                bindata();
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            x = (y / 40) - 1;
            bindata();
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