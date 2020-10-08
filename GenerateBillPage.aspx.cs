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
    public partial class GenerateBillPage : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Bindgrid();
            Duedate();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=mydb;Integrated Security=True");
            con.Open();
            string q = "insert into gbill values('" + TextBox2.Text + "','" + DropDownList1.SelectedItem.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList2.SelectedItem.Text + "','" + DropDownList3.SelectedItem.Text + "')";
            SqlCommand cmd = new SqlCommand(q,con);
            cmd.ExecuteNonQuery();
            Label1.Text = "Generated Succussfully";
           
        }
        private void Bindgrid()
        {
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=mydb;Integrated Security=True");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("select *from gbill", con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
        void Duedate()
        {
            string p = "select * from gbill  where(BillDueDate>='11-08-2020')";
            SqlConnection con = new SqlConnection("Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=mydb;Integrated Security=True");
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter(p, con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Bindgrid();
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            Duedate();
        }
    }
}