using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace task_ajax_28_12_2022
{
    public partial class single_product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

         
            
                string data = Request.QueryString["product_id"];
            
            SqlConnection connection = new SqlConnection("data source=DESKTOP-PND235Q\\SQLEXPRESS01;database=LIBRARYBOOKS;Integrated security=SSPI");
            SqlCommand com = new SqlCommand($"select * from product where product_id='{data}'", connection);
            connection.Open();
            SqlDataReader reader = com.ExecuteReader();

          

            while (reader.Read())
            {

                Label1.Text += $"<div class=\"row\" style=\"\">\r \n \r \n " +
                    $"<div class=\"card\" style =\"width:250px\">\r\n    " +
                    $"  <img class=\"card-img-top book\"  src='iamges/{reader[2]}' style='width:170px; height:250px'>               " +
                    $" <div class=\"card-body\">\r\n      <h4 class=\"card-title\">{reader[1]}</h4>\r\n     " +
                       $" <p class=\"card-text PRICE1\" >Price:{reader[4]}.00JD</p>\r\n    " +
                    $" <p class=\"card-text\">{reader[6]}</p>\r\n    " +
                    $"  <a href=\"http://localhost:56270/single%20product.aspx?product_id={reader[0]}\" class=\"btn btn-primary\">more details</a>\r\n    </div>\r\n  </div>\r \n <br> </div>";
               


            }
            connection.Close();
                SqlCommand comm1 = new SqlCommand($"select * from commentt where product_id={data} ", connection);
                connection.Open();
                SqlDataReader re = comm1.ExecuteReader();
                Label2.Text = "";
                while (re.Read())
                {

                    Label2.Text += $"{re[1]} <br>";

                }
                connection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
                if (TextBox1.Text != "")
                {
                    string data = Request.QueryString["product_id"];

                    SqlConnection conn = new SqlConnection("data source=DESKTOP-PND235Q\\SQLEXPRESS01;database=LIBRARYBOOKS;Integrated security=SSPI");
                    SqlCommand comm = new SqlCommand($"insert into commentt VALUES ('{TextBox1.Text}','{data}')", conn);
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    TextBox1.Text = "";

                SqlCommand comm2 = new SqlCommand($"select * from commentt where product_id={data} ", conn);
                conn.Open();
                    SqlDataReader reader = comm2.ExecuteReader();
                    Label1.Text = "";
                    while (reader.Read())
                    {

                        Label1.Text += $"{reader[1]} < br>";

                    }

                    conn.Close();
                ScriptManager.RegisterClientScriptBlock(this.Page, this.Page.GetType(), "alert",
              "swal('Good job!', 'Message added seccessfully ')", true);

            }
                else if (TextBox1.Text == "")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

                }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}