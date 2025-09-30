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
    public partial class login : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            //getcon();
        }
        void getcon()
        {
            if (con != null)
            {
                con.Close();
                con.Dispose();
            }
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
           
            if (txteml.Text != null && txtpw != null)
            {


                getcon();
                cmd = new SqlCommand("select count(*) from registerr where Email = '" + txteml.Text + "' and Password='" + txtpw.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());


                if (i > 0)
                {
                    Session["admin"] = txteml.Text;
                    Response.Redirect("Webform1.aspx");
                }
                else
                {
                    Response.Write("<script> alrt('Invalid User')</script>");
                }
            }

        }
    }
    
}