using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace CLDV6211_POE_part3_ST10071737.Pages
{
    public partial class Inspectors : System.Web.UI.Page
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
                    string query = "SELECT * FROM INSPECTOR";

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
            if (!IsPostBack)
            {
                LoadInspectors();
            }
        }

        private void LoadInspectors()
        {
            try
            {
                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to retrieve data from the INSPECTOR table
                string query = "SELECT * FROM INSPECTOR";

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
                            DataTable inspectorTable = new DataTable();

                            // Fill the DataTable with data from the SqlDataAdapter
                            adapter.Fill(inspectorTable);

                            // Bind the DataTable to the GridView
                            GridViewRentals.DataSource = inspectorTable;
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

        protected void SearchInspectors_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve the search criteria values from the input controls
                string inspectorNo = txtSearchInspectorNo.Value.Trim();
                string inspectorName = txtSearchInspectorName.Value.Trim();

                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to retrieve data from the INSPECTOR table with search criteria
                string query = "SELECT * FROM INSPECTOR WHERE INSPECTORNO = @InspectorNo OR (FIRSTNAME LIKE '%' + @InspectorName + '%' OR SURNAME LIKE '%' + @InspectorName + '%')";

                // Create a new SqlConnection using the connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a new SqlCommand with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set the parameter values for the query
                        command.Parameters.AddWithValue("@InspectorNo", inspectorNo);
                        command.Parameters.AddWithValue("@InspectorName", inspectorName);

                        // Create a new SqlDataAdapter to fill the data from the SqlCommand
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            // Create a new DataTable to hold the retrieved data
                            DataTable searchResultTable = new DataTable();

                            // Fill the DataTable with data from the SqlDataAdapter
                            adapter.Fill(searchResultTable);

                            // Bind the DataTable to the GridView
                            GridViewSearchResults.DataSource = searchResultTable;
                            GridViewSearchResults.DataBind();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Log or handle the error
            }
        }

        //CreateInspector_Click
        protected void BindGridView()
        {
            // Set the connection string
            string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

            // Set the SQL query to retrieve data from the RENTAL table
            string query = "SELECT * FROM INSPECTOR";

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

        protected void InsertInspector()
        {
            try
            {
                // Retrieve the input values from the form controls
                string inspectorNoText = txtInspectorNo.Value;
                int inspectorNo = string.IsNullOrEmpty(inspectorNoText) ? 0 : Convert.ToInt32(inspectorNoText);
                string firstName = txtFirstName.Value;
                string surName = txtSurName.Value;
                string email = txtEmail.Value;
                string mobile = txtMobile.Value;

                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to insert data into the RENTAL table
                string query = @"INSERT INTO INSPECTOR (INSPECTORNO, FIRSTNAME, SURNAME, EMAIL, MOBILE)
                            VALUES (@InspectorNo, @FirstName, @SurName, @Email, @Mobile)";

                // Create a new SqlConnection using the connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a new SqlCommand with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set the parameter values for the query
                        command.Parameters.AddWithValue("@InspectorNo", inspectorNo);
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




        protected void CreateInspector_Click(object sender, EventArgs e)
        {
            // Call the method to insert the new rental
            InsertInspector();

            // Rebind the GridView to update its contents
            BindGridView();

            // Clear the form inputs or show a success message
            ClearFormInputs();

        }

        private void ClearFormInputs()
        {
            txtInspectorNo.Value = String.Empty;
            txtFirstName.Value = String.Empty;
            txtSurName.Value = String.Empty;
            txtEmail.Value = String.Empty;
            txtMobile.Value = String.Empty;
        }
    }
}
//____________________________________EOF_________________________________________________________________________