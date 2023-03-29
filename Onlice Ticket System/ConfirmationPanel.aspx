<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationPanel.aspx.cs" Inherits="Onlice_Ticket_System.ConfirmationPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="ConfirmationPanel.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 6px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div id="home">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="95px" ImageUrl="~/images/Home.png" OnClick="ImageButton1_Click" Width="95px" />
        </div>
        <div id ="confirmationDiv">
            <div id ="ticketCorner">    
                <asp:Label ID="Label15" runat="server" Text="Ticket Information " BorderColor="Blue"></asp:Label>
                <br />
            <br />
            &nbsp;
            <asp:Label ID="Label2" runat="server" Text="Team:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label17" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            <br />
                <br />
            <br />
            &nbsp;
            <asp:Label ID="Label3" runat="server" Text="Tribune:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label18" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            <br />
                <br />
            <br />
            &nbsp;
            <asp:Label ID="Label4" runat="server" Text="Block:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label19" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
            <br />
                <br />
            <br />
            &nbsp;
            <asp:Label ID="Label5" runat="server" Text="Seat Number:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label20" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;
                <br />
                <asp:Label ID="Label21" runat="server" Text=" 21"></asp:Label>
                <br />
                
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
            </div>
            <div id ="userInformation">

            &nbsp;<asp:Label ID="Label16" runat="server" Text="User Information " BorderColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Text="Name :"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label10" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label7" runat="server" Text="Surname:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label11" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:Label ID="Label22" runat="server" Text="TC:"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label12" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label8" runat="server" Text="Phone:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="Label13" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>
                <br />
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label9" runat="server" Text="E-Mail:"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label14" runat="server" Text="Name " Font-Bold="True" ForeColor="#FF3300"></asp:Label>

            </div>
            <br />
            <div id="bottom" class="auto-style1">
                <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="XX-Large" Text=" " />

                <asp:LinkButton ID="LinkButton1" runat="server"  href="PDF.aspx" target="_blank" OnClick ="Button1_Click" Font-Italic="True" Font-Size="Large" ForeColor="Black" Font-Underline="False"> I accept the purchase contract</asp:LinkButton>
                &nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
                
                <asp:Button ID="Button1" runat="server" Text="Confirm" BackColor="#993333" Font-Size="Medium" ForeColor="White" Height="41px" Width="334px" OnClick="Button1_Click" />
        
            </div>

        </div>
    </form>
</body>
</html>
