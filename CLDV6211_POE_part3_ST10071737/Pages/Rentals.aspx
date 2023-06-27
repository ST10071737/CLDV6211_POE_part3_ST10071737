<%@ Page Title="Rentals" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Rentals" EnableEventValidation="false"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Rentals</h1>
<!-- Create Rental Form -->
        <div class="row">
            <div class="col-md-6">
                <h2>Create Rental</h2>
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtRentalNo">Rental number:</label>
                                <input type="text" id="txtRentalNo" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtCar">Car:</label>
                                <input type="text" id="txtCar" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtDriver">Driver:</label>
                                <input type="text" id="txtDriver" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtRentalFee">Rental Fee:</label>
                                <input type="text" id="txtRentalFee" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtStartDate">Start Date:</label>
                                <input type="text" id="txtStartDate" runat="server" class="form-control" />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="txtEndDate">End Date:</label>
                                <input type="text" id="txtEndDate" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtPickUpLocation">Pick-Up Location:</label>
                                <input type="text" id="txtPickUpLocation" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtDropOffLocation">Drop-Off Location:</label>
                                <input type="text" id="txtDropOffLocation" runat="server" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label for="txtInspector">Inspector:</label>
                                <input type="text" id="txtInspector" runat="server" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 text-center">
                         <div class="form-group" style="margin-top: 10px;">
                             <button type="submit" class="btn btn-primary" OnClick="CreateRental_Click">Create</button>
                         </div>
                        <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                    </div>
                </form>
            </div>
        </div>

        <!-- Rental List -->
        <div class="row">
            <div class="col-md-12">
                <h2>Rental List</h2>
                <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
