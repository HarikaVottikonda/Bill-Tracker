using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace assignment_github
{
       
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=mydb;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string q = "select *from registration where name=@user and password=@pass";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.Parameters.AddWithValue("@user", TextBox1.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox2.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            
            if(dr.Read())
            {
                
                Response.Redirect("GenerateBillPage.aspx");
            }
            else
            {
                Label2.Text = "Wrong username and password register if you are a new user";
            }
        }
    }
}