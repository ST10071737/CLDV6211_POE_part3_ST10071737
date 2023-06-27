<%@ Page Title="Driver" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Driver.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Pages.Driver" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Drivers</h2>

        <!-- Create Driver -->
        <h3>Create Driver</h3>
            <div class="form-group">
                <label for="txtDriverNo">Driver Number:</label>
                <input type="text" id="txtDriverNo" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <input type="text" id="txtFirstName" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtSurName">Surname:</label>
                <input type="text" id="txtSurName" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <input type="email" id="txtEmail" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtMobile">Mobile:</label>
                <input type="text" id="txtMobile" class="form-control" />
            </div>
            <div class="form-group">
                <div class="form-group" style="margin-top: 10px;">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </div>

        <!-- Driver Search -->
        <h3>Driver Search</h3>
            <div class="form-group">
                <label for="txtSearchDriverNo">Driver Number:</label>
                <input type="text" id="txtSearchDriverNo" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtSearchName">Name:</label>
                <input type="text" id="txtSearchName" class="form-control" />
            </div>
            <div class="form-group">
                <div class="form-group" style="margin-top: 10px;">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>

        <!-- Display Search Results -->
        <h3>Search Results</h3>
        <div id="searchResults">
            <!-- Display the search results here -->
            <table class="table table-striped">
                <!-- Table structure for displaying search results -->
                <thead>
                    <tr>
                        <th>Driver Number</th>
                        <th>First Name</th>
                        <th>Surname</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Driver 1</td>
                        <td>John</td>
                        <td>Doe</td>
                        <td>john.doe@example.com</td>
                        <td>1234567890</td>
                        <td>
                            <button class="btn btn-primary">Update</button>
                            <button class="btn btn-danger">Delete</button>
                        </td>
                    </tr>
                    <!-- Add more rows for other search results -->
                </tbody>
            </table>
        </div>

        <!-- Display Drivers -->
        <h3>Drivers List</h3>
        <div class="row">
            <div class="col-md-12">
                <h2>Rental List</h2>
                <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

