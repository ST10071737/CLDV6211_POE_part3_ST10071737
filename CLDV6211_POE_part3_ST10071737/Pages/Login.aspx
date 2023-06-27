<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        <h2>Login</h2>
        </div>

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

    .image-container {
            position: absolute;
            top: 0;
            left: 0;
            width: 100px; /* Adjust the width of the image container as needed */
            height: 100px; /* Adjust the height of the image container as needed */
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }

        .image-container img {
            max-width: 100px;
            max-height: 100px;
            object-fit: contain;
        }
</style>
        <div style="text-align: center;">
        <div class="image-container">
            <img src="cannesAd.jpg" alt="Image 1" />
            <img src="twitterAd.jpg" alt="Image 2" />
        </div>

        <div class="form-group">
            <asp:Label ID="lblError1" runat="server" CssClass="text-danger"></asp:Label>
        </div>
        <div class="form-group">
            <div style="display: inline-block; text-align: left;">
                <asp:Label ID="lblUsername" runat="server" Text="Username:"></asp:Label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" style="width: 250px;"></asp:TextBox>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="lblError2" runat="server" CssClass="text-danger"></asp:Label>
        </div>
        <div class="form-group">
            <div style="display: inline-block; text-align: left;">
                <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" style="width: 250px;"></asp:TextBox>
            </div>
        </div>
        <div class="form-group" style="margin-top: 10px;">
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary custom-button" OnClick="btnLogin_Click" />
            <%--<asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />--%>
        </div>
    </div>
</asp:Content>
