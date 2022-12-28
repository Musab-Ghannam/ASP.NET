using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace task_ajax_28_12_2022
{
    public partial class singlecategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {string data = Request.QueryString["category_id"];
            string categoryname = Request.QueryString["category"];
            SqlConnection connection = new SqlConnection("data source=DESKTOP-PND235Q\\SQLEXPRESS01;database=LIBRARYBOOKS;Integrated security=SSPI");
            SqlCommand com = new SqlCommand($"select * from product where category_id='{data}'", connection);
            connection.Open();
            SqlDataReader reader = com.ExecuteReader();

            Label2.Text += categoryname;

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

        }
    }
}