<%@ Page Title="Inspector Manager" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inspectors.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Pages.Inspectors" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Inspectors</h2>

        <!-- Create Inspector -->
        <h3>Create Inspector</h3>
        <form runat="server">
            <div class="form-group">
                <label for="txtInspectorNo">Inspector Number:</label>
                <input type="text" id="txtInspectorNo" class="form-control" />
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
        </form>

        <!-- Inspector Search -->
        <h3>Inspector Search</h3>
        <form runat="server">
            <div class="form-group">
                <label for="txtSearchInspectorNo">Inspector Number:</label>
                <input type="text" id="txtSearchInspectorNo" class="form-control" />
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
        </form>

        <!-- Display Search Results -->
        <h3>Search Results</h3>
        <div id="searchResults">
            <!-- Display the search results here -->
            <table class="table table-striped">
                <!-- Table structure for displaying search results -->
                <!-- ... -->
                <thead>
                <tr>
                    <th>Inspector Number</th>
                    <th>First Name</th>
                    <th>Surname</th>
                    <th>Email</th>
                    <th>Mobile</th>
                    <th>Actions</th>
                </tr>
            </thead>
                <tbody>
                    <tr>
                        <td>Inspector 1</td>
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

        <!-- Display Inspectors -->
        <h3>Inspectors List</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Inspector Number</th>
                    <th>First Name</th>
                    <th>Surname</th>
                    <th>Email</th>
                    <th>Mobile</th>
                </tr>
            </thead>
            <tbody>
                <!-- Populate with data from the Inspector table -->
                <tr>
                    <td>123</td>
                    <td>John</td>
                    <td>Doe</td>
                    <td>johndoe@example.com</td>
                    <td>123456789</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>