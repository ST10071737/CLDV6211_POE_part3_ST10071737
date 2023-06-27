//Jasper van Niekerk ST10071737
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace CLDV6211_POE_part3_ST10071737
{
    public partial class Rentals : System.Web.UI.Page
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
                    string query = "SELECT * FROM RENTAL";

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
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        protected void BindGridView()
        {
            // Set the connection string
            string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

            // Set the SQL query to retrieve data from the RENTAL table
            string query = "SELECT * FROM RENTAL";

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

        protected void InsertRental()
        {
            try
            {
                // Retrieve the input values from the form controls
                string rentalNo = txtRentalNo.Value;
                string carNo = txtCar.Value;
                string driverNo = txtDriver.Value;
                decimal rentalFee = Convert.ToDecimal(txtRentalFee.Value);
                DateTime startDate = Convert.ToDateTime(txtStartDate.Value);
                DateTime endDate = Convert.ToDateTime(txtEndDate.Value);
                string pickupLocation = txtPickUpLocation.Value;
                string dropOffLocation = txtDropOffLocation.Value;
                int inspectorNo = Convert.ToInt32(txtInspector.Value);

                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to insert data into the RENTAL table
                string query = "INSERT INTO RENTAL (RENTALNO, CARNO, DRIVERNO, RENTALFEE, STARTDATE, ENDDATE, PICKUPLOCATION, DROPOFFLOCATION, INSPECTORNO) VALUES " +
                    "(@RentalNo, @CarNo, @DriverNo, @RentalFee, @StartDate, @EndDate, @PickupLocation, @DropOffLocation, @InspectorNo)";

                // Create a new SqlConnection using the connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a new SqlCommand with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set the parameter values for the query
                        command.Parameters.AddWithValue("@RentalNo", rentalNo);
                        command.Parameters.AddWithValue("@CarNo", carNo);
                        command.Parameters.AddWithValue("@DriverNo", driverNo);
                        command.Parameters.AddWithValue("@RentalFee", rentalFee);
                        command.Parameters.AddWithValue("@StartDate", startDate);
                        command.Parameters.AddWithValue("@EndDate", endDate);
                        command.Parameters.AddWithValue("@PickupLocation", pickupLocation);
                        command.Parameters.AddWithValue("@DropOffLocation", dropOffLocation);
                        command.Parameters.AddWithValue("@InspectorNo", inspectorNo);

                        // Execute the query
                        command.ExecuteNonQuery();

                        // Display a success message
                        lblMessage.InnerText = "Rental created successfully.";
                    }
                }

            }
            catch (Exception ex)
            {
                // Log or display the error message
                lblMessage.InnerText = "An error occurred: " + ex.Message;
            }
        }




        protected void CreateRental_Click(object sender, EventArgs e)
        {
            // Call the method to insert the new rental
            InsertRental();

            // Rebind the GridView to update its contents
            BindGridView();

            // Clear the form inputs or show a success message
            ClearFormInputs();

        }

        private void ClearFormInputs()
        {
            txtRentalNo.Value = string.Empty;
            txtCar.Value = string.Empty;
            txtDriver.Value = string.Empty;
            txtRentalFee.Value = string.Empty;
            txtStartDate.Value = string.Empty;
            txtEndDate.Value = string.Empty;
            txtPickUpLocation.Value = string.Empty;
            txtDropOffLocation.Value = string.Empty;
            txtInspector.Value = string.Empty;
        }
    }
}
//____________________________________EOF_________________________________________________________________________