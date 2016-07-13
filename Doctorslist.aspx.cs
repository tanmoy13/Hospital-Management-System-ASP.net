using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Text;
using System.Configuration;
using System.Web.Security;
using System.Data;
using System.IO;

public partial class Doctorslist : System.Web.UI.Page
{
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDoctorsinfo();
            if (Session["login"] != null) ;
            {
                Response.ClearHeaders();

                Response.AddHeader("Cache-Control", "no-cache, no-store, max-age=0, must-revalidate");

                Response.AddHeader("Pragma", "no-cache");
            }
        }
    }

    protected void LoadDoctorsinfo()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;
        con.Open(); //
        cmd = new SqlCommand("SELECT * FROM Doctorinfo", con);
        SqlDataReader reader = cmd.ExecuteReader();
        int i = 1;
        while (reader.Read())
        {

            byte[] bytes = (byte[])reader["ImageData"];
            string strBase64 = Convert.ToBase64String(bytes);
            //Image1.ImageUrl = "data:Image/png;base64," + strBase64;


            Image img = new Image();
            img.ID = "img" + i.ToString();
            img.ImageUrl = "data:Image/jpg;base64," + strBase64;
            //img.Height = 64;
            img.Width = 200;


            Label objLabel = new Label();
            objLabel.ID = "label" + i.ToString();
            objLabel.ForeColor = System.Drawing.Color.Green;
            objLabel.Font.Bold = true;
            objLabel.Text = "<br/>" + reader["Doctorsname"].ToString() + "<br/>";
            Label objLabel2 = new Label();
            objLabel2.Font.Size = 10;
            objLabel2.ForeColor = System.Drawing.Color.Gray;
            objLabel2.ID = "lblQ" + i.ToString();
            objLabel2.Text = "Qualification: " + reader["Qualification"].ToString() + "<br/>";

            Label objLabel3 = new Label();
            objLabel3.ID = "lblD" + i.ToString();
            objLabel3.Font.Size = 10;
            objLabel3.ForeColor = System.Drawing.Color.Gray;
            objLabel3.Text = "<b>Department</b>: " + reader["Department"].ToString() + "<br/>";

            Label objLabel4 = new Label();
            objLabel4.ID = "lblS" + i.ToString();
            objLabel4.Font.Size = 10;
            objLabel4.ForeColor = System.Drawing.Color.Gray;
            objLabel4.Text = "<b>Specialisation</b>: " + reader["Specialization"].ToString() + "<br/>";

            Label objLabel5 = new Label();
            objLabel5.ForeColor = System.Drawing.Color.Gray;
            objLabel5.Font.Size = 10;
            objLabel5.ID = "lblC" + i.ToString();
            objLabel5.Text = "<b>Contact</b>: " + reader["Contact"].ToString() + "<br/>";








            //placeholder1.Controls.Add(new LiteralControl("<br/>"));

            
            
            Placeholder1.Controls.Add(img);
            Placeholder1.Controls.Add(objLabel);
            Placeholder1.Controls.Add(objLabel2);
            Placeholder1.Controls.Add(objLabel3);
            Placeholder1.Controls.Add(objLabel4);
            Placeholder1.Controls.Add(objLabel5);
            Placeholder1.Controls.Add(new LiteralControl("<hr />"));
            i++;
        }
        con.Close();
    }
}