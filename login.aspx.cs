using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];

        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                Session.Clear();
                Session["Login"] = Request["usrname"];
                Response.Redirect("about.aspx");
            }
        }
    }


protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open();

        SqlCommand select = new SqlCommand();
        select.Connection = con;

        select.CommandText = "select username from signuplogin where username = '" + Request["usrname"] + "' and password = '" + Request["psw"] + "' ";
        SqlDataReader reader = select.ExecuteReader();

        if (reader.Read())
        {
            Session["Login"] = Request["usrname"];

            if (Request["chkbox"]=="on")
            {
                HttpCookie userCookie;
                userCookie = Request.Cookies["Preferences"];
                if (userCookie == null)
                {
                    userCookie = new HttpCookie("Preferences");
                    userCookie.Expires = DateTime.Now.AddMonths(1);
                    Response.Cookies.Add(userCookie);
                }
            }

            Response.Redirect("about.aspx");
        }

        reader.Close();
        con.Close();
    }

   
   
}
