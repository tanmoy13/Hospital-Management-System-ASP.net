using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from admin where username = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "' ";
        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        {
            Session["Admin"] = TextBox1.Text;

            Response.Redirect("Adminpage.aspx");
        }
        else
            Label1.Text = "Invalid Login Data";
        reader.Close();
        con.Close();
    }
}