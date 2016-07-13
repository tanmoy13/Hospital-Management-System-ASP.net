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
public partial class Adddoctoradmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("AdminLogin.aspx");

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (imageupload.HasFile)
        {
            HttpPostedFile postedFile = imageupload.PostedFile;
            string filename = Path.GetFileName(postedFile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int fileSize = postedFile.ContentLength;
            string doctorName = TextBox1.Text.ToString();
            string Qualification = TextBox2.Text.ToString();
            string Department = TextBox3.Text.ToString();
            string Specialisation = TextBox4.Text.ToString();
            string Contact = TextBox5.Text.ToString();


            if (doctorName != null && Qualification != null && Department != null && Specialisation != null && Contact != null && (fileExtension.ToLower() == ".jpg" || fileExtension.ToLower() == ".gif"
                || fileExtension.ToLower() == ".png" || fileExtension.ToLower() == ".bmp"))
            {
                Stream stream = postedFile.InputStream;
                BinaryReader binaryReader = new BinaryReader(stream);
                Byte[] bytes = binaryReader.ReadBytes((int)stream.Length);


                SqlConnection con = new SqlConnection();
                con.ConnectionString = ConfigurationManager.ConnectionStrings["mycon"].ConnectionString;

                {
                    SqlCommand cmd = new SqlCommand("INSERT INTO Doctorinfo (id,Doctorsname,Qualification,Department,Specialization,Contact,ImageData) VALUES (@Id,@name,@Qualific,@Dept,@specia,@Conta,@pic)", con);
                    //cmd.CommandType = CommandType.StoredProcedure;
                    // (@Id,@name,@Qualific,@Dept,@specia,@Conta,@pic)
                    cmd.CommandType = CommandType.Text;
                    cmd.Connection = con;

                    cmd.Parameters.AddWithValue("@id", ParameterDirection.Output);
                    cmd.Parameters.AddWithValue("@name", doctorName);
                    cmd.Parameters.AddWithValue("@Qualific", Qualification);
                    cmd.Parameters.AddWithValue("@Dept", Department);
                    cmd.Parameters.AddWithValue("@specia", Specialisation);
                    cmd.Parameters.AddWithValue("@Conta", Contact);
                    cmd.Parameters.AddWithValue("@pic", bytes);

                    //SqlParameter paramdoctor = new SqlParameter()
                    //{
                    //    ParameterName = @"Doctorsname",
                    //    Value = doctorName
                    //};
                    //cmd.Parameters.Add(paramdoctor);

                    //SqlParameter paramQualification = new SqlParameter()
                    //{
                    //    ParameterName = "@Qualification",
                    //    Value = Qualification
                    //};
                    //cmd.Parameters.Add(paramQualification);


                    //SqlParameter paramdepartment = new SqlParameter()
                    //{
                    //    ParameterName = "@Department",
                    //    Value = Department
                    //};
                    //cmd.Parameters.Add(paramdepartment);


                    //SqlParameter paramSpecialisation = new SqlParameter()
                    //{
                    //    ParameterName = "@Specialization",
                    //    Value = Specialisation
                    //};
                    //cmd.Parameters.Add(paramSpecialisation);



                    //SqlParameter paramContact = new SqlParameter()
                    //{
                    //    ParameterName = "@Contact",
                    //    Value = Contact
                    //};
                    //cmd.Parameters.Add(paramContact);



                    //SqlParameter paramImageData = new SqlParameter()
                    //{
                    //    ParameterName = "@ImageData",
                    //    Value = bytes
                    //};
                    //cmd.Parameters.Add(paramImageData);

                    //SqlParameter paramNewId = new SqlParameter()
                    //{
                    //    ParameterName = "@id",
                    //    Value = -1,
                    //    Direction = ParameterDirection.Output
                    //};
                    //cmd.Parameters.Add(paramNewId);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    TextBox1.Text = null;
                    TextBox2.Text = null;
                    TextBox3.Text = null;
                    TextBox4.Text = null;
                    TextBox5.Text = null;

                    Response.Redirect("Doctorslist.aspx");

                }
            }


        }
        else
        {
            Label6.Text = "You must fill every box and must choose a jpg file.";

        }
    }
}