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
    public partial class MemberProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["account_id"] != null)
            {
                MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["rental_management"].ConnectionString);
                {
                    connection.Open();
                    MySqlCommand cmd = new MySqlCommand("SELECT * FROM memberships WHERE account_id = @account", connection);
                    cmd.Parameters.AddWithValue("account", Convert.ToInt32(Session["account_id"]));
                    MySqlDataReader queryResult = cmd.ExecuteReader();

                    if (queryResult.Read())
                    {
                        first.Text = Convert.ToString(queryResult["first_name"]);
                        last.Text = Convert.ToString(queryResult["last_name"]);
                        email.Text = Convert.ToString(queryResult["email"]);
                        address.Text = Convert.ToString(queryResult["account_address"]);
                        city.Text = Convert.ToString(queryResult["city"]);
                        state.Text = Convert.ToString(queryResult["state"]);
                        phoneNum.Text = Convert.ToString(queryResult["phone_number"]);
                        
                        queryResult.Close();
                        cmd.Dispose();
                        connection.Close();

                    }
                    else
                    {
                        Response.Redirect("Home.aspx");
                    }

                }
            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Cookies["ASP.NET_SessionId"].Value = string.Empty;
            Response.Cookies["ASP.NET_SessionId"].Expires = DateTime.Now.AddMonths(-10);
            Response.Redirect("Home.aspx");
        }
    }
}