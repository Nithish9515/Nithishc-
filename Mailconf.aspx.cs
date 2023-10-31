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


public partial class Mailconf : System.Web.UI.Page
{     int port;
    string to;
    string message;
    string mailid = "sampledemoprojects@gmail.com";
    string pwd = "Pondy##000";
    string subject = "Your Appointment Status Now";
    string stat;
    //string email = label2.Text;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Request.QueryString["EMailID"];
        string name=Request.QueryString["Name"];
        string time = Request.QueryString["Time"];
        label1.Text = name;
        label2.Text = email;
        label3.Text = time;
        


    }
    protected void Sendmail(object sender, ImageClickEventArgs e)
    {
        string email = Request.QueryString["EMailID"];
        string name = Request.QueryString["Name"];
        string time = Request.QueryString["Time"];
        to = email;
        message = "<hr><br>" + "Hi" + "<br><br>" + name + "<br><br>" + box1.Text + "<br><br>" + "Time IS" +"<br><br>" + time + "<br><br>";
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
        //DB STATUS CHANGE//
        stat = "Conformed";
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand(" UPDATE  BookingNew  SET  Status='"+stat+"' where EMailID ='"+to+"' ", con);
       // cmd.Parameters.AddWithValue("Status", @stat);
        cmd.ExecuteNonQuery();
        con.Close();
        //*****Conformed patient new list******//
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con1.Open();
        SqlCommand cmd1=new SqlCommand("insert into Conform values(@Name,@EMailID,@Time,@Message,@Status)",con1);
        cmd1.Parameters.AddWithValue("@Name",name);
        cmd1.Parameters.AddWithValue("@EMailID",to);
        cmd1.Parameters.AddWithValue("@Time",time);
        cmd1.Parameters.AddWithValue("@Message", message);
        cmd1.Parameters.AddWithValue("@Status", stat);
        cmd1.ExecuteNonQuery();
        con1.Close();
        
    }
}