using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace CLDV6211_POE_part3_ST10071737.Pages
{
    public partial class Cars : System.Web.UI.Page
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
                    string query = "SELECT * FROM CAR";

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
            string query = "SELECT * FROM CAR";

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

        protected void InsertCar()
        {
            try
            {
                // Retrieve the input values from the form controls
                string carNo = txtCarNo.Value;
                int carMakeNo = Convert.ToInt32(ddlCarMakeNo.Value);
                string model = txtModel.Value;
                int carBodyTypeNo = Convert.ToInt32(ddlCarBodyType.Value);
                float kilometersTraveled = Convert.ToSingle(txtKilometersTraveled.Value);
                int serviceKilometers = Convert.ToInt32(txtServiceKilometers.Value);
                bool available = chkAvailable.Checked;

                // Set the connection string
                string connectionString = ConfigurationManager.ConnectionStrings["DB_VC_CLDV6211_ST10071737"].ConnectionString;

                // Set the SQL query to insert data into the RENTAL table
                string query = @"INSERT INTO CAR (CARNO, CARMAKENO, MODEL, CARBODYTYPENO, KILOMETERSTRAVELED, SERVICKILOMETERS, AVALIABLE)
                            VALUES(@CarNo, @CarMakeNo, @Model, @CarBodyTypeNo, @KilometersTraveled, @ServiceKilometers, @Available)";

                // Create a new SqlConnection using the connection string
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    // Open the database connection
                    connection.Open();

                    // Create a new SqlCommand with the query and connection
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        // Set the parameter values for the query
                        command.Parameters.AddWithValue("@CarNo", carNo);
                        command.Parameters.AddWithValue("@CarMakeNo", carMakeNo);
                        command.Parameters.AddWithValue("@Model", model);
                        command.Parameters.AddWithValue("@CarBodyTypeNo", carBodyTypeNo);
                        command.Parameters.AddWithValue("@KilometersTraveled", kilometersTraveled);
                        command.Parameters.AddWithValue("@ServiceKilometers", serviceKilometers);
                        command.Parameters.AddWithValue("@Available", available);

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




        protected void CreateCar_Click(object sender, EventArgs e)
        {
            // Call the method to insert the new rental
            InsertCar();

            // Rebind the GridView to update its contents
            BindGridView();

            // Clear the form inputs or show a success message
            ClearFormInputs();

        }

        private void ClearFormInputs()
        {
            txtCarNo.Value = String.Empty;
            ddlCarMakeNo.Value = String.Empty;
            txtModel.Value = String.Empty;
            ddlCarBodyType.Value = String.Empty;
            txtKilometersTraveled.Value = String.Empty;
            txtServiceKilometers.Value = String.Empty;
            chkAvailable.Checked = false;
        }
    }
}