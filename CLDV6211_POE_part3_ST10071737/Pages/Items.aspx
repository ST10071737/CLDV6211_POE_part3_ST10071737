<%@ Page Title="Items" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Items.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Items" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Items</h2>
        
        <section>
            <h3>Inspectors</h3>
            <p>Inspectors are responsible for collecting rental vehicles and ensuring their proper return. Manage and assign inspectors to ensure smooth operations.</p>
            <a href="#" class="btn btn-primary">Manage Inspectors</a>
        </section>

        <section>
            <h3>Cars</h3>
            <p>Manage the fleet of rental cars available for e-hailing drivers. Add, update, and remove cars to meet the demand and maintain a reliable inventory.</p>
            <a href="#" class="btn btn-primary">Manage Cars</a>
        </section>

        <section>
            <h3>Drivers</h3>
            <p>Manage the pool of e-hailing drivers who rent vehicles for their daily operations. Keep track of driver information, licenses, and rental history.</p>
            <a href="#" class="btn btn-primary">Manage Drivers</a>
        </section>
    </div>
</asp:Content>