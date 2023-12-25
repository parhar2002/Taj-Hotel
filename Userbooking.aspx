<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="Userbooking.aspx.cs" Inherits="Taj_Hotel.Admin.Userbooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Booking]"></asp:SqlDataSource>
    <br />
    <div style="margin-left: 40px">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"  >
            <ItemTemplate>
                <tr style="height: 50px" align="center">
                    <td>
                        <asp:Label ID="Se_IDLabel" runat="server" Text='<%# Eval("ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="P_NameLabel" runat="server" Text='<%# Eval("S_Name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                    </td>
                     <td>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Username") %>' />
                    </td>
                    <td>
                        <asp:Label ID="TransactionsLabel" runat="server" Text='<%# Eval("Transactions") %>' />
                    </td>
                    <td class="auto-style8" >
                        <asp:LinkButton ID="Deletelink" runat="server" CommandArgument='<%# Eval("ID") %>' OnCommand="Deletelink_Command" >Delete</asp:LinkButton>
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="width: 800px; ">
                                <tr runat="server" style="background-color: #6699FF; color: #FFFFFF;  height: 50px" >
                                    <th runat="server">Product Id</th>
                                    <th runat="server">Product Name</th>
                                    <th runat="server">Product Price</th>
                                    <th runat="server">User Name</th>
                                    <th runat="server">Transactions</th>
                                    <th runat="server">Cancelled</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
        </asp:ListView>
    </div>
    
</asp:Content>
