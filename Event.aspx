<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Event.aspx.cs" Inherits="Taj_Hotel.Event" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <title>Event Page</title>
    <style type="text/css">
      
        .auto-style8 {
            height: 98px;
            width: 30%;
        }
        .auto-style9 {
            width: 20%;
        }
        .auto-style10 {
            height: 98px;
            width: 20%;
        }
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table border="0" style="width:100%" bgcolor="#fff"><tr>
 <td align="center"><br/><br/>
    <font style="font-family: 'Arial Rounded MT Bold'; color: #663300; font-style: normal; 
        " size="+10"  >
    VENUES
    <br />
    <hr style="width:20%" />
    </font>
    </td>

</tr>
</table>
    <asp:SqlDataSource ID="EventSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:Taj_Room_ConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
    <asp:DataList ID="EventDataList" runat="server" DataSourceID="EventSqlDataSource" RepeatColumns="4" OnItemCommand="LinkButton1">
        <ItemTemplate>
            
            <table border="0" style="margin: 10px; width: 300px" bgcolor="#fff">
                    <tr>
                        <td colspan="2">
                            <asp:Image ID="Image1" runat="server" Height="200px" Width="300px" ImageUrl='<%# Eval("Image") %>'  /></td>
                        
                    </tr>
                    <tr align="center">
                        <td  colspan="2" >
                             <asp:Label ID="eidtxt" runat="server" Text='<%# Eval("Event_ID") %>' Font-Size="Medium" Visible="False"></asp:Label>
                            <asp:Label ID="Label1" runat="server"  Font-Size="XX-Large" Text='<%# Eval("Event_Name") %>'></asp:Label>
                        </td>
                    </tr>
                 <tr>
                        <td  align="left" class="auto-style9">
                            <asp:Label ID="Label11" runat="server" Text="PRICE :" Font-Size="large"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label12" runat="server"  Font-Size="Large" Text='<%# Eval("Price") %>' ></asp:Label>
                        ₹</td>
                    </tr>
                   
               <tr>
                        <td align="left" class="auto-style9">
                            <asp:Label ID="Label2" runat="server" Text="CAPACITY :" Font-Size="Medium"></asp:Label>
                        </td>
                        <td align="center">
                            <asp:Label ID="Label3" runat="server"  Font-Size="Medium" Text='<%# Eval("Capacity") %>' ></asp:Label>
                        </td>
                    </tr>
                
                    </tr>
                     <td align="left" class="auto-style10">
                         <asp:Label ID="Label6" runat="server" Font-Size="Medium" Text="DISCRITION :"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text='<%# Eval("Discription") %>'></asp:Label>
                    </td>
                     <tr align="center">
                        <td class="auto-style5" colspan="2">
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="#663300" Font-Size="x-Large">BOOK THIS EVENT</asp:LinkButton>
                          </td></tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
