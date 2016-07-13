using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Collections.Generic;
using System.Linq;

using System.Data;
using System.Data.Sql;
using System.Configuration;

using System.Text;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            FillCapctha();
        }
    }

    protected void btnRefresh_Click(object sender, EventArgs e)
    {
        RequiredFieldValidator1.Enabled = false;
        RequiredFieldValidator2.Enabled = false;
        RequiredFieldValidator3.Enabled = false;
        RequiredFieldValidator4.Enabled = false;
        Label1.Enabled = false;
        Label2.Enabled = false;

        FillCapctha();

        RequiredFieldValidator1.Enabled = true;
        RequiredFieldValidator2.Enabled = true;
        RequiredFieldValidator3.Enabled = true;
        RequiredFieldValidator4.Enabled = true;
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




    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();
        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from signuplogin where username = '" + TextBox1.Text + "' ";
        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        {
            Label1.Text = "User Name is Already Exist";
            this.Label1.ForeColor = Color.Red;
        }
        else
        {
            Label1.Text = "UserName is Available";
            this.Label1.ForeColor = Color.Red;
        }
        con.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        if (Session["captcha"].ToString() == TextBox6.Text)
        {
            //you can use disconnected architecture also,here i have used connected architecture.

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
            con.Open();
            String str = "insert into signuplogin values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();

            Session["name"] = TextBox1.Text;
            Response.Redirect("home.aspx");
            con.Close();
        }
        else
        {
            //Response.Redirect("Registration.aspx");
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "You have Entered InValid Captcha Characters please Enter again";

        }
        FillCapctha();
    }

}