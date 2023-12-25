<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="Taj_Hotel.breakfast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dinning Page</title>
    <style type="text/css">
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 193px;
        }
        .auto-style7 {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table border="0" style="width:100%" bgcolor="#fff"><tr>
 <td align="center"><br/><br/>
     <font style="font-family: 'Arial Rounded MT Bold'; color: #663300; font-style: normal; 
        " size="+10"  >
     BANQUET BOOKING
    <br />
    <hr style="width:30%" />
    </font>
    </td></tr>
    
</table>
    <asp:SqlDataSource ID="TableSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Daninng]"></asp:SqlDataSource>
    
     <asp:DataList ID="DataList1" runat="server" DataSourceID="TableSqlDataSource" RepeatColumns="4" OnItemCommand="LinkButton1">
         <ItemTemplate>
             <table class="auto-style4" border="0" style="margin: 10px; width: 300px" bgcolor="#fff">
                 <tr>
                     <td colspan="2">
                         <asp:Image ID="Image8" Height="200px" Width="300px" runat="server" ImageUrl='<%# Eval("Image") %>' />
                     </td>
                 </tr>
                 <tr align="center">
                     <td colspan="2">
                          <asp:Label ID="tidtxt" runat="server" Text='<%# Eval("table_ID") %>' Font-Size="Medium" Visible="False"></asp:Label>
                          <asp:Label ID="Label4" runat="server" Text='<%# Eval("table_Name") %>' Font-Size="XX-Large"></asp:Label>
                     </td>
                 </tr>
                 <tr align="center">
                     <td class="auto-style7">
                         <asp:Label ID="Label2" runat="server" Text="Price" Font-Size="Larger"></asp:Label>
                         :</td>
                     <td>
                         <asp:Label ID="Label5" runat="server" Text='<%# Eval("Price") %>' Font-Size="Larger"></asp:Label>
                     ₹</td>
                 </tr>
                 <tr >
                     <td class="auto-style7" align="center">
                         <asp:Label ID="Label3" runat="server" Text="Descrption" Font-Size="Medium"></asp:Label>
                         :</td>
                     <td>
                         <asp:Label ID="Label6" runat="server" Text='<%# Eval("Discription") %>' Font-Size="Medium"></asp:Label>
                     </td>
                 </tr>
                 <tr align="center">
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" Font-Size="x-Large">BOOK THE TABLE</asp:LinkButton>
                          </td></tr>
             </table>
         </ItemTemplate>
     </asp:DataList>
    
</asp:Content>
