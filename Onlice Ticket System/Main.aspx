<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Onlice_Ticket_System.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="Main.css" />
    <style type="text/css">
        .auto-style1 {
            margin-right: 5px;
        }
        .auto-style2 {
            margin-right: 5px;
            margin-left: 20px;
        }
        .auto-style3 {
            margin-left: 18px;
        }
        .auto-style4 {
            margin-left: 85px;
            width: 1296px;
        }
        .auto-style10 {
            margin-left: 15px;
        }
    </style>
</head>
<body style="height: 808px">
    <form id="form1" runat="server">
        
        <div id ="teams" class="auto-style4">
             <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Height="50px" Width="50px" ImageUrl="~/images/Teams Logo/FBLogo.png" CssClass="auto-style1" />
             <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Height="53px" Width="53px" ImageUrl="~/images/Teams Logo/GSLogo.png"  CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton3" runat="server" OnClick="ImageButton3_Click" Height="47px" Width="45px"  ImageUrl="~/images/Teams Logo/Besıktas.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton4" runat="server" OnClick="ImageButton4_Click" Height="45px" Width="47px" ImageUrl="~/images/Teams Logo/Trabzon.png"  CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton5" runat="server" OnClick="ImageButton5_Click" Height="45px" Width="47px" ImageUrl="~/images/Teams Logo/Basaksehir.png"  CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton6" runat="server" OnClick="ImageButton6_Click" Height="45px" Width="50px" ImageUrl="~/images/Teams Logo/Alanya.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton7" runat="server" OnClick="ImageButton7_Click" Height="50px" Width="50px" ImageUrl="~/images/Teams Logo/Antalya.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton8" runat="server" OnClick="ImageButton8_Click" Height="47px" Width="45px"  ImageUrl="~/images/Teams Logo/Gaziantep_FK.png"   CssClass="auto-style2"/>
             <asp:ImageButton ID="ImageButton9" runat="server" OnClick="ImageButton9_Click" Height="45px" Width="47px" ImageUrl="~/images/Teams Logo/Genclerbirligi.png"   CssClass="auto-style2"/>
             <asp:ImageButton ID="ImageButton10" runat="server" OnClick="ImageButton10_Click" Height="45px" Width="47px" ImageUrl="~/images/Teams Logo/Hatayspor.png"  CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton11" runat="server" OnClick="ImageButton11_Click" Height="50px" Width="50px" ImageUrl="~/images/Teams Logo/Karagümrük.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton12" runat="server" OnClick="ImageButton12_Click" Height="50px" Width="50px" ImageUrl="~/images/Teams Logo/Kasimpasa.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton13" runat="server" OnClick="ImageButton13_Click" Height="47px" Width="45px"  ImageUrl="~/images/Teams Logo/Kayserispor_logosu.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton14" runat="server" OnClick="ImageButton14_Click" Height="45px" Width="47px" ImageUrl="~/images/Teams Logo/Konya.jpg"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton15" runat="server" OnClick="ImageButton15_Click" Height="45px" Width="47px" ImageUrl="~/images/Teams Logo/Malatya.png"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton16" runat="server" OnClick="ImageButton16_Click" Height="50px" Width="50px" ImageUrl="~/images/Teams Logo/Rize.jpg"   CssClass="auto-style2" />
             <asp:ImageButton ID="ImageButton17" runat="server" OnClick="ImageButton17_Click" Height="42px" Width="50px" ImageUrl="~/images/Teams Logo/Sivas.jpg" CssClass="auto-style3"  />
        </div>
        <div id="medium">
            <div id ="seatInfo">
                <asp:Label ID="Label6" runat="server" Text="TICKET CORNER" Font-Size="Large" ForeColor="White" Font-Bold="True"></asp:Label>
                <br />
                &nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="X-Large" ForeColor="Yellow" Text="Welcome"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label8" runat="server" BackColor="White" Font-Size="Large" ForeColor="#006600" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Team" Font-Size="Large" ForeColor="White"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Team" DataTextField="Teams" DataValueField="ID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged2">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Team" runat="server" ConnectionString="<%$ ConnectionStrings:TeamsConn %>" ProviderName="<%$ ConnectionStrings:TeamsConn.ProviderName %>" SelectCommand="SELECT * FROM [Teams] ORDER BY [ID]"></asp:SqlDataSource>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Tribune" Font-Size="Large" ForeColor="White"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="Tribune" DataTextField="Tribunes" DataValueField="ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Tribune" runat="server" ConnectionString="<%$ ConnectionStrings:TeamsConn %>" ProviderName="<%$ ConnectionStrings:TeamsConn.ProviderName %>" SelectCommand="SELECT [ID], [Tribunes] FROM [Tribunes] WHERE ([Teams] = ?) ORDER BY [ID]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Teams" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Block" Font-Size="Large" ForeColor="White"></asp:Label>
                <br />
                
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Blocks" DataTextField="Block" DataValueField="ID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Blocks" runat="server" ConnectionString="<%$ ConnectionStrings:TeamsConn %>" ProviderName="<%$ ConnectionStrings:TeamsConn.ProviderName %>" SelectCommand="SELECT [ID], [Block] FROM [Blocks] WHERE ([Tribunes] = ?) ORDER BY [ID]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="Tribunes" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />           

                <asp:Label ID="Label2" runat="server" Text="Seat Number" Font-Size="Large" ForeColor="White"></asp:Label></br>
                <asp:DropDownList ID="DropDownList5" runat="server">
                      <asp:ListItem>Select</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>26</asp:ListItem>
                    <asp:ListItem>27</asp:ListItem>
                    <asp:ListItem>28</asp:ListItem>
                    <asp:ListItem>29</asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                </asp:DropDownList>
                </br>
                </br>
                
                <asp:Button ID="Button1" runat="server" Text="Complete" OnClick="Button1_Click" BackColor="#006600" BorderColor="Black" BorderStyle="Solid" Font-Size="Large" ForeColor="White" Width="150px" />
           
           </div>
        <div id ="stadium">
            <asp:Image ID="Image6" runat="server" Width="621px" Height="384px" BorderStyle="Groove" CssClass="auto-style10" ImageUrl="~/images/shownn.jpg" />
        </div>
        </div>
         <div class ="slider">
        <div class ="slider-content">
            <div class="slider-item">
                <img src="images/add/ReklamNew1.png" alt="" />
            </div>
            <div class="slider-item">
                <img src="images/add/ReklamNew2.png" alt=""  />
            </div>
            <div class="slider-item">
                <img src="images/add/ReklamNew3.png"alt="" />
            </div> 
              <div class="slider-item">
                <img src="images/add/ReklamNew4.png" alt=""  />
            </div>
              <div class="slider-item">
                <img src="images/add/ReklamNew5.png" alt=""  />
            </div>
        </div>         
    </div>     
          
    </form>
</body>
</html>
