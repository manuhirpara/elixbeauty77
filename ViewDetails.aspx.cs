using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace elixbeauty7
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;

        PagedDataSource pg;
        int row, p;

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            Fill();
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;

            }
            if (Session["admin"] != null && Session["admin"].ToString() != "")
            {
                getcon();
                da = new SqlDataAdapter("SELECT * FROM registerr WHERE email = '" + Session["admin"].ToString() + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                int id = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                string s = ds.Tables[0].Rows[0][1].ToString();

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
        void Fill()
        {
            da = new SqlDataAdapter("select * from Add_productt where Id='" + Request.QueryString["id"] + "'  ", con);
            ds = new DataSet();
            da.Fill(ds);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}