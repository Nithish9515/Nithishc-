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


public partial class ADCANCEL1 : System.Web.UI.Page
{
    int port;
    string to;
    string message;
    string mailid = "sampledemoprojects@gmail.com";
    string pwd = "Pondy##000";
    string subject = "Your Appointment Canceled Status";
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["PatientName"];
        string email = Request.QueryString["EMailID"];
        label1.Text = name;
        label2.Text = email;
    }
    protected void Sendmail_Cancel(object sender, ImageClickEventArgs e)
    {
        
        string name = Request.QueryString["PatientName"];
        string email = Request.QueryString["EMailID"];
        to = email;
        message = "<hr><br>" + "Hi" + "<br><br>" + name + "<br><br>" + box1.Text + "<br><br>" ;
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
        
        //DB1
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("DELETE  FROM CanApp WHERE EMailID='" + to + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();

        //DB2
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("DELETE FROM Conform WHERE EMailID='"+to+"'",con1);
        cmd1.ExecuteNonQuery();
        con1.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('AppointMent Canceled  Request  sent Sucessfully');", true);

    }
}