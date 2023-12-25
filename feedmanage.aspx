<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="feedmanage.aspx.cs" Inherits="Taj_Hotel.Admin.feedmanage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 31px;
        }
        .auto-style3 {
            width: 100px;
        }
        .auto-style8 {
            width: 50px;
        }
        .auto-style10 {
            width: 289px;
        }
        .auto-style11 {
            width: 662px;
        }
        .auto-style12 {
            width: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br />
     <table border="0" style="background-color: #6699FF; color: #FFFFFF;  " align="center" class="auto-style11">
                 <tr align="center">
                    <td class="auto-style12">
                         <asp:Label ID="Label3" runat="server" Text="Id" ></asp:Label>
                     </td>
                     
                     <td class="auto-style4">
                         <asp:Label ID="Label5" runat="server" Text="Username"> </asp:Label>
                     </td>
                 
                     <td class="auto-style10">
                         <asp:Label ID="Label7" runat="server" Text="Feedback"></asp:Label>
                     </td>
                      
                     <td class="auto-style8">
                                                    
                        </td>
             </table>
     <asp:DataList ID="DataList1" runat="server" DataSourceID="TableSqlDataSource" RepeatDirection="Horizontal" RepeatColumns="1"  align="center">
         <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
         <ItemTemplate>
             <table border="0" >
                 <tr align="center">
                    <td class="auto-style1">
                         <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>' ></asp:Label>
                     </td>
                     <td class="auto-style3">
                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("Username") %>'> </asp:Label>
                     </td>
                     <td class="auto-style10">
                         <asp:Label ID="Label7" runat="server" Text='<%# Eval("Feedback") %>'></asp:Label>
                     </td>
                     
                        <td class="auto-style8" >
                            <asp:LinkButton ID="Deletelink" runat="server" CommandArgument='<%# Eval("ID") %>'  ValidationGroup="Forward" OnCommand="Deletelink_Command" >Delete</asp:LinkButton>
                        </td>
             </table>
         </ItemTemplate>
     </asp:DataList>
    <asp:SqlDataSource ID="TableSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
   
</asp:Content>
