using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace elixbeauty7.Admin
{
    public partial class Addproduct : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        String fldimgpath;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                fillcombo();
                fillgrid();
            }
        }
        void fillcombo()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_comp", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpct.Items.Add(ds.Tables[0].Rows[i]["CompanyName"].ToString());
            }
        }
        void clear()
        {
            txtnm.Text = "";
            txtds.Text = "";
            txtprice.Text = "";
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void imgupload()
        {
            if (fldimg.HasFile)
            {
                fldimgpath = "images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fldimgpath));
            }
            else
            {
                fldimgpath = "images/default-product.jpg"; // Default image if no file uploaded
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Add Product")
            {
                try
                {
                    if (txtnm.Text.Trim() != "" && txtprice.Text.Trim() != "" && drpct.SelectedItem.Text != "")
                    {
                        getcon();
                        imgupload();

                        cmd = new SqlCommand("insert into add_prod(Image,Name,Catagory,Price,Discription) values( '" + fldimgpath + "' ,  '" + txtnm.Text + "' , '" + drpct.Text + "','" + txtprice.Text + "','" + txtds.Text + "' )", con);
                        cmd.ExecuteNonQuery();
                        clear();

                        Response.Write("<script>alert('Product added successfully!');</script>");
                        fillgrid();
                        Response.Redirect(Request.RawUrl);
                    }
                    else
                    {
                        Response.Write("<script>alert('Please fill in all required fields!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error adding product: " + ex.Message + "');</script>");
                }
            }
        }
       

        void fillgrid()
        {
            try
            {
                getcon();
                da = new SqlDataAdapter("select * from add_prod order by Id desc", con);
                ds = new DataSet();
                da.Fill(ds);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error loading products: " + ex.Message + "');</script>");
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
                    cmd = new SqlCommand("delete from add_prod where Id='" + id + "'", con);
                    int rowsAffected = cmd.ExecuteNonQuery();
                    
                    if (rowsAffected > 0)
                    {
                        fillgrid();
                        Response.Write("<script>alert('Product deleted successfully!');</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Product not found or already deleted!');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error deleting product: " + ex.Message + "');</script>");
                }
            }
        }

        protected void drpct_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("select Id from add_comp where CompanyName='" + drpct.SelectedItem.Text + "'", con);

            ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                ViewState["cid"] = ds.Tables[0].Rows[0]["Id"].ToString();
            }
            else
            {
                ViewState["cid"] = null;
            }

            }
    }
}