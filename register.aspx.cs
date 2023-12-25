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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void regiButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Users]
           ([Name]
           ,[Username]
           ,[Password]
           ,[Email]
           ,[Mobail])
     VALUES
           ('" + Namebox.Text+"','" + UserNamebox.Text + "','" + Passwordbox.Text + "','" + Emailbox.Text + "','" + Mobailbox.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script type = 'text/javascript'>alert('Data Insert Successfully');</script>");
            Response.Redirect("login.aspx");
            
            con.Close();
        }

    }
 
}