<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Offer.aspx.cs" Inherits="Taj_Hotel.Offer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Offer Page</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style6 {
            width: 18%;
            height: 26px;
        }
        .auto-style7 {
            height: 5px;
        }
        .auto-style12 {
            width: 100%;
            height: 96px;
        }
        .auto-style13 {
            width: 100%;
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" bgcolor="#fff" class="auto-style13"><tr>
 <td align="center"><font style="font-family: 'Arial Rounded MT Bold'; color: #663300; font-style: normal;" size="+10"  >
    New Offers
    <br /><hr style="width:20%" />
    </font>
    </td>
</tr>
</table>
 <asp:SqlDataSource ID="OfferSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Offer]"></asp:SqlDataSource>
    <asp:DataList runat="server" DataSourceID="OfferSqlDataSource" RepeatColumns="4" OnItemCommand="LinkButton1" CssClass="auto-style12">
        <ItemTemplate>
           <table class="auto-style4" border="0" style=" width: 300px" bgcolor="#fff">
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" ImageUrl='<%# Eval("Image") %>' /></td>
                        
                    </tr>
                    <tr align="center">
                        <td class="auto-style6" colspan="2" >
                            <asp:Label ID="oidtxt" runat="server" Text='<%# Eval("Offer_ID") %>' Font-Size="Medium" Visible="False"></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Offer_Name") %>' Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                    
                    <tr >
                        <td align="left" >
                            <asp:Label ID="Label3" runat="server" Text="DISCOUNT :" Font-Size="Large"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Discount") %>' Font-Size="Large"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" >
                            <asp:Label ID="Label4" runat="server" Text="PRICE :" Font-Size="Large"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Price") %>' Font-Size="Large" Font-Strikeout="True"></asp:Label>
                        ₹</td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label5" runat="server" Text="DIS-PRICE :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Offer_Price") %>' Font-Size="Medium"></asp:Label>
                        ₹</td>
                    </tr>
                    
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label11" runat="server" Text="OFFER VALID:" Font-Size="Medium"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label12" runat="server"  Font-Size="Medium" Text='<%# Eval("Offer_valid") %>'></asp:Label>
                        </td>
                    </tr>
                    
                    
                    <tr>
                        <td class="auto-style7" align="left">
                            <asp:Label ID="Label6" runat="server" Text="FACILITY :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Offer_Facelity") %>' Font-Size="Medium"></asp:Label>
                        </td>
                     <tr align="center">
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" Font-Size="x-Large">BOOK THIS OFFERS</asp:LinkButton>
                          </td>
                       
                    </tr>
                </table>
            
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
