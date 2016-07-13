using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from signuplogin where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "' ";
        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        {
            Session["Login"] = TextBox1.Text;

            if (CheckBox1.Checked == true)
            {
                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie.Expires = DateTime.Now.AddSeconds(10);
                    Response.Cookies.Add(userCookie);
                }
            }

            Response.Redirect("home.aspx");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Log in Data');</script>");
        }

        reader.Close();
        con.Close();
    }

}
