<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Onlice_Ticket_System.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="registerDiv">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="CREATE ACCOUNT"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" ForeColor="Black" value="Name"
              onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='Name'}" onchange="this.beenchanged=true;" AutoCompleteType="Disabled" ></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" ForeColor="Black" value="Surname"
             onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='Surname'}" onchange="this.beenchanged=true;" AutoPostBack="True" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid Name" ForeColor="Red" ValidationExpression="[a-zA-Z'@&amp;#.\s]{3,10}$"></asp:RegularExpressionValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid Surname" ForeColor="#FF3300" ValidationExpression="[a-zA-Z'@&amp;#.\s]{3,10}$"></asp:RegularExpressionValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" ForeColor="Black" value="Password"
             onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='Password'}" onchange="this.beenchanged=true;" Width="450px" TextMode="Password"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Font-Size="Medium" ForeColor="Black" value="Re-Type Password"
             onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='Re-Type Password'}" onchange="this.beenchanged=true;" Width="450px" TextMode="Password"></asp:TextBox>
            <br />
&nbsp;&nbsp;&nbsp;
&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox7" ErrorMessage="Password not match" ForeColor="#FF3300"></asp:CompareValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Font-Size="Medium" ForeColor="Black" value="E-Mail"
             onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='E-Mail'}" onchange="this.beenchanged=true;" Width="450px" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Invalid E-Mail Address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Font-Size="Medium" ForeColor="Black" value="TC"
             onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='TC'}" onchange="this.beenchanged=true;" Width="450px" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="Invalid TC" ValidationExpression="\d{11}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" ForeColor="Black" value="Phone"
             onfocus="if(this.beenchanged!=true) {this.value=''}" onblur="if(this.beenchanged!=true){this.value='Phone'}" onchange="this.beenchanged=true;" Width="450px" AutoCompleteType="Disabled">Phone</asp:TextBox>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Invalid Phone Number" ValidationExpression="\d{10}" ForeColor="#FF3300"></asp:RegularExpressionValidator>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Gender:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Female" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Male" />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="  "></asp:Label>
&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Create" BackColor="#669900" Font-Size="Large" autoPostBack ="true" ForeColor="White" Height="37px" Width="464px" OnClick="Button1_Click" />

        </div>
    </form>
</body>
</html>
