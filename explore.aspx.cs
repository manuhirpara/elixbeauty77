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
    public partial class explore : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;
        PagedDataSource pg;
        int row = 3, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            filllist();
           
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;
            }
        }
       
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("select * from Add_productt", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            pg.AllowPaging = true;
            pg.PageSize = 4;
            pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();
          
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            LinkButton2.Enabled = true;

            p += Convert.ToInt32(ViewState["pid"]) - 1;

            ViewState["pid"] = Convert.ToInt32(p);

            int temp = row / pg.PageSize;
            if (p == temp)
            {
                LinkButton1.Enabled = false;
            }
            filllist();
        

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            LinkButton1.Enabled = true;
            p += Convert.ToInt32(ViewState["pid"]) + 1;

            ViewState["pid"] = Convert.ToInt32(p);

            int temp = row / pg.PageSize;
            if (p == temp)
            {
                LinkButton2.Enabled = false;
            }
            filllist();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "cmd_view")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                Response.Redirect("ViewDetails.aspx?id=" + id);
            }
        }
      
      

        protected void DataList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["pid"] = 0; // Reset to first page when category changes
            filllist();
        }

        protected void ddlSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["pid"] = 0; // Reset to first page when sort changes
            filllist();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewcart.aspx");
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }


       


    }
}