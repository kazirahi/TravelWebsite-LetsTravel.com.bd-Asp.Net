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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                message.Body = TextBox1.Text + "       He or She want to know about guest post";

                SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

                client.Credentials = new System.Net.NetworkCredential("kazirahi1234@gmail.com", "mxhmhzhvvacmgoui");

                client.EnableSsl = true;
                client.Send(message);
                WarningLabel.Visible = true;
                WarningLabel.Text = "Send Successfully!";
                if (WarningLabel.ForeColor != System.Drawing.Color.Black)
                {
                    WarningLabel.ForeColor = System.Drawing.Color.Black;
                }
                else
                {
                    WarningLabel.Visible = false;
                }
                
                string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(cs))
                {

                    string notifications = TextBox1.Text +" is a new user and he/she poke as a Newsletter";
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

                Response.Redirect("Contact.aspx");


            }
        }

        protected void ara_Click(object sender, EventArgs e)
        {
           
                try
                {

                    string to = "kazirahi1234@gmail.com";
                    string from = EmailContactbox.Text.Trim();

                    MailMessage message = new MailMessage(from, to);
                    message.Subject = NameContactbox.Text + "< " + EmailContactbox.Text + " >" + "want to contact to you";
                    message.Body = EmailContactbox.Text + " " + NameContactbox.Text + ", want to say that" + DetailsContactbox.Text;

                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);

                    client.Credentials = new System.Net.NetworkCredential("kazirahi1234@gmail.com", "mxhmhzhvvacmgoui");

                    client.EnableSsl = true;
                    client.Send(message);
                    warning.Visible = true;
                    warning.Text = NameContactbox.Text + ", Thanks for contact us. Our team responses to asap";
                    if (warning.ForeColor != System.Drawing.Color.White)
                    {
                        warning.ForeColor = System.Drawing.Color.White;
                    }
                    else
                    {
                        warning.Visible = false;
                    }



                    string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(cs))
                    {

                        string notifications = EmailContactbox.Text + " want contact admin panel";
                        SqlCommand cmd = new SqlCommand("AdminNoti", con);
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@ClientID", EmailContactbox.Text.Trim());
                        cmd.Parameters.AddWithValue("@Notification", notifications.ToString().Trim());
                        cmd.Parameters.AddWithValue("@Date", DateTime.Now.ToString("D"));
                        cmd.Parameters.AddWithValue("@Time", DateTime.Now.ToString("T"));





                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                    NameContactbox.Text = "";
                    EmailContactbox.Text = "";
                    DetailsContactbox.Text = "";
                }

                catch
                {
                Response.Redirect("Contact.aspx");
                warning.Visible = true;
                warning.Text = "Insert All Data";

                }
                
            }
           
        }
    }
