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
using System.Text;
using System.Text.RegularExpressions;
namespace WebApplication7
{
    public partial class Dashboard_Admin : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\Local;Initial Catalog=BreareOrder;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            if (Session["User"] == null)
            {
                // User is already logged in, redirect to homepage
                Response.Redirect("Login.aspx");
            }
            //////////////////////////////////
            else
            {
                DataRow userRow = (DataRow)Session["User"];
                int userID = (int)userRow["id"];

                //////////

                string query = "SELECT name FROM roles WHERE user_id =@userID  ";

                SqlCommand cmdd = new SqlCommand(query, con);

                cmdd.Parameters.AddWithValue("@userID", userID);

                string role_name = (string)cmdd.ExecuteScalar();



                ///////////
                //build menu 
                StringBuilder menuHtml = new StringBuilder();
                menuHtml.Append("<ul class='nav' id='main-menu'>");
        /*        menuHtml.Append("<div class='sidebar-collapse' >");*/
                //check permissions
                if (role_name == "add_admin")
                {
                    menuHtml.Append("<li style='color:red' class='waves - effect waves - dark'> ");
                    menuHtml.Append(" < i class='fa fa - edit'></i>");
                    menuHtml.Append("<a href='NewUser.aspx'>add_admin");
                    menuHtml.Append("</a></li>");
                }
        /*        menuHtml.Append("</div>");*/
                menuHtml.Append("</ul>");

                //assign to literal
                Literal1.Text = menuHtml.ToString();

            }
            ////////////////////////////////
        }
    }
}