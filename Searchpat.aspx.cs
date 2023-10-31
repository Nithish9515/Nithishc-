using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;


public partial class code_new_Searchpat : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HospitalConnectionString"].ConnectionString);
    int ID;
   
    protected void Page_Load(object sender, EventArgs e)
    {
        lblhos.Text = Session["HospitalName"].ToString();
    }
    protected void search_text_Click(object sender, ImageClickEventArgs e)
    {
         string param=search.Text;
         con.Open();
        SqlCommand cmd = new SqlCommand("select * from doctorload where EMAIL like '%" +@param+ "%'",con );
        try
        {
            SqlParameter sar = new SqlParameter();
            sar.ParameterName = "@search";
            sar.Value = search.Text.Trim();
            cmd.Parameters.Add(sar);
            cmd.Connection = con;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            grview.DataSource = dt;
            grview.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {

            con.Close();
        }
    }

    protected void grview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int x = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = grview.Rows[x];
            string ID = row.Cells[0].Text.ToString();


            conn.Open();
            SqlCommand com = new SqlCommand("select ID,EMAIL,Path,Data from doctorload where ID=@ID", conn);
            com.Parameters.AddWithValue("@ID", ID);
            //com.Parameters.AddWithValue("@userid", userid);

            SqlDataReader dr = com.ExecuteReader();

            if (dr.Read())
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ContentType = dr["ID"].ToString();
                Response.AddHeader("content-disposition", "Data;Filename=" + dr["ID"].ToString());     // to open file prompt Box open or Save file         
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite((byte[])dr["Data"]);
                Response.End();
               // Response.Redirect("Download.aspx");
            }
            con.Close();
        }
    }


}