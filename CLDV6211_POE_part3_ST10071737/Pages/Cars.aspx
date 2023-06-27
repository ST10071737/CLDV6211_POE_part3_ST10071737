<%@ Page Title="Cars" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cars.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Pages.Cars" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Cars</h2>

        <style>
    .custom-button {
        background-color: #8ACB88 !important;
        border-color: #8ACB88 !important;
        transition: background-color 0.3s ease, border-color 0.3s ease;
    }

    .custom-button:hover {
        background-color: #6D9D76 !important;
        border-color: #6D9D76 !important;
    }
</style>

        <!-- Create Car -->
        <h3>Create Car</h3>
            <div class="form-group">
                <label for="txtCarNo">Car Number:</label>
                <input type="text" id="txtCarNo" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlCarMakeNo">Car Make:</label>
                <input type="text" id="ddlCarMakeNo" runat="server" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="txtModel">Model:</label>
                <input type="text" id="txtModel" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="ddlCarBodyType">Car Body Type:</label>
                <input type="text" id="ddlCarBodyType" runat="server" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="txtKilometersTraveled">Kilometers Traveled:</label>
                <input type="text" id="txtKilometersTraveled" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtServiceKilometers">Service Kilometers:</label>
                <input type="text" id="txtServiceKilometers" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="chkAvailable">Available:</label>
                <input type="checkbox" id="chkAvailable" runat="server" class="form-check-input" />
            </div>
            <div class="form-group">
                <div class="form-group" style="margin-top: 10px;">
                   <asp:Button ID="btnCreateCar" type="submit" class="btn btn-primary custom-button" runat="server" Text="Create" OnClick="CreateCar_Click"/>
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
                    <button type="submit" class="btn btn-primary custom-button">Search</button>
                </div>
            </div>

        <!-- Display Search Results -->
        <h3>Search Results</h3>
        <div id="searchResults">
            <!-- Display the search results here -->
            <h3>Search Results</h3>
            <ItemTemplate>
            <asp:GridView ID="GridViewSearchResults" runat="server" Class="table" AutoGenerateColumns="true">
                 <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnUpdate" runat="server" Text="Update" Class="btn btn-primary"/>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" Class="btn btn-danger" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <!-- Display Cars -->
        <h3>Cars List</h3>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
