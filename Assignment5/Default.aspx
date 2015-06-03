<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Venue Login</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Venue Login</h1>
        <hr />
        <p>Pls. log in.</p>
        <table class="login">
            <tr>
                <td class="login">User Name</td>
                <td class="login">
                    <asp:TextBox ID="txtUserName" runat="server">
</asp:TextBox></td>
            </tr>
                <tr>
                <td class="login">Password</td>
                <td class="login">
                    <asp:TextBox ID="txtPassword" runat="server" 
TextMode="Password">
                   </asp:TextBox></td>
            </tr>
                <tr>
                <td class="login">
                   <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                </td>
                <td class="login">
                    <asp:Label ID="lblMessage" runat="server" Text="">
</asp:Label> </td>
            </tr>
        </table>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Register.aspx">Register</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
