<%@ Page Title="Returns" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Returns" EnableEventValidation="false"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Returns</h1>

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


        <main>
            <div class="row">
                <div class="col-md-6">
                    <h2>Create Rental</h2>
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="txtReturnNo">Return number number:</label>
                                        <input type="text" id="txtReturnNo" runat="server" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtRentalNo">Rental Number:</label>
                                        <input type="text" id="txtRentalNo" runat="server" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtInspector">Inspector number:</label>
                                        <input type="text" id="txtInspector" runat="server" class="form-control" />
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="txtReturnDate">Return Date:</label>
                                        <input type="text" id="txtReturnDate" runat="server" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtElapseDDate">Elapsed Date:</label>
                                        <input type="text" id="txtElapseDDate" runat="server" class="form-control" />
                                    </div>
                                    <div class="form-group">
                                        <label for="txtFine">Fine:</label>
                                        <input type="text" id="txtFine" runat="server" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 text-center">
                                <div class="form-group" style="margin-top: 10px;">
                                     <asp:Button ID="Button1" type="submit" runat="server" Class="btn btn-primary custom-button" Text="Create" OnClick="CreateReturn_Click" />
                                    <%--<asp:Button ID="btnCreateReturn" type="submit" runat="server" Class="btn btn-primary" Text="Create" OnClick="CreateReturn_Click" />--%>
                                </div>
                                <Label ID="lblMessage" runat="server" CssClass="text-success"></Label>
                            </div>
                        </form>
                    </div>
                <div>
                 <div class="col-md-6">
                        <h2>Return List</h2>
                           <asp:UpdatePanel ID="UpdatePanelGridView" runat="server">
                                <ContentTemplate>
                                    <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                                    <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </main>
    </div>
</asp:Content>
