using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.IO;

public partial class code_new_PatientINFO : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    string f, ml, ty, kk, nww, st, p1, mon, fullpath;
    string vi="Visited";
    string doctname;
    protected void Page_Load(object sender, EventArgs e)
    {
        doctname = Session["DoctorUsername"].ToString();
    }
    protected void add(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("Uploads") + FileUpload1.FileName);
            f = Path.GetFileNameWithoutExtension(FileUpload1.FileName);
            st = Path.GetFileName(FileUpload1.FileName);
            ml = Server.MapPath("Uploads");
            nww = FileUpload1.FileName;
            ty = Path.GetExtension(FileUpload1.FileName);
            kk = ml + f + ty;

            FileInfo fz = new FileInfo(kk);
            long s1 = fz.Length;
            string fsize = s1.ToString();




            string dat = DateTime.Now.ToString();
            FileStream fs = new FileStream(kk, FileMode.Open, FileAccess.ReadWrite);
            byte[] buffer = new byte[fs.Length];
            fs.Read(buffer, 0, (int)fs.Length);
            fs.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into doctorload values(@Name,@EMAIL,@AGE,@GENDER,@REASON,@Discription,@Path,@Size,@Data,@Status,@Date,@SpecialistName)", con);
            cmd.Parameters.AddWithValue("@Name", Textbox1.Text);
            cmd.Parameters.AddWithValue("@EMAIL", Textbox2.Text);
            cmd.Parameters.AddWithValue("@AGE", Textbox3.Text);
            cmd.Parameters.AddWithValue("@GENDER", drop1.SelectedValue);
            cmd.Parameters.AddWithValue("@REASON", Textbox4.Text);
            cmd.Parameters.AddWithValue("@Discription", Textbox5.Text);
            cmd.Parameters.AddWithValue("@Path", kk);
            cmd.Parameters.AddWithValue("@Status", vi);
            cmd.Parameters.AddWithValue("@Date", Textbox6.Text);
            cmd.Parameters.AddWithValue("@Data", buffer);
            cmd.Parameters.AddWithValue("@Size", fsize);
            cmd.Parameters.AddWithValue("@SpecialistName",doctname);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script language ='javascript'>alert('User details sucessfully added');</script>");
            
        }
    }
}