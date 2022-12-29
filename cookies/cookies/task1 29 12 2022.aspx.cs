using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cookies
{
    public partial class task1_29_12_2022 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["L"] != null)
            {

                FNAME.Value = Request.Cookies["L"]["NAME"].ToString();

                pass.Text = Request.Cookies["L"]["pass"].ToString();



            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie C = new HttpCookie("L");
            C.Values.Add("NAME", FNAME.Value);
            C.Values.Add("pass", pass.Text);
            if (CheckBox1.Checked)
            {
                C.Expires = DateTime.Now.AddDays(2);

                Response.Cookies.Add(C);

            }
        }
    }
}