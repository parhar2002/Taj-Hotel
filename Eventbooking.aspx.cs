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
    public partial class Eventbooking : System.Web.UI.Page
    {
        private SqlCommand cmd;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            String sid = Request.QueryString.Get("eid");
            string command = "SELECT * FROM [Event] where Event_ID=@sid";
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

        protected void LinkButton1(object sender, ListViewCommandEventArgs e)
        {
            Label name = (Label)e.Item.FindControl("NameLabel");
            Session["nameLabel"] = name.Text.ToString();

            Label price = (Label)e.Item.FindControl("priceLabel");
            Session["priceLabel"] = price.Text.ToString();

            Label tra = (Label)e.Item.FindControl("tra");
            Session["tra"] = tra.Text.ToString();


            TextBox date = (TextBox)e.Item.FindControl("dateTextBox");
            Session["dateTextBox"] = date.Text.ToString();


            Response.Redirect("Peyment.aspx");


        }

    }
}