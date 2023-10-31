using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class code_new_LOGINOH : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["HospitalName"] = drop1.SelectedValue;

    }
       
       private void linkcount()
       {
           if (TextBox1.Text == "admin" && TextBox2.Text == "admin")
           {
               Response.Redirect("Searchpat.aspx");
           }
           else
           {
               ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid Admin');", true);
           }
       }
       protected void btnsubmit_Click1(object sender, ImageClickEventArgs e)
       {
           linkcount();
       }
}