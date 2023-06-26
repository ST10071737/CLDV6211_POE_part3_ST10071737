using System;

using System.Web.UI;

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
            return (username == "admin" && password == "password");
        }
    }
}