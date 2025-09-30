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
    public partial class products : System.Web.UI.Page
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
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("SELECT * FROM add_prod ORDER BY Id DESC", con);
            ds = new DataSet();
            da.Fill(ds);
            
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addproduct.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Addcatagory.aspx");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "cmd_edt")
                {
                    int id = Convert.ToInt32(e.CommandArgument);
                    ViewState["id"] = id;
                    Response.Write("<script>alert('Edit clicked for ID: " + id + "');</script>");
                    select();
                    // Show edit form
                    editForm.Visible = true;
                }
                else if (e.CommandName == "cmd_dlt")
                {
                    getcon();
                    int id = Convert.ToInt32(e.CommandArgument);
                    ViewState["id"] = id;
                    cmd = new SqlCommand("delete from add_prod where Id='" + ViewState["id"] + "'", con);
                    cmd.ExecuteNonQuery();
                    fillgrid();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error in RowCommand: " + ex.Message + "');</script>");
            }
        }

        void select()
        {
            try
            {
                getcon();
                da = new SqlDataAdapter("select * from add_prod where Id='" + ViewState["id"] + "'", con);
                ds = new DataSet();
                da.Fill(ds);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    // Parsing data to form fields
                    txtName.Text = ds.Tables[0].Rows[0]["Name"].ToString();
                    txtCategory.Text = ds.Tables[0].Rows[0]["Catagory"].ToString();
                    txtPrice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                    txtDescription.Text = ds.Tables[0].Rows[0]["Discription"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        void clear()
        {
            txtName.Text = "";
            txtCategory.Text = "";
            txtPrice.Text = "";
            txtDescription.Text = "";
        }

        void imgupload()
        {
            if (flpImage.HasFile)
            {
                fnm = "images/" + flpImage.FileName;
                flpImage.SaveAs(Server.MapPath(fnm));
            }
        }


    }
}