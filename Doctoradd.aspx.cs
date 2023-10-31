using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;

public partial class Doctoradd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    string mailid = "sampledemoprojects@gmail.com";
    string pwd = "Pondy##000";
    string subject = "Welcome to Online Health care -[Doctors_Panel]", message;
    string to;
    int port;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void im1_Click(object sender, ImageClickEventArgs e)
    {
        //add the dr.
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Doctor values(@DoctorName,@Gender,@Qualification,@Specialist,@Experience,@EMailID,@DateofBirth,@Mobile,@Address,@DoctorUsername,@Password)",con);
        cmd.Parameters.AddWithValue("@DoctorName", Textbox1.Text);
        cmd.Parameters.AddWithValue("@Gender",drop2.SelectedValue);
        cmd.Parameters.AddWithValue("@Qualification", Textbox2.Text);
        cmd.Parameters.AddWithValue("@Specialist", Textbox3.Text);
        cmd.Parameters.AddWithValue("@Experience", Textbox4.Text);
        cmd.Parameters.AddWithValue("@EMailID", Textbox5.Text);
        cmd.Parameters.AddWithValue("@DateofBirth", Textbox6.Text);
        cmd.Parameters.AddWithValue("@Mobile", Textbox7.Text);
        cmd.Parameters.AddWithValue("@Address", Textbox8.Text);
        cmd.Parameters.AddWithValue("@DoctorUsername", Textbox9.Text);
        cmd.Parameters.AddWithValue("@Password", Textbox10.Text);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('Doctor Details Sucessfully Updated')</script>");
        
        }
    protected void im2_Click(object sender, ImageClickEventArgs e)
    {
        to = Textbox5.Text;
        message = "<hr><br>" + " Hello" + "<br><br>" + Textbox1.Text + "<br><br>" + "Login Details:::" + "<br><br>" + "UserName:" + Textbox9.Text + "<br><br>" + "Password:" + Textbox10.Text + "<br><br>" + "Kindly note the login detail for futher acess" + "<br><br>";
        NetworkCredential loginInformation = new NetworkCredential(mailid, pwd);
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(mailid);
        msg.To.Add(new MailAddress(to));
        msg.Subject = subject;
        msg.Body = message;
        msg.IsBodyHtml = true;

        SmtpClient client = new SmtpClient("smtp.gmail.com");
        port = 587;
        client.EnableSsl = true;

        client.UseDefaultCredentials = false;
        client.Credentials = loginInformation;
        client.Send(msg);
        Response.Write("<script language='javascript'>alert('Login details Are Sucessfully send to Specialist Doctor')</script>");
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('Login details Are Sucessfully send to Specialist Doctor);", true);
    }
}