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
    public partial class contact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;//
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
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
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txteml.Text = " ";
            txtnm.Text = " ";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Submit")
            {
                getcon();
                cmd = new SqlCommand("insert into contact(Name,Email,Message)" + "Values('" + txtnm.Text + "','" + txteml.Text + "','" + txtmsg.Text + "')", con);
                //cmd = new SqlCommand("INSERT INTO contact_tbl([Name], [Email], [Password], [ConfirmPassword]) VALUES ('" + txtrgname.Text + "', '" + txtrgemail.Text + "', '" + txtrgpass.Text + "', '" + txtconpass.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
        }
    }
}