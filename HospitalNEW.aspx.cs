using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class code_new_HospitalNEWaspx : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ADD_Click(object sender, ImageClickEventArgs e)
    {
        
        SqlCommand cmd = new SqlCommand("insert into Hospital values(@HospitalName,@Address,@Zipcode,@TelephoneNo) ",con);
        cmd.Parameters.AddWithValue("@HospitalName",Textbox1.Text);
        cmd.Parameters.AddWithValue("@Address",Textbox2.Text);
        cmd.Parameters.AddWithValue("@Zipcode",Textbox3.Text);
        cmd.Parameters.AddWithValue("@TelephoneNo",Textbox4.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('Hospital Details Sucessfully Added')</script>");
       
         Textbox1.Text = "";
         Textbox2.Text = "";
         Textbox3.Text = "";
         Textbox4.Text = "";




        }
        //Response.Write("<script='javascript'>alert('Hospital Details Sucessfully Added')</script>");
        

    }
