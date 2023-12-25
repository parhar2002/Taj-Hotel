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
    public partial class userview : System.Web.UI.Page
    {
        private SqlCommand cmd;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {         

            String sid = Session["Username"].ToString();
            string command = "SELECT * FROM [Booking]  where Username=@sid";
            cmd = new SqlCommand(command, con);
            cmd.Parameters.Add("@sid", System.Data.SqlDbType.NChar);
            cmd.Parameters["@sid"].Value = sid;
            SqlDataReader rd;
            con.Open();
            rd = cmd.ExecuteReader();
            ListView1.DataSource = rd;
            ListView1.DataBind();
            rd.Close();
            con.Close();

        }
        protected void Deletelink_Command(object sender, CommandEventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[Booking]  WHERE [ID]='" + e.CommandArgument.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("userview.aspx");
            con.Close();

        }
    }
}