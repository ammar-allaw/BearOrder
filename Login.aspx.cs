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


    public partial class WebForm1 : System.Web.UI.Page
    {

        /*        Data Source = (localdb)\Local;Initial Catalog = BareOrder; Integrated Security = True; Connect Timeout = 30; Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False
                           Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\ammar\source\repos\WebApplication7\WebApplication7\App_Data\Database1.mdf;Integrated Security = True
        *//*        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\Local;Initial Catalog=BareOrder;Integrated Security=True");
        */
        SqlConnection con = new SqlConnection(@"Data Source = (localdb)\Local;Initial Catalog = BreareOrder; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            if (Session["User"] != null  )
            {
                DataRow userRow = (DataRow)Session["User"];
                string type = userRow["type"].ToString();
                if (type == "admin")
                {
                    Response.Redirect("Dashboard_Admin_Form");
                }
                if (type == "client")
                {
                    Response.Redirect("Home");
                }
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            /*if (!Regex.IsMatch(TextBox1.Text, @"^.+@gmail\.com$"))
            {
                // Show error message
                return;
            }*/

          
            SqlCommand cmd = new SqlCommand("SELECT * FROM users WHERE type = @type AND email = @email AND password = @password", con);

            cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            
                DataRow user = null;
            if (dt.Rows.Count > 0)
            {
                user = dt.Rows[0];
                Session["User"] = user;
            }
           

            if (user != null)
            {
                string userType = user["type"].ToString();

                if (userType == "admin")
                {
                    Response.Redirect("Dashboard_Admin.aspx");
                }
                /* if (userType == "restaurant_admin")
                 {
                     Response.Redirect("restaurant.aspx");
                 }*/
                if (userType == "client")
                {
                    Response.Redirect("Home.aspx");
                }
                if (userType == "delivery")
                {
                    Response.Redirect(".aspx");
                }
                }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('the email of password failed !!');", true);
                        return;
                    }
        }
    }
}