using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Aplist : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
        //con.Open();
        //SqlCommand cmd = new SqlCommand("select *  from Booking ", con);
        //SqlDataAdapter da = new SqlDataAdapter(cmd);
        //DataSet dt = new DataSet();
        //da.Fill(dt);
        //con.Close();
        //grview.DataSource = dt;
        //grview.DataBind();


    }
    protected void grview_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grview_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
    protected void grview_SelectedIndexChanged2(object sender, EventArgs e)
    {

    }
    protected void grview_SelectedIndexChanged3(object sender, EventArgs e)
    {

    }
}