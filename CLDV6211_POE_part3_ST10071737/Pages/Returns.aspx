<%@ Page Title="Returns" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Returns.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Returns" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Returns</h1>

        <main>
            <div class="row">
                <div class="col-md-6">
                    <h2>Create Rental</h2>
                    <form>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtCar">Car:</label>
                                    <input type="text" id="txtCar" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtDriver">Driver:</label>
                                    <input type="text" id="txtDriver" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtRentalFee">Rental Fee:</label>
                                    <input type="text" id="txtRentalFee" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtStartDate">Start Date:</label>
                                    <input type="text" id="txtStartDate" class="form-control" />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="txtEndDate">End Date:</label>
                                    <input type="text" id="txtEndDate" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtPickUpLocation">Pick-Up Location:</label>
                                    <input type="text" id="txtPickUpLocation" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtDropOffLocation">Drop-Off Location:</label>
                                    <input type="text" id="txtDropOffLocation" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label for="txtInspector">Inspector:</label>
                                    <input type="text" id="txtInspector" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 text-center">
                            <div class="form-group" style="margin-top: 10px;">
                                <button type="submit" class="btn btn-primary">Create</button>
                            </div>
                            <asp:Label ID="lblMessage" runat="server" CssClass="text-success"></asp:Label>
                        </div>
                    </form>
                </div>
                <div>
                 <div class="col-md-6">
                        <h2>Return List</h2>
                          <tbody>
                              <asp:GridView ID="GridViewRentals" runat="server" CssClass="table" AutoGenerateColumns="true"></asp:GridView>
                              <asp:SqlDataSource runat="server" ID="SqlDataSource1"></asp:SqlDataSource>
                           </tbody>
                         </table>
                    </div>
                </div>
            </div>
        </main>
    </div>
</asp:Content>
