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