using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Net;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;


public partial class PatientAllot_ : System.Web.UI.Page
{
    int port;
    string to;
    string message;
    string mailid = "sampledemoprojects@gmail.com";
    string pwd = "Pondy##000";
    string subject = "Alternative Specialist For Your Appointment-Sorry for the trouble-";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void request_app(object sender, ImageClickEventArgs e)
    { 
        string state="Alloted";
        to = Textbox2.Text;
        message = "<hr><br>" + "Hi" + "<br><br>" + Textbox1.Text +"<br><br>" + Textbox3.Text + "<br><br>";
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
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into Alloted values(@PatientName,@EMailID,@Discription,@Status)",con);
        cmd.Parameters.AddWithValue("@PatientName", Textbox1.Text);
        cmd.Parameters.AddWithValue("@EMailID", to);
        cmd.Parameters.AddWithValue("@Discription",Textbox3.Text);
        cmd.Parameters.AddWithValue("@Status",state);
        cmd.ExecuteNonQuery();
        con.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('E-mail Sucessfully sent');", true);
    }
}