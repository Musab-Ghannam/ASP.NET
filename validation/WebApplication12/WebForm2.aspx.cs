using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication12
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)

            {
                //Label label = new Label();
                //label.Text = "aaaaaaaaaa";
                //this.Controls.Add(label);

                Response.Redirect("https://getbootstrap.com/docs/5.0/utilities/spacing/");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
               "swal('Good job!', 'You clicked Success button!', 'success')", true);
              
              


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://getbootstrap.com/docs/5.0/utilities/spacing/");
            if (Page.IsValid) { 
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
               "swal('Good job!', 'You clicked Success button!', 'success')", true);
             

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            email.Value = "";
            password.Value = "ok";

        }
    }
}