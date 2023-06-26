<%@ Page Title="Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Pages.Cars" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Cars</h2>

        <!-- Create Car -->
        <h3>Create Car</h3>
            <div class="form-group">
                <label for="txtCarNo">Car Number:</label>
                <input type="text" id="txtCarNo" class="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlCarMakeNo">Car Make:</label>
                <select id="ddlCarMakeNo" class="form-control">
                    <option value="1">Make 1</option>
                    <option value="2">Make 2</option>
                    <!-- Add more options for car makes -->
                </select>
            </div>
            <div class="form-group">
                <label for="txtModel">Model:</label>
                <input type="text" id="txtModel" class="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlCarBodyType">Car Body Type:</label>
                <select id="ddlCarBodyType" class="form-control">
                    <option value="1">Body Type 1</option>
                    <option value="2">Body Type 2</option>
                    <!-- Add more options for car body types -->
                </select>
            </div>
            <div class="form-group">
                <label for="txtKilometersTraveled">Kilometers Traveled:</label>
                <input type="text" id="txtKilometersTraveled" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtServiceKilometers">Service Kilometers:</label>
                <input type="text" id="txtServiceKilometers" class="form-control" />
            </div>
            <div class="form-group">
                <label for="chkAvailable">Available:</label>
                <input type="checkbox" id="chkAvailable" class="form-check-input" />
            </div>
            <div class="form-group">
                <div class="form-group" style="margin-top: 10px;">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </div>

        <!-- Car Search -->
        <h3>Car Search</h3>
            <div class="form-group">
                <label for="txtSearchCarNo">Car Number:</label>
                <input type="text" id="txtSearchCarNo" class="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlSearchCarMakeNo">Car Make:</label>
                <select id="ddlSearchCarMakeNo" class="form-control">
                    <option value="1">Make 1</option>
                    <option value="2">Make 2</option>
                    <!-- Add more options for car makes -->
                </select>
            </div>
            <div class="form-group">
                <label for="txtSearchModel">Model:</label>
                <input type="text" id="txtSearchModel" class="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlSearchCarBodyType">Car Body Type:</label>
                <select id="ddlSearchCarBodyType" class="form-control">
                    <option value="1">Body Type 1</option>
                    <option value="2">Body Type 2</option>
                    <!-- Add more options for car body types -->
                </select>
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
                        <th>Car Number</th>
                        <th>Car Make</th>
                        <th>Model</th>
                        <th>Car Body Type</th>
                        <th>Kilometers Traveled</th>
                        <th>Service Kilometers</th>
                        <th>Available</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Car 1</td>
                        <td>Make 1</td>
                        <td>Model 1</td>
                        <td>Body Type 1</td>
                        <td>10000</td>
                        <td>5000</td>
                        <td>Yes</td>
                        <td>
                            <button class="btn btn-primary">Update</button>
                            <button class="btn btn-danger">Delete</button>
                        </td>
                    </tr>
                    <!-- Add more rows for other search results -->
                </tbody>
            </table>
        </div>

        <!-- Display Cars -->
        <h3>Cars List</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Car Number</th>
                    <th>Car Make</th>
                    <th>Model</th>
                    <th>Car Body Type</th>
                    <th>Kilometers Traveled</th>
                    <th>Service Kilometers</th>
                    <th>Available</th>
                </tr>
            </thead>
            <tbody>
                <!-- Populate with data from the Cars table -->
                <tr>
                    <td>123</td>
                    <td>Make 1</td>
                    <td>Model 1</td>
                    <td>Body Type 1</td>
                    <td>10000</td>
                    <td>5000</td>
                    <td>Yes</td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
