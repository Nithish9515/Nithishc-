using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class DocorStatus : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    string state = "Approved";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void grview_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void appove_Now(object sender, EventArgs e)
    {
        foreach (GridViewRow gvrow in grview.Rows)
        {
            string Name = (gvrow.FindControl("lblName") as Label).Text.ToString();
            string EMailID = (gvrow.FindControl("lblEMailID") as Label).Text.ToString();
            string Date = (gvrow.FindControl("lblDate") as Label).Text.ToString();
            string PermisisionReason = (gvrow.FindControl("lblPermisisionReason") as Label).Text.ToString();

            con.Open();
            SqlCommand cmd = new SqlCommand("UPDATE DoctorR SET Status='"+state+"' where EMailID='"+EMailID+"'",con);
            cmd.Parameters.AddWithValue("Status",state);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}