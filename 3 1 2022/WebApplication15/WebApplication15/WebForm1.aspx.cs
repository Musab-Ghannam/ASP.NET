using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication15
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["votingg"] != null)
            {

                //ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Your message goes here');", true);

                //Button1.Visible = false;
                //Button1.Enabled=false;
                //return;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            


            if (Request.Cookies["votingg"] != null)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('uoy have already voted');", true);

                Button1.Visible = false;
                //Button1.Enabled=false;
                //return;
            }
          



            SqlConnection conn = new SqlConnection("data source= DESKTOP-PND235Q\\SQLEXPRESS01;database=INFORM;Integrated security=SSPI");
              if (Request.Cookies["votingg"] == null)
            {


                if (RadioButtonList1.SelectedItem.Text == "Excelent")
                {
                    SqlCommand cm = new SqlCommand("update voting set val=val+1 where id=1", conn);
                    conn.Open();
                    cm.ExecuteNonQuery();
                    conn.Close();


                }
                else if (RadioButtonList1.SelectedItem.Text == "very good")
                {

                    SqlCommand cm = new SqlCommand("update voting set val=val+1 where id=2", conn);
                    conn.Open();
                    cm.ExecuteNonQuery();
                    conn.Close();


                }
                else if (RadioButtonList1.SelectedItem.Text == "good")
                {

                    SqlCommand cm = new SqlCommand("update voting set val=val+1 where id=3", conn);
                    conn.Open();
                    cm.ExecuteNonQuery();
                    conn.Close();


                }
                else if (RadioButtonList1.SelectedItem.Text == "poor")
                {

                    SqlCommand cm = new SqlCommand("update voting set val=val+1 where id=4", conn);
                    conn.Open();
                    cm.ExecuteNonQuery();
                    conn.Close();


                }





            }


            RadioButtonList1.Visible= false;

            SqlCommand cmm = new SqlCommand("SELECT  SUM(val) FROM voting", conn);
            conn.Open();
            SqlDataReader h = cmm.ExecuteReader();
            while (h.Read()) {

                Session["sum"] = h[0];
                //Label1.Text += $"{h[0]}<br>";

            
            }

            //Session["a"] = a;
            //Label2.Text=

            string[] a = { "Excelent", "very good", "good", "poor" };
            conn.Close();

            SqlCommand y = new SqlCommand("SELECT val,textt FROM voting", conn);
            conn.Open();
            SqlDataReader o = y.ExecuteReader();
            while (o.Read())
            {
                int sum = Convert.ToInt32(Session["sum"]);
                double avg = Convert.ToDouble(o[0]) / Convert.ToDouble(sum);

             

                Label1.Text +=$" <div class=\"w3-border\">\r\n {o[1]}  {(Math.Round((avg * 100), 1)) }%<div class=\"w3-purple\" style=\"height:24px;width:{(Math.Round((avg*100), 1))}%\"></div>\r\n</div> <br>"  ;







            }

     
            conn.Close();

            HttpCookie c = new HttpCookie("votingg");
            c.Values.Add("r", RadioButtonList1.SelectedItem.Text);

            Response.Cookies.Add(c);
            c.Expires = DateTime.Now.AddYears(2);





        }
    }
}