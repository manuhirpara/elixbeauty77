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
    public partial class registerruser : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;//
        SqlConnection con;
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;
        string fnm;
        int i;
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
            txtnm.Text = " ";
            txtpass.Text = " ";
        }
       
        void imgupload()
        {
           
            if (fldimg.HasFile)
            {
                fnm = "~/images/" + fldimg.FileName;
                fldimg.SaveAs(Server.MapPath(fnm));
            }
        
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click3(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click4(object sender, EventArgs e)
        {
           
            if (Button1.Text == "Register")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into registerr(UserName,Password,Name,Image,Gender,Email) Values ('" + txtunm.Text + "','" + txtpass.Text + "','" + txtnm.Text + "','" + fnm + "','" + rdbgrn.Text + "','" + txteml.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
        }
    }
}