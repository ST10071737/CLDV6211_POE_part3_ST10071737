<%@ Page Title="Rentals" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Rentals" %>

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
                    </div>
                </form>
            </div>
        </div>

        <!-- Rental List -->
        <div class="row">
            <div class="col-md-12">
                <h2>Rental List</h2>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Rental No</th>
                            <th>Car No</th>
                            <th>Driver No</th>
                            <th>Rental Fee</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Pick-Up Location</th>
                            <th>Drop-Off Location</th>
                            <th>Inspector No</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Car 1</td>
                            <td>Driver 1</td>
                            <td>$50</td>
                            <td>2023-06-01</td>
                            <td>2023-06-10</td>
                            <td>Location 1</td>
                            <td>Location 2</td>
                            <td>Inspector 1</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Car 2</td>
                            <td>Driver 2</td>
                            <td>$60</td>
                            <td>2023-06-05</td>
                            <td>2023-06-15</td>
                            <td>Location 3</td>
                            <td>Location 4</td>
                            <td>Inspector 2</td>
                        </tr>
                        <!-- Add more rows for other rental objects -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
