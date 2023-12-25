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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            if (UserName.Text == "Taj Hotel" && Password.Text == "admin")
            {
                Response.Redirect("~/Admin/Ahome.aspx");
            }
            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("Select Count(*) From Users where Username='" + UserName.Text + "' and Password  = '" + Password.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows[0][0].ToString() == "1")
            {
                Session["Username"] = UserName.Text.ToString();
                Response.Redirect("Home.aspx");
            }
            else
            {

                lblans.Text = " Incorrect Username or Password..";

            }

        }
    }
}