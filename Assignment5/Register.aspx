<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register a Venue</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Register a Venue</h1>
    <table>
        <tr>
            <td>Venue Name:</td>
            <td>
                <asp:TextBox ID="txtVenueName" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Venue Address:</td>
            <td>
                <asp:TextBox ID="txtVenueAddress" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>City:</td>
            <td>
                <asp:TextBox ID="txtVenueCity" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>State:</td>
            <td>
                <asp:TextBox ID="txtVenueState" runat="server"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Zip Code:</td>
            <td>
                <asp:TextBox ID="txtVenueZipCode" runat="server">
                </asp:TextBox></td>
        </tr>

        <tr>
            <td>Phone Number:</td>
            <td>
                <asp:TextBox ID="txtVenuePhoneNumber" runat="server">
                </asp:TextBox></td>
        </tr>

        <tr>
            <td>Age Restriction:</td>
            <td>
                <asp:TextBox ID="txtVenueAgeRestriction" runat="server">
                </asp:TextBox></td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtVenueEmail" runat="server">
                </asp:TextBox></td>
        </tr>
        <tr>
            <td>Web Page Address:</td>
            <td>
                <asp:TextBox ID="txtVenueWebPage" runat="server">
                </asp:TextBox></td>
        </tr>
        <tr>
            <td>Username:</td>
            <td>
                <asp:TextBox ID="txtUserName" runat="server">
                </asp:TextBox></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password">
                </asp:TextBox></td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password">
                </asp:TextBox></td>
        </tr>

        <tr>
            <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
            <td>
                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
             </td>
        </tr>
    </table>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackURL="~/Default.aspx">Log in</asp:LinkButton>
    </div>
    </form>
</body>
</html>