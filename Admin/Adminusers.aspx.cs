using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace elixbeauty7.Admin
{
    public partial class Adminusers : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;

            }
            if (Session["admin"] != null && Session["admin"].ToString() != "")
            {
                getcon();
                da = new SqlDataAdapter("SELECT * FROM AdminRegister WHERE email = '" + Session["admin"].ToString() + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                int id = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                string s = ds.Tables[0].Rows[0][1].ToString();

            }
            else
            {
                Response.Redirect("Adminlogin.aspx");
            }
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from registerr", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from registerr where Id=  '" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

       
        
    }
}