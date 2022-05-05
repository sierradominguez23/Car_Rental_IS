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
    public partial class MemeberCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["rental_management"].ConnectionString);
            {
                connection.Open();
                MySqlCommand cmd = new MySqlCommand("INSERT INTO memberships(first_name, last_name, email, password, account_address, city, state, phone_number) VALUES (@first, @last, @email, @pswd, @address, @city, @state, @number)", connection);
                cmd.Parameters.AddWithValue("first", firstName.Text);
                cmd.Parameters.AddWithValue("last", lastName.Text);
                cmd.Parameters.AddWithValue("email", email.Text);
                cmd.Parameters.AddWithValue("pswd", pswd.Text);
                cmd.Parameters.AddWithValue("address", address.Text);
                cmd.Parameters.AddWithValue("city", city.Text);
                cmd.Parameters.AddWithValue("state", state.Text);
                cmd.Parameters.AddWithValue("number", phoneNumber.Text);
                int querySuccess = cmd.ExecuteNonQuery();

                cmd.Dispose();
                connection.Close();

                if (querySuccess != 0)
                    Response.Redirect("MemberLogin.aspx");

            }
        }

        protected void submitRegistration_Click(object sender, EventArgs e)
        {

        }
    }
}