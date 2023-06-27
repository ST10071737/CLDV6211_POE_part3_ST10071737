<%@ Page Title="Driver" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Driver.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Pages.Driver" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Drivers</h2>
<!-- UI Changes/Designing -->
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

        <!-- Create Driver -->
        <h3>Create Driver</h3>
            <div class="form-group">
                <label for="txtDriverNo">Driver Number:</label>
                <input type="text" id="txtDriverNo" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <input type="text" id="txtFirstName" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtSurName">Surname:</label>
                <input type="text" id="txtSurName" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtEmail">Email:</label>
                <input type="email" id="txtEmail" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <label for="txtMobile">Mobile:</label>
                <input type="text" id="txtMobile" runat="server" class="form-control" />
            </div>
            <div class="form-group">
                <div class="form-group" style="margin-top: 10px;">
                    <asp:Button ID="btnCreateDriver" type="submit" class="btn btn-primary custom-button" runat="server" Text="Create" OnClick="CreateDriver_Click"/>

                   <%-- <asp:Button ID="btnCreateDriver" type="submit" class="btn btn-primary" runat="server" Text="Create" OnClick="CreateDriver_Click"/>--%>
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
                    <button type="submit" class="btn btn-primary custom-button">Search</button>

                    <%--<button type="submit" class="btn btn-primary">Search</button>--%>
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

        <!-- Display Drivers -->
        <h3>Drivers List</h3>
        <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

