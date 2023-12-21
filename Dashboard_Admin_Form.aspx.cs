using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;

namespace WebApplication7
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection conadmin = new SqlConnection(@"Data Source=(localdb)\Local;Initial Catalog=BreareOrder;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                // User is already logged in, redirect to homepage
                Response.Redirect("Login.aspx");
            }
         /*   else
            {
                Response.Redirect(".aspx");
            }*/
            if (conadmin.State == ConnectionState.Open)
            {
                conadmin.Close();
            }
            conadmin.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(TextBox3.Text, @"^.+@gmail\.com$"))
            {
                Label1.Text = "the email is faled";
                return;
            }

            string email = TextBox3.Text;
            string query = "SELECT Count(*) FROM users WHERE email = @Email AND type='admin' ";

            SqlCommand cmdd = new SqlCommand(query, conadmin);

            cmdd.Parameters.AddWithValue("@Email", email);

            int count = (int)cmdd.ExecuteScalar();

            if (count > 0)
            {
                // Email already exists 
                Label1.Text = "Email already registered";
                return;
            }
            string age = TextBox5.Text;
            if (age.Length > 3)
            {
                Label1.Text = "invaled age";
                return;
            }
            string password = TextBox4.Text;
            if (password.Length < 8)
            {
                Label1.Text = "password just at less 8 characters";
                return;
            }

            else
            {
                // Email doesn't exist, register user
                // Call method to insert new user details






                SqlCommand cmdadmin = new SqlCommand("INSERT INTO users (first_name,last_name,email,password,type,rate,age) VALUES (@first_name, @last_name, @email, @password,'admin','200',@age)", conadmin);

                cmdadmin.Parameters.AddWithValue("@first_name", TextBox1.Text);
                cmdadmin.Parameters.AddWithValue("@last_name", TextBox2.Text);
                cmdadmin.Parameters.AddWithValue("@email", TextBox3.Text);
                cmdadmin.Parameters.AddWithValue("@password", TextBox4.Text);
                cmdadmin.Parameters.AddWithValue("@age", TextBox5.Text);
                cmdadmin.ExecuteNonQuery();

                string getLastIdQuery = "SELECT MAX(Id) AS LastId FROM Users";

                SqlCommand cmdddadmin = new SqlCommand(getLastIdQuery, conadmin);


                int lastId = (int)cmdddadmin.ExecuteScalar();

                SqlCommand adminCmdadmin = new SqlCommand("INSERT INTO admins (user_id) VALUES (@userId)", conadmin);
                adminCmdadmin.Parameters.AddWithValue("@userId", lastId);
                adminCmdadmin.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Nice Register');", true);

                Response.Redirect("Dashboard_Admin.aspx");
                return;
                /* }*/
            }



        }

      }
}