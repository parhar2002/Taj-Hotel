<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminHome.Master" AutoEventWireup="true" CodeBehind="Ahome.aspx.cs" Inherits="Taj_Hotel.Admin.Ahome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
  
    <div align="center" style="margin-top: 50px">
           <table background-color: #FFFFFF;" align="center" border="0">
                   
               <tr style="background-color: #6699FF; color: #FFFFFF;" >
                   <td style="width:20px;">
                       <asp:Label ID="Label7" runat="server" Text="ID"></asp:Label>
                   </td>
                   <td style="width:100px;">
                       <asp:Label ID="Label8" runat="server" Text="NAME"></asp:Label>
                   </td>
                   <td style="width:100px;">
                       <asp:Label ID="Label9" runat="server" Text="USERNAME"></asp:Label>
                   </td>
                   <td style="width:100px;">
                       <asp:Label ID="Label10" runat="server" Text="PASSWORD"></asp:Label>
                   </td>
                   <td style="width:150px;">
                       <asp:Label ID="Label11" runat="server" Text="EMAIL ID "></asp:Label>
                   </td>
                   <td style="width:100px;">
                       <asp:Label ID="Label12" runat="server" Text="MOBAIL"></asp:Label>
                   </td>
                   <td style="width:100px;">
                       <asp:Label ID="Label15" runat="server" Text="REMOVE"></asp:Label>
                   </td>

               </tr>
               <tr>
    <asp:SqlDataSource ID="UserSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
                       <asp:DataList ID="UserDataList" runat="server" DataSourceID="UserSqlDataSource">
                           <ItemTemplate>
                               <table class="auto-style1" border="0">
                                    <tr>
                                       <td style="width:20px;">
                                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                       </td>
                                       <td style="width:100px;">
                                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                                       </td>
                                       <td style="width:100px;">
                                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("Username") %>'></asp:Label>
                                       </td>
                                       <td style="width:100px;">
                                           <asp:Label ID="Label4" runat="server" Text='<%# Eval("Password") %>'></asp:Label>
                                       </td>
                                       <td style="width:150px;">
                                           <asp:Label ID="Label5" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                                       </td>
                                       <td style="width:100px;">
                                           <asp:Label ID="Label6" runat="server" Text='<%# Eval("Mobail") %>'></asp:Label>
                                       </td>
                                        <td style="width:100px;">
                                            <asp:LinkButton ID="Deletelink" runat="server" CommandArgument='<%# Eval("ID") %>'  ValidationGroup="Forward" OnCommand="Deletelink_Command"  >Delete</asp:LinkButton>
                        
                                            </td>
                                   </tr>
                               </table>
                              </ItemTemplate>
                       </asp:DataList>
                   </table>
                    
                   
    
    </div>
</asp:Content>
