using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            if (Session["Login"] != null)
            {
                Response.ClearHeaders();

                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");

                Response.AddHeader("Pragma", "no-cache");
            }
        }

        HttpCookie userCookie;
        userCookie = Request.Cookies["Preferences"];
        String str="";
        if (userCookie != null)
        {
            if (!userCookie.Value.Equals(-1))
            {
                
                if(Session["Login"]!=null)
                    str =""+ Session["Login"].ToString();
               Session.Clear();
               Session["Login"] = str;   
            }
        }

        if (Session["Login"] != null)
        {
            ((Label)Master.FindControl("Label1")).Text = ".........";
            ((Label)Master.FindControl("Label2")).Text = "Hi " + Session["Login"].ToString();
            ((Label)Master.FindControl("Label2")).Visible = true;
            ((Label)Master.FindControl("Label1")).Visible = true;
        }
        else
        {
            ((Label)Master.FindControl("Label2")).Visible = false;
            ((Label)Master.FindControl("Label1")).Visible = false;
        }

       

    }
}