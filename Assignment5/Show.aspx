<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Show.aspx.cs" Inherits="Show" %>

<!DOCTYPE html>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Show</title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Add Artist</h1>
        <hr />
       
    <table>
        <tr>
           <td>Artist Name:<asp:TextBox ID="txtArtistName" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>Artist Email:<asp:TextBox ID="txtArtistEmail" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>Artist Webpage:<asp:TextBox ID="txtArtistWebPage" runat="server"></asp:TextBox></td>
        </tr>
        
        <tr>  
            <td><asp:Button ID="btnAddArtist" Text="Add artist" runat="server" OnClick="btnAddArtist_Click1" /></td>
        </tr>
        
     </table>

        <h1>Add Show</h1>
        <hr />
     <table>
        <tr>
           <td>Show Name:<asp:TextBox ID="txtShowName" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>Show Start time:<asp:TextBox ID="txtShowStartTime" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>Artist:<asp:DropDownList ID="ArtistDropDownList1" runat="server"></asp:DropDownList></td>
        </tr>

        <tr>
           <td>Show Date:<asp:TextBox ID="txtShowDate" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>Ticket info:<asp:TextBox ID="txtTicketInfo" runat="server"></asp:TextBox></td>
        </tr>

        <tr>
           <td>Additional Ticket info:<asp:TextBox ID="txtAdditionalTicketInfo" runat="server"></asp:TextBox></td>
        </tr>

           
        <tr>  
            <td><asp:Button ID="btnAddShow" Text="Add Show" runat="server" OnClick="btnAddShow_Click" /></td>
        </tr>

         <td><asp:Label ID="Label1" runat="server" Text=""></asp:Label> </td>
        
        
     </table>
      
    </div>

         <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
