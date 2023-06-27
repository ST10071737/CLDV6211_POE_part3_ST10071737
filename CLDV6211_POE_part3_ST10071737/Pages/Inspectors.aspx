<%@ Page Title="Inspector Manager" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Inspectors.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Pages.Inspectors" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Inspectors</h2>

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
        <!-- Create Inspector -->
        <h3>Create Inspector</h3>
        
            <div class="form-group">
                <label for="txtInspectorNo">Inspector Number:</label>
                <input type="text" id="txtInspectorNo" runat="server" class="form-control" />
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
                    <asp:Button ID="btnCreateInspector" type="submit" class="btn btn-primary custom-button" runat="server" Text="Create" OnClick="CreateInspector_Click"/>
                    <%--<asp:Button ID="btnCreateInspector" type="submit" class="btn btn-primary" runat="server" Text="Create" OnClick="CreateInspector_Click"/>--%>
                </div>
            </div>
        
        <!-- Inspector Search -->
        <h3>Inspector Search</h3>

        <div class="form-group">
            <label for="txtSearchInspectorNo">Inspector Number:</label>
            <input type="text" id="txtSearchInspectorNo" runat="server" class="form-control" />
        </div>
        <div class="form-group">
            <label for="txtSearchInspectorName">Inspector Name:</label>
            <input type="text" id="txtSearchInspectorName" runat="server" class="form-control" />
        </div>
        <div class="form-group">
            <div class="form-group" style="margin-top: 10px;">
                <asp:Button ID="btnsearchInspector" type="submit" class="btn btn-primary custom-button" runat="server" Text="Search" onclick="SearchInspectors_Click"/>
                <%--<asp:Button ID="btnsearchInspector" type="submit" class="btn btn-primary" runat="server" Text="Search" onclick="SearchInspectors_Click"/>--%>
            </div>
        </div>

        <!-- Display Search Results -->
       <h3>Search Results</h3>
        <div id="searchResults">
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

        <!-- Display Inspectors -->
        <h3>Inspectors List</h3>
       <div class="row">
            <div class="col-md-12">
                <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
