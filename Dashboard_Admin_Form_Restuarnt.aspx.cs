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
    public partial class WebForm8 : System.Web.UI.Page
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
            
                // Email doesn't exist, register user
                // Call method to insert new user details






                SqlCommand cmdadmin = new SqlCommand("INSERT INTO users (first_name,last_name,email,password,type,rate,age) VALUES (@first_name, 'null', @email, @password,'resturat','200','0')", conadmin);

                cmdadmin.Parameters.AddWithValue("@first_name", TextBox1.Text);
                /*cmdadmin.Parameters.AddWithValue("@last_name", TextBox2.Text);*/
                cmdadmin.Parameters.AddWithValue("@email", TextBox3.Text);
                cmdadmin.Parameters.AddWithValue("@password", TextBox4.Text);
                /*cmdadmin.Parameters.AddWithValue("@age", TextBox5.Text);*/
                cmdadmin.ExecuteNonQuery();

            ////////////////////////////////////////////////////////////////
            if(FileUpload1.HasFile)
            {
                SaveImageToDatabase(FileUpload1.FileContent, FileUpload1.FileName);
            }
            ////////////////////////////////////////////////////////////////




                string getLastIdQuery = "SELECT MAX(Id) AS LastId FROM Users";

                SqlCommand cmdddadmin = new SqlCommand(getLastIdQuery, conadmin);


                int lastId = (int)cmdddadmin.ExecuteScalar();

                SqlCommand adminCmdadmin = new SqlCommand("INSERT INTO resturants (address,user_id,photo,type) VALUES (@address,@userId,@photo,@type)", conadmin);
            adminCmdadmin.Parameters.AddWithValue("@userId", lastId);
            adminCmdadmin.Parameters.AddWithValue("@address", TextBox2.Text);
            adminCmdadmin.Parameters.AddWithValue("@photo", FileUpload1.PostedFile);
            adminCmdadmin.Parameters.AddWithValue("@type", TextBox6.Text);
            adminCmdadmin.ExecuteNonQuery();

                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Nice Register');", true);

                Response.Redirect("Dashboard_Admin.aspx");
                return;
                /* }*/
            }
        ////////////////////////////////
        private void SaveImageToDatabase(Stream imageStream, string fileName)
        {

            string getLastIdQuery = "SELECT MAX(Id) AS LastId FROM Users";

            SqlCommand cmdddadmin = new SqlCommand(getLastIdQuery, conadmin);


            int lastId = (int)cmdddadmin.ExecuteScalar();

            SqlCommand adminCmdadmin = new SqlCommand("INSERT INTO resturants (address,user_id,photo,type) VALUES (@address,@userId,@photo,@type)", conadmin);
            adminCmdadmin.Parameters.AddWithValue("@userId", lastId);
            adminCmdadmin.Parameters.AddWithValue("@address", TextBox2.Text);
/*            adminCmdadmin.Parameters.AddWithValue("@photo", FileUpload1.PostedFile);
*/            adminCmdadmin.Parameters.AddWithValue("@type", TextBox6.Text);


            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Nice Register');", true);


            // إنشاء المعاملات
            SqlParameter paramImage = new SqlParameter("@photo", SqlDbType.VarBinary);
                    SqlParameter paramFileName = new SqlParameter("@FileName", SqlDbType.NVarChar);

                    // تعيين قيم المعاملات
                    paramImage.Value = ReadStream(imageStream);
                    paramFileName.Value = fileName;

            // إضافة المعاملات إلى الأمر
            adminCmdadmin.Parameters.Add(paramImage);
            adminCmdadmin.Parameters.Add(paramFileName);

            // تنفيذ الاستعلام
            adminCmdadmin.ExecuteNonQuery();


            Response.Redirect("Dashboard_Admin.aspx");
            return;
        }

        private byte[] ReadStream(Stream stream)
        {
            using (MemoryStream ms = new MemoryStream())
            {
                stream.CopyTo(ms);
                return ms.ToArray();
            }
        }

    }

}