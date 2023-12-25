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
    public partial class Userbooking : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Deletelink_Command(object sender, CommandEventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[Booking]  WHERE [ID]='" + e.CommandArgument.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("userbooking.aspx");
            con.Close();

        }

    }
}