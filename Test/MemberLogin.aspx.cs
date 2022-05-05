using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test
{
    public partial class MemberLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["rental_management"].ConnectionString);
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM member_accounts WHERE username = @un AND password = @pswd", connection);
                cmd.Parameters.AddWithValue("un", username.Text);
                cmd.Parameters.AddWithValue("pswd", pswd.Text);
                MySqlDataReader queryResult = cmd.ExecuteReader();

                if (queryResult.Read())
                {
                    Session["account_id"] = queryResult["account_id"];
                    Session["username"] = queryResult["username"];
                    queryResult.Close();
                    cmd.Dispose();
                    connection.Close();
                    Response.Redirect("MemberProfile.aspx");

                }
                else {
                    Response.Redirect("Home.aspx");
                }

            }
        }
    }
}