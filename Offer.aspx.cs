using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taj_Hotel
{
    public partial class Offer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LinkButton1(object source, DataListCommandEventArgs e)
        {
            if (Session["Username"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Label Oid = (Label)e.Item.FindControl("Oidtxt");
                Response.Redirect("Offersbooking.aspx?Oid=" + Oid.Text);
            }
        }
    }
}
