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
    public partial class OfferManage : System.Web.UI.Page
    {

        static String imagelink;
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-PRC5VUA\SQLEXPRESS;Initial Catalog=Taj Hotel;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getofferid();
            }
        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            if (uploadimage() == true)
            {
                String query = "insert into Offer(Offer_ID,Offer_Name,Discount,price,Offer_Price,Offer_valid,Offer_Facelity,Image) values(" + Label1.Text + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + imagelink + "')";
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Redirect("OfferManage.aspx");
                getofferid();
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }

        private Boolean uploadimage()
        {
            Boolean imagesaved = false;
            if (FileUpload1.HasFile == true)
            {

                String contenttype = FileUpload1.PostedFile.ContentType;

                if (contenttype == "image/jpeg")
                {

                    FileUpload1.SaveAs(Server.MapPath("~/image/OFFER/") + Label1.Text + ".jpg");
                    imagelink = "image/OFFER/" + Label1.Text + ".jpg";
                    imagesaved = true;
                }
                else
                {
                    Label2.Text = "Kindly Upload JPEG Format Image Only";
                }

            }

            else
            {
                Label2.Text = "You have not selected any file - Browse and Select File First";
            }

            return imagesaved;

        }

        public void getofferid()
        {
            String myquery = "select Offer_ID from Offer";
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
                Label1.Text = "1";

            }
            else
            {
                 String myquery1 = "select max(Offer_ID) from Offer";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = con;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                Label1.Text = ds1.Tables[0].Rows[0][0].ToString();
                int a;
                a = Convert.ToInt16(Label1.Text);
                a = a + 1;
                Label1.Text = a.ToString();
                con.Close();
            }

        }

        protected void Deletelink_Command(object sender, CommandEventArgs e)
        {
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[Offer]  WHERE [Offer_ID]='" + e.CommandArgument.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("OfferManage.aspx");
            con.Close();

        }
        protected void EditLink_Command(object sender, CommandEventArgs e)
        {

            SqlCommand cmd = new SqlCommand(@"UPDATE [dbo].[Offer]
   SET[Offer_Name] = '" + TextBox1.Text + "',[Price] = '" + TextBox3.Text + "',[Offer_Price] = '" + TextBox4.Text + "',[Offer_valid] = '" + TextBox5.Text + "',[Offer_Facelity] = '" + TextBox6.Text + "',[Discount] = '" + TextBox2.Text + "' WHERE [Offer_ID]='" + e.CommandArgument.ToString() + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Redirect("OfferManage.aspx");
            con.Close();
        }
    }
}