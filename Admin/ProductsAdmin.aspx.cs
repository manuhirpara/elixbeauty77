using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace elixbeauty7.Admin
{
    public partial class ProductsAdmin : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {

            //fillgrid();
            //getcon();
            fillcategory();
            fillgrid();
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        
        void fillcategory()
        {
           
            getcon();
            da = new SqlDataAdapter("select * from add_comp", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpct.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
       void imgupload()
        {
           if (fldimg.HasFile)
           {
                fnm = "..//Admin/images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        }
        void clear()
        {
            txtprice.Text = "";
            txtnm.Text = "";
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from Add_productt", con);
            ds = new DataSet();
            da.Fill(ds);

            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into Add_productt(prod_cart_id,Image,Name,Catagory,Price,Discription) values( '" + ViewState["Id"] + "','" + fnm + "' ,  '" + txtnm.Text + "' , '" + drpct.Text + "','" + txtprice.Text + "','" + txtds.Text + "' )", con);
                cmd.ExecuteNonQuery();
                clear();
                fillgrid();
                Response.Redirect(Request.RawUrl);
            }
            else
            {
                cmd = new SqlCommand("Update Add_productt set Image='" + fnm + "',Name='" + txtnm.Text + "',Catagory='" + drpct.Text + "',Price='" + txtprice.Text + "',Discription='" + txtds.Text + "' where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
                Button1.Text = "Submit";
                clear();
            }

        }
        void select()
        {
            getcon();
            da = new SqlDataAdapter("select * from Add_productt where Id='" + ViewState["id"] + "'", con);

            ds = new DataSet();
            da.Fill(ds);

            txtnm.Text = ds.Tables[0].Rows[0]["Name"].ToString();
            drpct.Text = ds.Tables[0].Rows[0]["Catagory"].ToString();
            txtprice.Text = ds.Tables[0].Rows[0]["Price"].ToString();
            txtds.Text = ds.Tables[0].Rows[0]["Discription"].ToString();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                select();
            }
            else
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Add_productt where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void drpct_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            da = new SqlDataAdapter("SELECT * FROM add_comp WHERE CompanyName = '" + drpct.SelectedItem.ToString() + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            ViewState["cid"] = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());


        }
    }
}