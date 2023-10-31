using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    string OBJ;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    
        
        
   
    protected void txtLogin_Click(object sender, EventArgs e)
    {
       
}
    protected void txtUserName_TextChanged(object sender, EventArgs e)
    {

    }
    protected void but_click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select COUNT(*)FROM Register WHERE EMAILID='" + txtUserName.Text + "' and Password='" + txtPassword.Text + "'");
        cmd.Connection = con;
        int OBJ = Convert.ToInt32(cmd.ExecuteScalar());
        if (OBJ > 0)
        {
            Session["EMAILID"] = txtUserName.Text;
            Response.Redirect("Docx.aspx?EMAILID="+txtUserName.Text+"");

        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Username and Password";

        }
    }
}