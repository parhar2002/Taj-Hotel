using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Taj_Hotel
{
    public partial class Peyment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               payid();
            }
            Label12.Text = Session["NameLabel"].ToString();
            Label13.Text = Session["priceLabel"].ToString();
            Label14.Text = Session["Username"].ToString();
            Label15.Text = Session["tra"].ToString();

        }
        public void payid()
        {
            String myquery = "select ID from Booking";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                Label11.Text = "1";

            }
            else
            {
                String myquery1 = "select max(ID) from Booking";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label11.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label11.Text);
                a = a + 1;
                Label11.Text = a.ToString();
                con.Close();
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "insert into Booking(ID,S_Name,Price,Username,Transactions) values(" + Label11.Text + ",'" + Label12.Text + "','" + Label13.Text + "','" + Label14.Text + "',' Success')";
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("succesfull.aspx");
            payid();

      
            con.Close();
        }
    }
}
          