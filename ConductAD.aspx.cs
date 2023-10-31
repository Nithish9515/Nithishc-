using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void book_now(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        string state="Pending";
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into DoctorR values(@Name,@EMailID,@Date,@PermisisionReason,@Status)",con);
        cmd.Parameters.AddWithValue("@Name",Textbox1.Text);
        cmd.Parameters.AddWithValue("@EMailID", TextBOX4.Text);
        cmd.Parameters.AddWithValue("@Date", Textbox5.Text);
        cmd.Parameters.AddWithValue("@PermisisionReason", Textbox6.Text);
        cmd.Parameters.AddWithValue("@Status",state);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script='javascript'>alert('E-mail Sucessfully sent Admin Will Conduct Soon')</script>");
        
    }
}