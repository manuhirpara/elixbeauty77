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
    public partial class CategoryManagement : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                fillgrid();
            }
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            try
            {
                getcon();
                da = new SqlDataAdapter("select * from add_comp order by Id desc", con);
                ds = new DataSet();
                da.Fill(ds);
                
                if (ds.Tables[0].Rows.Count > 0)
                {
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
                    GridView1.Visible = true;
                    lblNoData.Visible = false;
                }
                else
                {
                    GridView1.Visible = false;
                    lblNoData.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading categories: " + ex.Message + "');</script>");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_dlt")
            {
                try
                {
                    getcon();
                    int id = Convert.ToInt32(e.CommandArgument);
                    cmd = new SqlCommand("delete from add_comp where Id='" + id + "'", con);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    
                    if (rowsAffected > 0)
                    {
                        fillgrid();
                        Response.Write("<script>alert('Category deleted successfully!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Category not found or already deleted!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error deleting category: " + ex.Message + "');</script>");
                }
            }
            else if (e.CommandName == "cmd_edt")
            {
                try
                {
                    getcon();
                    int id = Convert.ToInt32(e.CommandArgument);
                    da = new SqlDataAdapter("select * from add_comp where Id='" + id + "'", con);
                    ds = new DataSet();
                    da.Fill(ds);
                    
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        // Redirect to edit page or show edit form
                        Response.Redirect("AddCatagory.aspx?editId=" + id);
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error loading category: " + ex.Message + "');</script>");
                }
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            fillgrid();
        }
    }
}

