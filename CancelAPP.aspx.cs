using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;




public partial class CancelAPP : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void cancel_app(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into CanApp values(@PatientName,@EMailID,@Reason,@AllotedTime)",con);
        cmd.Parameters.AddWithValue("@PatientName", Textbox1.Text);
        cmd.Parameters.AddWithValue("@EMailID", Textbox2.Text);
        cmd.Parameters.AddWithValue("@Reason",Textbox3.Text);
        cmd.Parameters.AddWithValue("@AllotedTime",drop1.SelectedValue);
        cmd.ExecuteNonQuery();
        con.Close();
        //ScriptManager.RegisterStartupScript(this, this.GetType(), "Messagebox", "alert('your Cancel request send sucessfully');", true);

    }
}