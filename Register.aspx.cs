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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\Local;Initial Catalog=BreareOrder;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }



        /*protected void RegisterButton_Click(object sender, EventArgs e)
        {
            // Get the email entered by user
            string email = EmailTextBox.Text;

            // Check if email exists in database
            *//*using (SqlConnection conn = new SqlConnection(connectionString))*//*
            {
                string query = "SELECT Count(*) FROM Users WHERE Email = @Email";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    conn.Open();

                    int count = (int)cmd.ExecuteScalar();

                    if (count > 0)
                    {
                        // Email already exists 
                        ErrorMessageLabel.Text = "Email already registered";
                    }
                    else
                    {
                        // Email doesn't exist, register user
                        // Call method to insert new user details
                    }
                }
            }
        }*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Regex.IsMatch(TextBox3.Text, @"^.+@gmail\.com$"))
            {
                Label1.Text = "the email is faled";
                Label1.Visible = true;
                divError.Attributes.Add("class", "alert alert-danger ddd");
                return;
            }

            string email = TextBox3.Text;
            string query = "SELECT Count(*) FROM users WHERE email = @Email AND type='client'";

            SqlCommand cmdd = new SqlCommand(query, con);
            
                cmdd.Parameters.AddWithValue("@Email", email);

                int count = (int)cmdd.ExecuteScalar();

                if (count > 0)
                {
                    // Email already exists 
                    Label1.Text = "Email already registered";
                Label1.Visible = true;
                divError.Attributes.Add("class", "alert alert-danger ddd");
                return;
                }
            string age = TextBox5.Text;
            if (age.Length > 3)
            {
                Label1.Text = "invaled age";
                Label1.Visible = true;
                divError.Attributes.Add("class", "alert alert-danger ddd");
                return;
            }
            string password = TextBox4.Text;
            if (password.Length < 8)
                {
                Label1.Text = "password just at less 8 characters";
                Label1.Visible = true;
                divError.Attributes.Add("class", "alert alert-danger ddd");
                return;
                }
            string phoneNumber = TextBox6.Text;
            if (!int.TryParse(phoneNumber, out int parsedPhoneNumber))
            {
                Label1.Text = "must be numbers ";
                Label1.Visible = true;
                divError.Attributes.Add("class", "alert alert-danger ddd");
                return;
            }
            if (phoneNumber.Length != 10)
            {
                Label1.Text = "Error: Phone number must be exactly 10 digits and contain only numbers.";
                Label1.Visible = true;
                divError.Attributes.Add("class", "alert alert-danger ddd");
                return;
            }
           
           
          
            else
                {
                    // Email doesn't exist, register user
                    // Call method to insert new user details
                
            
        
    


    SqlCommand cmd = new SqlCommand("INSERT INTO users (first_name,last_name,email,password,type,rate,age) VALUES (@first_name, @last_name, @email, @password,'client','200',@age)", con);

            cmd.Parameters.AddWithValue("@first_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@last_name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@email", TextBox3.Text);
            cmd.Parameters.AddWithValue("@password", TextBox4.Text);
            cmd.Parameters.AddWithValue("@age", TextBox5.Text);
                cmd.ExecuteNonQuery();
              
                string getLastIdQuery = "SELECT MAX(Id) AS LastId FROM Users";

                    SqlCommand cmddd = new SqlCommand(getLastIdQuery, con);

              
                        int lastId = (int)cmddd.ExecuteScalar();

                        SqlCommand clientCmd = new SqlCommand("INSERT INTO clients (user_id, phone) VALUES (@userId, @phone)", con);
                    clientCmd.Parameters.AddWithValue("@userId", lastId);
                    clientCmd.Parameters.AddWithValue("@phone", TextBox6.Text);
                    clientCmd.ExecuteNonQuery();

                    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Nice Register');", true);

                    Response.Redirect("Login.aspx");
                    return;
               /* }*/
            }
        }
    }
}