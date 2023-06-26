<%@ Page Title="Login Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CLDV6211_POE_part3_ST10071737.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="text-align: center;">
        <h2>Login</h2>
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
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
        </div>
    </div>
</asp:Content>
