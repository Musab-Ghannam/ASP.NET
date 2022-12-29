using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookies
{
    public partial class task_2_29_12_22 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { string now;
            DateTime g = DateTime.Now;
            now = g.ToString();
            Label1.Text = now;
            if (Request.Cookies["LOG"] != null)
            {

                Label1.Style["color"] = Request.Cookies["LOG"]["name"].ToString();
            }



        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            HttpCookie c = new HttpCookie("LOG");
            c.Values.Add("name", DropDownList1.SelectedValue);

            Response.Cookies.Add(c);

            Label1.Style["color"] = DropDownList1.SelectedValue;




        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           

           


        }
    }
}