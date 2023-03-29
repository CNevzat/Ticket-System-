<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Onlice_Ticket_System.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="Login.css" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 25px;
            margin-top: 5px;
        }
        .auto-style2 {
            margin-left: 25px;
            margin-top: 6px;
        }
        .auto-style3 {
            margin-left: 25px;
            margin-top: 21px;
        }
        .auto-style4 {
            height: 30px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="maindiv">
            <asp:Label ID="Label1" runat="server" Text="SIGN IN" Font-Bold="True" Font-Size="X-Large" ForeColor="White"></asp:Label><br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="E-Mail Address:" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
        &nbsp;
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Font-Size="Medium" ForeColor="Black" Width="325px" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" BackColor="Black" ControlToValidate="TextBox1" ErrorMessage="Invalid Adress" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="Password:"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="auto-style1" Width="325px" Font-Size="Medium" AutoCompleteType="Disabled"></asp:TextBox>
            
            <div id="links" class="auto-style4">
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" Height="20px" CssClass="link" OnClick="LinkButton1_Click">Create New Account</asp:LinkButton>           
            <asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" Height="20px" Width="140px" CssClass="link">Forgot Password</asp:LinkButton>
            </div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" BackColor="Black" Font-Size="Large" ForeColor="#FF3300" Text="  "></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="Red" CssClass="auto-style3" Font-Bold="True" Font-Size="Large" ForeColor="White" Text="SIGN IN" Width="325px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
