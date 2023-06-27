using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CLDV6211_POE_part3_ST10071737.Pages
{
    public partial class Driver : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                try
                {

                    // Set the connection string
                    string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                    // Set the SQL query to retrieve data from the RENTAL table
                    string query = "SELECT * FROM DRIVER";

                    // Create a new SqlConnection using the connection string
                    using (SqlConnection connection = new SqlConnection(connectionString))
                    {
                        // Open the database connection
                        connection.Open();
                        // Create a new SqlCommand with the query and connection
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Create a new SqlDataAdapter to fill the data from the SqlCommand
                            using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                            {
                                // Create a new DataTable to hold the retrieved data
                                DataTable rentalTable = new DataTable();

                                // Fill the DataTable with data from the SqlDataAdapter
                                adapter.Fill(rentalTable);

                                // Bind the DataTable to the GridView
                                GridViewRentals.DataSource = rentalTable;
                                GridViewRentals.DataBind();
                            }
                        }
                    }
                }
                catch (Exception ex)
                {
                    // Log or display the error message
                }
            }
        }
        protected void BindGridView()
        {
            // Set the connection string
            string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

            // Set the SQL query to retrieve data from the RENTAL table
            string query = "SELECT * FROM DRIVER";

            // Create a new SqlConnection using the connection string
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                // Open the database connection
                connection.Open();
                // Create a new SqlCommand with the query and connection
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Create a new SqlDataAdapter to fill the data from the SqlCommand
                    using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                    {
                        // Create a new DataTable to hold the retrieved data
                        DataTable rentalTable = new DataTable();

                        // Fill the DataTable with data from the SqlDataAdapter
                        adapter.Fill(rentalTable);

                        // Bind the DataTable to the GridView
                        GridViewRentals.DataSource = rentalTable;
                        GridViewRentals.DataBind();
                    }
                }
            }
        }

        protected void InsertDriver()
        {
            try
            {
                // Retrieve the input values from the form controls
                string driverNoText = txtDriverNo.Value;
                int driverNo = string.IsNullOrEmpty(driverNoText) ? 0 : Convert.ToInt32(driverNoText);
                string firstName = txtFirstName.Value;
                string surName = txtSurName.Value;
                string email = txtEmail.Value;
                string mobile = txtMobile.Value;

                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to insert data into the RENTAL table
                string query = @"INSERT INTO DRIVER (DRIVERNO, FIRSTNAME, SURNAME, EMAIL, MOBILE)
                            VALUES (@DriverNo, @FirstName, @SurName, @Email, @Mobile)";

                // Create a new SqlConnection using the connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a new SqlCommand with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set the parameter values for the query
                        command.Parameters.AddWithValue("@DriverNo", driverNo);
                        command.Parameters.AddWithValue("@FirstName", firstName);
                        command.Parameters.AddWithValue("@SurName", surName);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Mobile", mobile);

                        // Execute the query
                        command.ExecuteNonQuery();

                        // Display a success message
                    }
                }

            }
            catch (Exception ex)
            {
                // Log or display the error message
            }
        }




        protected void CreateDriver_Click(object sender, EventArgs e)
        {
            // Call the method to insert the new rental
            InsertDriver();

            // Rebind the GridView to update its contents
            BindGridView();

            // Clear the form inputs or show a success message
            ClearFormInputs();

        }

        private void ClearFormInputs()
        {
            txtDriverNo.Value = String.Empty;
            txtFirstName.Value = String.Empty;
            txtSurName.Value = String.Empty;
            txtEmail.Value = String.Empty;
            txtMobile.Value = String.Empty;
        }
    }
}