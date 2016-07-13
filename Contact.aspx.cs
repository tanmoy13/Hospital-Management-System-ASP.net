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

using System.Text;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Login"] == null)
            Response.Redirect("InvalidApp.aspx");
        if (!IsPostBack)
        {
            FillCapctha();
        }
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (Session["captcha"].ToString() == TextBox4.Text)
        {

            if (TextBox1.Text != "" && TextBox3.Text != "")
            {
                MailMessage email = new MailMessage();
                email.From = new MailAddress("hs1307006@gmail.com");
                email.To.Add("tanmoytapos01@gmail.com");
                email.Subject = "Feedback from " + TextBox1.Text + " mail id = " + TextBox2.Text;
                email.Body = TextBox3.Text;
                email.IsBodyHtml = true;

                SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
                smtpc.Port = 587;
                smtpc.UseDefaultCredentials = false;
                smtpc.EnableSsl = true;

                smtpc.Credentials = new NetworkCredential("hs1307006@gmail.com", "hospital1307006");
                try
                {
                    smtpc.Send(email);
                    Label6.Text = "Thank you for your feedback.";
                    FillCapctha();
                }
                catch
                {
                    Label6.Text = "server authentication is faild";
                    FillCapctha();
                }
            }
            else
            {
                Label6.Text = "Please fill the form correctly";
                FillCapctha();
            }
        }
        else
        {
            Label6.Text = "Enter a valid captcha code";
            FillCapctha();
        }

    }
    void FillCapctha()
    {
        try
        {
            Random random = new Random();
            string combination = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            StringBuilder captcha = new StringBuilder();
            for (int i = 0; i < 6; i++)
                captcha.Append(combination[random.Next(combination.Length)]);
            Session["captcha"] = captcha.ToString();
            imgCaptcha.ImageUrl = "GenerateCaptcha.aspx?" + DateTime.Now.Ticks.ToString();
        }
        catch
        {

            throw;
        }
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        FillCapctha();
    }
}