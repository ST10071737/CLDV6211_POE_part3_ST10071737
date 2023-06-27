//Jasper van Niekerk ST10071737
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CLDV6211_POE_part3_ST10071737
{
    public partial class Returns : System.Web.UI.Page
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
                    string query = "SELECT * FROM RETURNED";

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
                    lblMessage.InnerText = "An error occurred: " + ex.Message;
                }
            }
        }
        //CreateReturn_Click

        protected void BindGridView()
        {
            // Set the connection string
            string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

            // Set the SQL query to retrieve data from the RENTAL table
            string query = "SELECT * FROM RETURNED";

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

        protected void InsertReturn()
        {
            try
            {
                // Retrieve the input values from the form controls
                string returnNo = txtReturnNo.Value;
                string rentalNo = txtRentalNo.Value;
                string inspectorNo = txtInspector.Value;
                DateTime returnDate = Convert.ToDateTime(txtReturnDate.Value);
                DateTime elapsedDate = Convert.ToDateTime(txtElapseDDate.Value);
                decimal fine = Convert.ToDecimal(txtFine.Value);

                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to insert data into the RETURNED table
                string query = "INSERT INTO RETURNED (RETURNEDNO, RENTALNO, INSPECTORNO, RETURNDATE, ELAPSEDDATE, FINE) VALUES " +
                    "(@ReturnNo, @RentalNo, @InspectorNo, @ReturnDate, @ElapsedDate, @Fine)";

                // Create a new SqlConnection using the connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a new SqlCommand with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set the parameter values for the query
                        command.Parameters.AddWithValue("@ReturnNo", returnNo);
                        command.Parameters.AddWithValue("@RentalNo", rentalNo);
                        command.Parameters.AddWithValue("@InspectorNo", inspectorNo);
                        command.Parameters.AddWithValue("@ReturnDate", returnDate);
                        command.Parameters.AddWithValue("@ElapsedDate", elapsedDate);
                        command.Parameters.AddWithValue("@Fine", fine);

                        // Execute the query
                        command.ExecuteNonQuery();

                        // Display a success message
                        lblMessage.InnerText = "Return created successfully.";

                        // Clear the form inputs
                        ClearFormInputs();

                        // Refresh the GridView
                        BindGridView();
                    }
                }

            }
            catch (Exception ex)
            {
                // Log or display the error message
                lblMessage.InnerText = "An error occurred: " + ex.Message;
            }
        }




        protected void CreateReturn_Click(object sender, EventArgs e)
        {
            // Call the method to insert the new rental
            InsertReturn();

            // Rebind the GridView to update its contents
            BindGridView();

            // Clear the form inputs or show a success message
            ClearFormInputs();

        }

        private void ClearFormInputs()
        {
            txtReturnNo.Value = string.Empty;
            txtRentalNo.Value = string.Empty;
            txtInspector.Value = string.Empty;
            txtReturnDate.Value = string.Empty;
            txtElapseDDate.Value = string.Empty;
            txtFine.Value = string.Empty;
        }

    }
}
