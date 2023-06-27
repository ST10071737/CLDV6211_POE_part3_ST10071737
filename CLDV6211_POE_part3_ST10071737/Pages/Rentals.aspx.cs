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
                    lblMessage.Text = "An error occurred: " + ex.Message;
                }
            }
        }

        protected void CreateRental_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "An error occurred: ";
            try
            {
                // Retrieve values from the input fields
                string rentalNo = txtRentalNo.Value;
                string carNo = txtCar.Value;
                string driverNo = txtDriver.Value;
                decimal rentalFee = decimal.Parse(txtRentalFee.Value);
                DateTime startDate = DateTime.Parse(txtStartDate.Value);
                DateTime endDate = DateTime.Parse(txtEndDate.Value);
                string pickupLocation = txtPickUpLocation.Value;
                string dropOffLocation = txtDropOffLocation.Value;
                int inspectorNo = int.Parse(txtInspector.Value);

                // Insert the data into the RENTAL table
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "INSERT INTO RENTAL (RENTALNO, CARNO, DRIVERNO, RENTALFEE, STARTDATE, ENDDATE, PICKUPLOCATION, DROPOFFLOCATION, INSPECTORNO) " +
                                   "VALUES (@RentalNo, @CarNo, @DriverNo, @RentalFee, @StartDate, @EndDate, @PickupLocation, @DropOffLocation, @InspectorNo)";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@RentalNo", rentalNo);
                        command.Parameters.AddWithValue("@CarNo", carNo);
                        command.Parameters.AddWithValue("@DriverNo", driverNo);
                        command.Parameters.AddWithValue("@RentalFee", rentalFee);
                        command.Parameters.AddWithValue("@StartDate", startDate);
                        command.Parameters.AddWithValue("@EndDate", endDate);
                        command.Parameters.AddWithValue("@PickupLocation", pickupLocation);
                        command.Parameters.AddWithValue("@DropOffLocation", dropOffLocation);
                        command.Parameters.AddWithValue("@InspectorNo", inspectorNo);

                        
                        command.ExecuteNonQuery();
                    }
                }

                // Clear the input fields
                ClearInputFields();

                // Bind the rental data
                BindRentalData();

                // Display success message
                lblMessage.Text = "Rental created successfully.";
            }
            catch (Exception ex)
            {
                // Log or display the error message
                lblMessage.Text = "An error occurred: " + ex.Message;
            }
        }




        private void BindRentalData()
        {
            // Clear the input fields
            ClearInputFields();

            string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Rental";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);

                        GridViewRentals.DataSource = dt;
                        GridViewRentals.DataBind();
                    }
                }
            }
        }

        private void ClearInputFields()
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