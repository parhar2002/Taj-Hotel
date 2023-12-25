using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Taj_Hotel.Admin
{
    public partial class Resetpass : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-3QHH772\SQLEXPRESS;Initial Catalog=Taj;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
             SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[Admin]
   SET[Username] = '" + UserNametext.Text + "',[Password] = '" + Passwordtext.Text + "' WHERE [Master Code]='" + Mastercodetext.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("Aindex.aspx");
            con.Close();
        }
    }
}