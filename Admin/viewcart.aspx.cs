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
    public partial class viewcart : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ViewState["pid"] = 0;
                fill_grid();
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
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void fill_grid()
        {
            getcon();
            da = new SqlDataAdapter("Select * from registerr where email ='" + Session["admin"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int uid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                da = new SqlDataAdapter("SELECT *, (TRY_CAST(Price AS DECIMAL(10,2)) * Quantity) AS Total FROM cart_tbl WHERE User_Cart_Id = '" + uid + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                gvCart.DataSource = ds;
                gvCart.DataBind();

                decimal finalTotal = 0;
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    if (dr["Total"] != DBNull.Value)
                        finalTotal += Convert.ToDecimal(dr["Total"]);
                }

                lblFinalTotal.Text = "Final Total: ₹" + finalTotal.ToString("0.00");
            }
            else
            {
                gvCart.DataSource = null;
                gvCart.DataBind();
                lblFinalTotal.Text = "Final Total: ₹0.00";
            }
        }

        protected void txtUpdateCart_Click(object sender, EventArgs e)
        {
            getcon();
            ds = new DataSet();
            da = new SqlDataAdapter("Select * from registerr where email ='" + Session["admin"] + "'", con);
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                int uid = Convert.ToInt16(ds.Tables[0].Rows[0][0]); 

                foreach (GridViewRow row in gvCart.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow && row.RowIndex < gvCart.DataKeys.Count)
                    {
                        int prodCartId = Convert.ToInt32(gvCart.DataKeys[row.RowIndex].Value);
                        TextBox txtQty = (TextBox)row.FindControl("txtQuantity");
                        int quantity = 1;
                        int.TryParse(txtQty.Text, out quantity);
                        if (quantity < 1) quantity = 1;
                        cmd = new SqlCommand("Update cart_tbl SET Quantity = '" + quantity + "' where User_Cart_Id = '" + uid + "' AND Prod_cart_Id = '" + prodCartId + "'", con);
                        cmd.ExecuteNonQuery();
                    }
                }
                fill_grid();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                getcon();
                ds = new DataSet();
                da = new SqlDataAdapter("Select * from registerr where email ='" + Session["admin"] + "'", con);
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int uid = Convert.ToInt16(ds.Tables[0].Rows[0][0]);
                    int ProdcartId = Convert.ToInt32(e.CommandArgument);
                    cmd = new SqlCommand("Delete from cart_tbl where Prod_cart_Id = '" + ProdcartId + "' AND User_Cart_Id = '" + uid + "'", con);
                    cmd.ExecuteNonQuery();

                    fill_grid();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}