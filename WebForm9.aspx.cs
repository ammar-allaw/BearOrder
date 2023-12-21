using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Data.SqlClient;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication7
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection conadmin = new SqlConnection(@"Data Source=(localdb)\Local;Initial Catalog=BreareOrder;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }




        private void DisplayImageFromDatabase()
        {
            using (SqlConnection connection = new SqlConnection("Your_Connection_String"))
            {
                connection.Open();

                using (SqlCommand cmd = new SqlCommand("SELECT photo  FROM resturants where id='1' ", conadmin))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            byte[] imageBytes = (byte[])reader["photo"];
                           // string fileName = reader["FileName"].ToString();

                            // Set the image URL dynamically
                            img.ImageUrl = "data:img/jpeg;base64," + Convert.ToBase64String(imageBytes);
                           // img.AlternateText = fileName;
                        }
                    }
                }
            }
        }




    }




}