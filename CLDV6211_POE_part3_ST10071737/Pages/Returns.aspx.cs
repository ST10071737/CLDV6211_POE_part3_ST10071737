﻿using System;
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
                    lblMessage.Text = "An error occurred: " + ex.Message;
                }
            }
        }
    }
}
