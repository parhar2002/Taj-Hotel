<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Peyment.aspx.cs" Inherits="Taj_Hotel.Peyment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Paypal</title>
    <style type="text/css">
        .auto-style1 {
            width: 226px;
            height: 512px;
        }
        .auto-style2 {
            height: 290px;
        }
    </style>
</head>
<body style="background-image: url('https://localhost:44363/image/paymentbg.jpg')" >
    
    <form id="form1" runat="server">
    <table style="width: 800px; height: 500px; background-color: #FFFFFF; margin-top: 50px;" align="center">
        <tr>
            <td>
                <table style="margin-left: 40px;" >
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/back.png" Width="40px" ImageAlign="Right" CausesValidation="False" PostBackUrl="~/home.aspx"  />
                    <tr>
                        <td colspan="2">
                            <asp:Label ID="Labels1" runat="server" Text="PayPal" ForeColor="#663300" Font-Size="x-Large"></asp:Label>
                            
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br/>
                            <asp:Label ID="Label2" runat="server" Text="Card Number"  Font-Size="Large" Font-Bold="True"></asp:Label><br/>
                            <asp:Label ID="Label3" runat="server" Text="Enter the 16-digit Card Number on the card"  Font-Size="Medium" Font-Bold="True" ForeColor="Gray"></asp:Label>
                        </td>
                    </tr>
                    <tr >
                        <td style="padding-top: 20px; padding-right: 20px; padding-bottom: 20px;" colspan="2">
                            <asp:Image ID="Image1" runat="server" ImageUrl="~/image/mc_symbol.svg" Width="50px" ImageAlign="AbsMiddle" />
                            <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="350px" ></asp:TextBox>                
                       <asp:Image ID="Image2" runat="server" ImageUrl="~/image/verified-badge.svg" Width="30px" ImageAlign="AbsMiddle" />
                                    
                <br />
                <asp:RequiredFieldValidator ID="MobailFieldValidator" runat="server" ErrorMessage="Enter ATM Number" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="Invalid number No" ForeColor="Red" ValidationExpression="[0-9]{16}" Font-Size="Small"></asp:RegularExpressionValidator>
            
                            </td>   
                    </tr>
                    <tr>
                        <td >
                            <asp:Label ID="Label4" runat="server" Text="CVV Number"  Font-Size="Large" Font-Bold="True"></asp:Label><br/>
                            <asp:Label ID="Label5" runat="server" Text="Enter the 3 or 4 digit number on card"  Font-Size="Medium" Font-Bold="True" ForeColor="Gray"></asp:Label>
                       
                        </td>
                        <td align="right" style="padding-right: 20px;">
                            <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="110px"></asp:TextBox>
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/image/dots.svg" Width="30px" ImageAlign="AbsMiddle" />
                            <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter CVV Number" ControlToValidate="TextBox2" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="Invalid number No" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]{4}"></asp:RegularExpressionValidator>
            
                            
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Expiry Date"  Font-Size="Large" Font-Bold="True"></asp:Label><br/>
                            <asp:Label ID="Label7" runat="server" Text="Enter the expiration date of the card"  Font-Size="Medium" Font-Bold="True" ForeColor="Gray"></asp:Label>
                       
                        </td>
                        <td align="right" style="padding-right: 20px;">
                            <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="60px"></asp:TextBox>
                             <asp:Label ID="Label8" runat="server" Text="/"  Font-Size="XX-Large" Font-Bold="True" ></asp:Label>
                       
                            <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="60px"></asp:TextBox>
                          
                        </td>
                    </tr>
                    <tr>
                        <td >
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Password"  Font-Size="Large" Font-Bold="True"></asp:Label><br/>
                            <asp:Label ID="Label10" runat="server" Text="Enter Your Dynamic Password"  Font-Size="Medium" Font-Bold="True" ForeColor="Gray"></asp:Label>
                       
                        </td>
                        <td align="right" style="padding-right: 20px;">
                            <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="110px" Font-Size="Medium" TextMode="Password"></asp:TextBox>
                       <asp:Image ID="Image4" runat="server" ImageUrl="~/image/dots.svg" Width="30px" ImageAlign="AbsMiddle" />
                        </td>
                        </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="Pay Now" BackColor="#025EFE" ForeColor="White" Height="35px" Width="457px" BorderColor="#025EFE" OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
            <td >
                <table style=" background-image: url('image/pey.png'); padding-left: 20px;" class="auto-style1">
                   <tr><td class="auto-style2">
                       
                       <asp:Label ID="Label15" runat="server" Text="Label" Visible="false"></asp:Label>
                       
                       </td></tr>
                    
                    <tr>
                        <td><asp:Label ID="Label11" runat="server" Text="Label" Font-Size="Medium"  Visible="false"></asp:Label>
                            <asp:Label ID="Label12" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label13" runat="server" Text="Label" Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label14" runat="server" Text="Label" Font-Size="Larger"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                            <asp:Label ID="sub" runat="server" ></asp:Label></td></tr>
                        </td>
                    </tr>
                </table>
                <br />
            </td>
        </tr>
    </table>
        </form>
</body>
</html>
