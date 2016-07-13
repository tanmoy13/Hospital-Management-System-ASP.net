using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;
using System.Data.Sql;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        cmd.CommandText = "select username,password from signuplogin where email = '" + TextBox1.Text +"' ";
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {
            MailMessage email = new MailMessage();
            email.From = new MailAddress("hs1307006@gmail.com"); 
            email.To.Add(TextBox1.Text); 
            email.Subject = "Your Forrget Password:";
            email.Body = "Hi,<br/>Your Username is: " + ds.Tables[0].Rows[0]["username"] + "<br/><br/>Your Password is: " + ds.Tables[0].Rows[0]["password"] + "<br/>";
            email.IsBodyHtml = true;
           
            SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
            smtpc.Port = 587;
            smtpc.UseDefaultCredentials = false;
            smtpc.EnableSsl = true;
            
            smtpc.Credentials = new NetworkCredential("hs1307006@gmail.com", "hospital1307006");
            try
            {
                smtpc.Send(email);
                Label2.Text = "Your password has been sent to your email address";
            }
            catch
            {
                Label3.Text = "server authentication is faild";
            }
        }
        else
        {
            Label3.Text = "This email address is not exist in our Database try again";
        }

    }

}