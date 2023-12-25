using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taj_Hotel
{
    public partial class home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Button1.Visible = false;
                ImageButton1.Visible = false;
                ImageButton2.Visible = false;
            }
            else
            {
                Button1.Visible = true;
                ImageButton1.Visible = true;
                ImageButton2.Visible = true;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("home.aspx");
            }
        }
    }
}