using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Reflection.Emit;

namespace task_ajax_28_12_2022
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection("data source=DESKTOP-PND235Q\\SQLEXPRESS01;database=LIBRARYBOOKS;Integrated security=SSPI");
            SqlCommand com=new SqlCommand("select * from category",connection);
            connection.Open();
            SqlDataReader reader = com.ExecuteReader();
            while (reader.Read())
            {
                Label1.Text += $"<div class=\"row\" style=\"\">\r \n \r \n " +
                    $"<div class=\"card book\" style =\"width:250px\">\r\n    " +
                    $"  <img class=\"card-img-top book\"  src='Images/{reader[2]}' style='width:170px; height:250px'>               " +
                    $" <div class=\"card-body\">\r\n      <h4 class=\"card-title\">{reader[1]}</h4>\r\n     " +
                    $" <p class=\"card-text\">{reader[3]}</p>\r\n    " +
                    $"  <a href=\"http://localhost:56270/singlecategory.aspx?category_id={reader[0]}&category_name={reader[1]}\" class=\"btn btn-primary\">see books</a>\r\n    </div>\r\n  </div>\r \n <br> </div>";

            }
            connection.Close();



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
            SqlConnection conn = new SqlConnection("data source=DESKTOP-PND235Q\\SQLEXPRESS01;database=INFORM;Integrated security=SSPI");
            SqlCommand comm = new SqlCommand($"insert into COMMENT VALUES ('{TextBox1.Text}')", conn);
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
           

            SqlCommand comm1 = new SqlCommand($"select * from COMMENT", conn);
            conn.Open();
            SqlDataReader reader = comm1.ExecuteReader();
            Label2.Text = "";
            while (reader.Read())
            {
               
                Label2.Text+= $"{ reader[1]} <br>";

            }
            conn.Close();
           

        }
    }
}