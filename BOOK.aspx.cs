using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class BOOK : System.Web.UI.Page
{
    string state = "Request";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void book_now(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into BookingNew values(@Name,@DateOfBirth,@Gender,@Mobile,@EMailID,@AppointMent,@Time,@Disease,@Status)", con);
        cmd.Parameters.AddWithValue("@Name",(Textbox1.Text));
        cmd.Parameters.AddWithValue("@DateOfBirth",(Textbox2.Text));
        cmd.Parameters.AddWithValue("@Gender",(drop2.SelectedValue));
        cmd.Parameters.AddWithValue("@Mobile",(Textbox3.Text));
        cmd.Parameters.AddWithValue("@EMailID",( TextBOX4.Text));
        cmd.Parameters.AddWithValue("@AppointMent", (Textbox5.Text));
        cmd.Parameters.AddWithValue("@Time",(drop1.SelectedValue));
        cmd.Parameters.AddWithValue("@Disease", (Textbox6.Text));
        cmd.Parameters.AddWithValue("@Status", (state));
        cmd.ExecuteNonQuery();
        con.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('E-mail Sucessfully sent');", true);


    }
}