using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class demo : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        string id = Request.QueryString["EMailID"];
        string name = Request.QueryString["Name"];
        string time = Request.QueryString["Time"];
        Label1.Text = id;
        Label2.Text = name;
        Label3.Text = time;
        

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string hi;
        hi = DropDownList1.SelectedValue;
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into test values('" + hi + "')",con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
}