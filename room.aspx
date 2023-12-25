<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="room.aspx.cs" Inherits="Taj_Hotel.room" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Room Page</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 109px;
        }
        .auto-style6 {
            width: 109px;
            height: 23px;
        }
        .auto-style7 {
            width: 317px;
        }
        .auto-style11 {
            width: 4%;
        }
        .auto-style12 {
            width: 4%;
            height: 94px;
        }
        .auto-style13 {
            height: 94px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table border="0" style="width: 100%" bgcolor="#fff">
        <tr>
            <td align="center">
                <br />
                <br />
                <font style="font-family: 'Arial Rounded MT Bold'; color: #663300; font-style: normal;"
                    size="+10">ROOMS AND VILLAS
                    <br />
                    <hr style="width: 20%" />
                </font>
            </td>
        </tr>
    </table>
    
    <div>
        <asp:SqlDataSource ID="RoomSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Room]"></asp:SqlDataSource>
        <asp:DataList ID="RoomDataList" runat="server" DataSourceID="RoomSqlDataSource" RepeatColumns="4" OnItemCommand="LinkButton1">
            <ItemTemplate>
                <table class="auto-style4" border="0" style="margin: 10px; width: 300px" bgcolor="#fff">
                    <tr>
                        <td class="auto-style5" colspan="2">
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" ImageUrl='<%# Eval("Image") %>' /></td>
                        
                    </tr>                    
                    <tr align="center">
                        <td class="auto-style6" colspan="2" >
                            <asp:Label ID="ridtxt" runat="server" Text='<%# Eval("Room_ID") %>' Font-Size="Medium" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr align="center">
                        <td class="auto-style6" colspan="2" >
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Room_Name") %>' Font-Size="XX-Large"></asp:Label>
                        </td>
                    </tr>
                        
                    </tr>
                    
                        <tr>
                        <td class="auto-style11" align="left">
                            <asp:Label ID="Label11" runat="server" Text="PRICE :" Font-Size="large"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label12" runat="server"  Font-Size="Large" Text='<%# Eval("Price") %>'></asp:Label>
                            ₹</td>
                    </tr>
                    <tr>
                        <td class="auto-style11" align="left" >
                            <asp:Label ID="Label3" runat="server" Text="BEDS :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Beds") %>' Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" align="left" >
                            <asp:Label ID="Label4" runat="server" Text="VIEW :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Views") %>' Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style11" align="left">
                            <asp:Label ID="Label5" runat="server" Text="SIZE :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Size") %>' Font-Size="Medium"></asp:Label>
                        </td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td class="auto-style12" align="left">
                            <asp:Label ID="Label6" runat="server" Text="Discription :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td class="auto-style13">
                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("Description") %>' Font-Size="Medium"></asp:Label>
                        </td>
                     <tr align="center">
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" Font-Size="x-Large">BOOK THIS ROOM</asp:LinkButton>
                                                     
                        </td>
                       
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
