using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;
using System.Net;
using System.Net.Mail;


public partial class Registration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    string mailid = "sampledemoprojects@gmail.com";
    string pwd = "Pondy##000";
    string subject = "Welcome to Online Health care Booking", message;
    string to;
    int port;
    protected void Page_Load(object sender, EventArgs e)
    {    
    }
    //private void verify()
    //{

    //    con.Open();
    //    string cmdStr = "select count(*) from UserRegistration where EmailID='" + txtUserName.Text + "'";
    //    SqlCommand userExist = new SqlCommand(cmdStr, con);
    //    int temp = Convert.ToInt32(userExist.ExecuteScalar().ToString());
    //    con.Close();
    //    if (temp == 1)
    //    {
    //        Response.Write("user name already exit....!!!!<br/>please choose another user name");
    //    }

    //}



    protected void Button1_Click(object sender, EventArgs e)
    {
        //verify();
        Random rm = new Random();
        int rno = rm.Next(111111, 999999);
        SqlCommand cmd = new SqlCommand("insert into Register values(@EmailID,@UserName,@Password,@ConformPassword,@Gender,@Address,@ZipCode,@MobileNo)", con);
        //cmd.Parameters.AddWithValue("@RegistratinID",Label1.Text);
        cmd.Parameters.AddWithValue("@EmailID",(txtUserID.Text));
        cmd.Parameters.AddWithValue("@UserName",(txtUserName.Text));
        cmd.Parameters.AddWithValue("@Password",(txtPassword.Text));
        cmd.Parameters.AddWithValue("@ConformPassword",(txtConformPassword.Text));
        cmd.Parameters.AddWithValue("@Gender",(drop2.SelectedValue));
        cmd.Parameters.AddWithValue("@Address",(txtAddress.Text));
        cmd.Parameters.AddWithValue("@ZipCode",(txtZipCode.Text));
        cmd.Parameters.AddWithValue("@MobileNo",(txtMobileNo.Text));
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('New user Sucessfully Registered');", true);
       
        // try
        //    {
        //        to = txtUserID.Text;
        //        message = "<hr><br>" + " Hello" +  txtUserName.Text + "<br><br>" + "Login Details:::" + "<br><br>" + "UserName:" + txtUserName.Text + "<br><br>" + "Password:" + txtPassword.Text + "<br><br>";
        //        NetworkCredential loginInformation = new NetworkCredential(mailid, pwd);
        //        MailMessage msg = new MailMessage();
        //        msg.From = new MailAddress(mailid);
        //        msg.To.Add(new MailAddress(to));
        //        msg.Subject = subject;
        //        msg.Body = message;
        //        msg.IsBodyHtml = true;

        //        SmtpClient client = new SmtpClient("smtp.gmail.com");
        //        port = 587;
        //        client.EnableSsl = true;
          
        //        client.UseDefaultCredentials = false;
        //        client.Credentials = loginInformation;
        //        client.Send(msg);

                
        //    }
        //    catch { }
        ////   Response.Redirect("Mailverify.aspx");
        //////Label2.Visible = true;
        // Response.Write("register");
       
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void txtUserID_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtUserID_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void txtMobileNo_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtAddress_TextChanged(object sender, EventArgs e)
    {

    }
}