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
        //void imgupload()
        //{
        //    if (flpimg.HasFile)
        //    {
        //        // Generate unique filename to avoid conflicts
        //        string fileName = flpimg.FileName;
        //        string fileExtension = System.IO.Path.GetExtension(fileName);
        //        string uniqueFileName = DateTime.Now.Ticks + "_" + fileName;

        //        fnm = "images/" + uniqueFileName;
        //        flpimg.SaveAs(Server.MapPath(fnm));
        //    }
        //    else
        //    {
        //        fnm = ""; // Set empty string if no file is selected
        //    }
        //}
        void imgupload()
        {
            if (flpimg.HasFile)
            {
                fnm = "..//images/" + flpimg.FileName;
                //Response.Write(Server.MapPath(fnm));
                //fldimg.SaveAs(Server.MapPath(fnm));
                //Response.Write("<script>alert('"+fnm+"')</script>");
                flpimg.SaveAs(Server.MapPath(fnm));
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

                cmd = new SqlCommand("insert into registerr(UserName,Password,Name,Image,Gender,Email) Values ('" + txtunm.Text + "','" + txtpass.Text + "','" + txtnm.Text + "','" + fnm + "','" + rdbgrn.Text + "','" + txteml.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }
        }
    }
}