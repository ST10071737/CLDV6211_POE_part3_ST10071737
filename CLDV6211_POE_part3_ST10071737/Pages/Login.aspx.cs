using System;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;

namespace CLDV6211_POE_part3_ST10071737
{
    public partial class Login : System.Web.UI.Page
    {
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            // Check the entered username and password
            string username = txtUsername.Text;  
            string password = txtPassword.Text;

            // Perform authentication logic here
            if (AuthenticateUser(username, password))
            {
                // Redirect to the home page or any other desired page upon successful login
                Response.Redirect("~/Pages/Home.aspx");
            }
            else
            {
                // Display an error message if authentication fails
                lblError1.Text = "Invalid username";
                lblError2.Text = "Invalid password";
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            // Add your authentication logic here (e.g., check against a database)
            // Return true if the username and password are valid, otherwise return false
            // Example:

            string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM INSPECTOR WHERE EMAIL = @Username AND INSPECTORNO = @Password";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    connection.Open();
                    int count = (int)command.ExecuteScalar();

                    return count > 0;
                }
            }
        }
    }
}